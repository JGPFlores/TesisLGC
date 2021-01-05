#!/bin/bash

# Compilar el documento
pdflatex -interaction=nonstopmode Tesis

# Compilar las referencias
biber Tesis

# Compilar el documento
pdflatex Tesis

# Compilar índice alfabético
makeindex -s StyleInd.ist Tesis.idx

# Compilar el documento
pdflatex Tesis
