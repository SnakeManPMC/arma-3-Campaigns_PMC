@echo off
if exist c:\armap\arma3\x\cmp_noaddons\campaigns\pmc_test_campaign_endmission.pbo del c:\armap\arma3\x\cmp_noaddons\campaigns\pmc_test_campaign_endmission.pbo
d:\tools\mikero\makepbo -N pmc_test_campaign_endmission c:\armap\arma3\x\cmp_noaddons\campaigns\pmc_test_campaign_endmission.pbo
if exist C:\armap\arma3\Users\SnakeMan\Saved\Campaigns\pmc_test_campaign_endmission\ rd /s /q C:\armap\arma3\Users\SnakeMan\Saved\Campaigns\pmc_test_campaign_endmission\
pause
