::Mike Tyrrell-Ead
::IHS Markit
::Testing CSV pulling with Variables
pause
for /f "delims=" %%G in ./Computers.csv DO echo %%G
::for /f skip=1 %%C in ./Computers.csv DO echo %%C
pause