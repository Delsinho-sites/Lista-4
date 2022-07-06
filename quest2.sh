#!/bin/bash
akw '{nome[$1]+=$3} END {for (q in nome) print q, nome[q]}' < baixados.txt
