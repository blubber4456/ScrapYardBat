@echo off
set /a x=0
:while
if %x% lss 12 (
  echo %x%
:: pause>nul
  set /a x+=1
  goto :while
)
echo Test :D
pause