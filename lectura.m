clc 
clear
%importar lamemoria compartida
loadlibrary('smClient64.dll','./smClient.h')
%,crear desde el panel,  
%abrir
calllib('smClient64','openMemory','MemoEnteros',1)
%escribir en la memoria
x=1;
y=2;
while true
calllib('smClient64','setInt','MemoEnteros',0,x)
calllib('smClient64','setInt','MemoEnteros',1,y)
x=x+1;

end
%leemos,
retInt = calllib('smClient64','getInt','MemoEnteros',1)
% liberar MC
calllib('smClient64','freeViews')
unloadlibrary smClient64