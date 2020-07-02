clc 
clear
%importar lamemoria compartida
loadlibrary('smClient64.dll','./smClient.h')
%,crear desde el panel,  
%abrir
calllib('smClient64','openMemory','MemoEnteros',1)
%escribir en la memoria
calllib('smClient64','setInt','MemoEnteros',0,30)
calllib('smClient64','setInt','MemoEnteros',1,5)
%leemos,
retInt = calllib('smClient64','getInt','MemoEnteros',1)
% liberar MC
calllib('smClient64','freeViews')
unloadlibrary smClient64