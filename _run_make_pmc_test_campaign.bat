@echo off
if exist c:\armap\arma3\x\cmp_noaddons\campaigns\pmc_test_campaign.pbo del c:\armap\arma3\x\cmp_noaddons\campaigns\pmc_test_campaign.pbo
d:\tools\mikero\makepbo -N pmc_test_campaign c:\armap\arma3\x\cmp_noaddons\campaigns\pmc_test_campaign.pbo
if exist C:\armap\arma3\Users\SnakeMan\Saved\Campaigns\pmc_test_campaign\ rd /s /q C:\armap\arma3\Users\SnakeMan\Saved\Campaigns\pmc_test_campaign\
pause
