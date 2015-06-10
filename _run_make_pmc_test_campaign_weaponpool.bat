@echo off
if exist c:\armap\arma3\x\cmp_noaddons\campaigns\pmc_test_campaign_weaponpool.pbo del c:\armap\arma3\x\cmp_noaddons\campaigns\pmc_test_campaign_weaponpool.pbo
d:\tools\mikero\makepbo -N pmc_test_campaign_weaponpool c:\armap\arma3\x\cmp_noaddons\campaigns\pmc_test_campaign_weaponpool.pbo
if exist C:\armap\arma3\Users\SnakeMan\Saved\Campaigns\pmc_test_campaign_weaponpool\ rd /s /q C:\armap\arma3\Users\SnakeMan\Saved\Campaigns\pmc_test_campaign_weaponpool\
pause
