clc 
clear
%importar lamemoria compartida
loadlibrary('smClient64.dll','./smClient.h')
%,crear desde el panel,  
%abrir memoria par movimiento 
calllib('smClient64','openMemory','Movimiento',2)%2 tipo flotante
%abrimos la memoria para recuperar posiciones
calllib('smClient64','openMemory','Posiciones',2)

movimiento_x=0;
while true
 %escribir en la memoriay leer el movimiento
calllib('smClient64','setFloat','Movimiento',0,movimiento_x)
%leemos 
movimiento_x=movimiento_x+1;
%calllib('smClient64','setInt','MemoEnteros',1,y)
x= calllib('smClient64','getFloat','Posiciones',0)
y= calllib('smClient64','getFloat','Posiciones',1)
z= calllib('smClient64','getFloat','Posiciones',2)
end
% %leemos  las posiciones del cubo

% liberar MC
calllib('smClient64','freeViews')
unloadlibrary smClient64