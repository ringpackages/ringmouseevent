cls
call ../../language/src/locatevc.bat
cl /c /DEBUG ringmouseevent.c -I"..\..\language\include"
link /DEBUG ringmouseevent.obj  ..\..\lib\ring.lib kernel32.lib user32.lib /DLL /OUT:ringmouseevent.dll /SUBSYSTEM:CONSOLE,"5.01" 
del ringmouseevent.obj