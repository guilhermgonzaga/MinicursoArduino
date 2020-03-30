EXTRACT_DIR:=slides
SLIDES     :=0 1 2 3
TEMP_FILES :=*.aux *.log *.nav *.pdf *.snm *.synctex.gz *.toc
TEX        :=pdflatex # Se não executar no WSL, adicione a extensão .exe
TEX_FLAGS  :=-synctex=1 -interaction=nonstopmode

ifeq ($(OS),Windows_NT)
	TEX_FLAGS+=-enable-write18 -quiet # Compatível com MiKTeX
else
	TEX_FLAGS+=-shell-escape          # Compatível com TeX Live
endif


all: .PHONY       ## Gera todas as aulas.

.PHONY: $(SLIDES)


$(SLIDES):        ## Gera cada aula individualmente com 0, 1, 2 etc.
	@cd $@ && $(TEX) $(TEX_FLAGS) $@.tex


clean:            ## Apaga arquivos temporários das aulas.
	@for slide in $(SLIDES); do                        \
		rm -fv -- $(TEMP_FILES:*%=$${slide}/$${slide}%); \
	done


distclean: clean  ## Apaga arquivos temporários das aulas e os slides extraídos.
	@rm -rfv -- $(EXTRACT_DIR)


extract:          ## Copia todos os slides gerados para uma pasta 'slides'.
	@mkdir -pv $(EXTRACT_DIR)
	@for slide in $(SLIDES); do                                          \
		if [ -f "$${slide}/$${slide}.pdf" ]; then                          \
			cp -uv "$${slide}/$${slide}.pdf" "$(EXTRACT_DIR)/$${slide}.pdf"; \
		fi;                                                                \
	done


help:             ## Mostra esta mensagem.
	@printf "Uso: make <comandos>\nOs seguintes comandos são possíveis:\n\n"
	@fgrep -h "##" $(MAKEFILE_LIST)     \
	| sed -e 's/\(\:.*\#\#\)/\:    \t/' \
	| fgrep -v fgrep                    \
	| sed -e 's/\\$$//'
