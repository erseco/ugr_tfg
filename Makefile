###############################################################################
#
# TFG - Trabajo de Fin de Grado
# Grado en Ingeniería Informática
#
# 2017 - Ernesto Serrano <erseco@correo.ugr.es>
# ---------------------------------------------
#
# Fichero Makefile para generacion de ejecutables, paquetes y documentacion
#
###############################################################################

# TODO (sin empaquetado)
all: doc #clean


#Generación de PDF compilando el archivo LaTeX con pdflatex
doc:
	cd text; \
	pdflatex -shell-escape -synctex=1 -interaction=nonstopmode -output-directory=../ project.tex; \
	pdflatex -shell-escape -synctex=1 -interaction=nonstopmode -output-directory=../ project.tex; \
	cd ..; \
	mv project.pdf Serrano_Collado_Ernesto.pdf

# LIMPEZA
# Limpia los archivos compilados, así como los archivos objeto y los paquetes zip
.PHONY: clean
clean:
	@echo "Limpiando..."
	@rm -f {*.aux,*.lof,*.log,*.lol,*.lot,*.out,*.synctex.gz,*toc}
