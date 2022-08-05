@echo OFF

GOTO EndComment
Hello!!!! Here are some notes:
I MILDLY DISLIKE BATCH, IT'S THE SILLIEST THING EVER!!! TO GRAB A THING'S PARENT, THE VARIABLE IS CALLED "%~dp0" WHYYYY
silly zoox
:EndComment

::Yoink the shortcut destination into a new file
type C:\Users\%username%\AppData\Roaming\Microsoft\Windows\"Start Menu"\Programs\Roblox\"Roblox Player".lnk | find "\" | find "." > shortcutTarget.txt
::Read destination from that file
set /p destination=< %~dp0\shortcutTarget.txt
::format it correctly
set destination=C:\Users\%destination:~0,-24%content\sounds\

echo %destination%

:: echo Replacing old sound with new, please wait...
:: makes me feel fancy
:: no need for waiting :imp:

Copy /Y %~dp0\ouch.ogg %destination%
:: REPLACES THE OLD SOUND WITH THE NEW SOUND, WOO!!!