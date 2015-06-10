@echo off
if exist C:\armap\arma3\x\cmp_addons\campaigns\pmc_guerrilla_bastard.pbo del C:\armap\arma3\x\cmp_addons\campaigns\pmc_guerrilla_bastard.pbo
d:\tools\mikero\makepbo -N pmc_guerrilla_bastard C:\armap\arma3\x\cmp_addons\campaigns\pmc_guerrilla_bastard.pbo
if exist C:\armap\arma3\Users\SnakeMan\Saved\Campaigns\pmc_guerrilla_bastard\ rd /s /q C:\armap\arma3\Users\SnakeMan\Saved\Campaigns\pmc_guerrilla_bastard\
pause
