AULAS:=0 1 2 3
BUILD:=../Slides


all: .PHONY

.PHONY: $(AULAS)

$(AULAS):
	@cd $@ && pdflatex.exe -synctex=1 -shell-escape -enable-write18 -interaction=nonstopmode $@.tex

clean: # TODO

extract: # TODO adapt Powershell code below
	# powershell -NonInteractive "Get-ChildItem . -Recurse -Filter '*.pdf' | Copy-Item -PassThru -Destination '$project_path\Slides\' | Select-Object -Property Name,LastWriteTime"
