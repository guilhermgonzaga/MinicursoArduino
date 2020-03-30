AULAS:=0 1 2 3
BUILD:=slides


all: .PHONY

.PHONY: $(AULAS)

$(AULAS):
	@cd $@ && \
	pdflatex.exe -synctex=1 -shell-escape -enable-write18 -interaction=nonstopmode $@.tex

clean: # TODO

extract:
	@mkdir --parents --verbose $(BUILD)
	@for aula in $(AULAS); do                                     \
		if [ -f "$${aula}/$${aula}.pdf" ]; then                     \
			cp -u -v "$${aula}/$${aula}.pdf" "$(BUILD)/$${aula}.pdf"; \
		fi;                                                         \
	done
