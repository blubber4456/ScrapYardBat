@echo off
echo x=msgbox("Your Text Here" ,0, "Your Title Here") >> msgbox.vbs

start msgbox.vbs
timeout 1 >nul
del msgbox.vbs

msg "%username%" Some message to display
