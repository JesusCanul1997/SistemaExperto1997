:- use_module(library(pce)).
:-use_module(library(pce_style_item)).
:-pce_image_directory('./images').
resource(login,image,image('inicio.bmp')).
resource('1.JPG',image,image('1.bmp')).
resource('2.JPG',image,image('2.bmp')).
resource('3.JPG',image,image('3.bmp')).
resource('4.JPG',image,image('4.bmp')).
resource('5.JPG',image,image('5.bmp')).
resource('6.JPG',image,image('6.bmp')).
resource('7.JPG',image,image('7.bmp')).
resource('8.JPG',image,image('8.bmp')).
resource('9.JPG',image,image('9.bmp')).
resource('10.JPG',image,image('10.bmp')).
resource('11.JPG',image,image('11.bmp')).
resource('12.JPG',image,image('12.bmp')).
resource('13.JPG',image,image('13.bmp')).
resource('14.JPG',image,image('14.bmp')).
resource('15.JPG',image,image('15.bmp')).
resource('16.JPG',image,image('16.bmp')).
resource('17.JPG',image,image('17.bmp')).
resource('18.JPG',image,image('18.bmp')).
resource('19.JPG',image,image('19.bmp')).
resource('20.JPG',image,image('20.bmp')).
resource('21.JPG',image,image('21.bmp')).
resource('22.JPG',image,image('22.bmp')).
resource('23.JPG',image,image('23.bmp')).
resource('24.JPG',image,image('24.bmp')).
resource('25.JPG',image,image('25.bmp')).
resource('26.JPG',image,image('26.bmp')).
resource('27.JPG',image,image('27.bmp')).
resource('28.JPG',image,image('28.bmp')).
resource('29.JPG',image,image('29.bmp')).
resource('30.JPG',image,image('30.bmp')).
resource('31.JPG',image,image('31.bmp')).
resource('32.JPG',image,image('32.bmp')).
resource('33.JPG',image,image('33.bmp')).
resource('34.JPG',image,image('34.bmp')).
resource('35.JPG',image,image('35.bmp')).
resource('36.JPG',image,image('36.bmp')).
resource('prueba',image,image('prueba.bmp')).





:- new(VentanaE,dialog('Robot 1997')),
     %creacion de objetos
     new(Etiqueta,label(nombre,'SISTEMA EXPERTO')),
     new(Salir, button('SALIR',message(VentanaE,destroy))),
     new(Usuario, button('Solicitar Sugerencia',message(@prolog,usuario))),
     new(Experto, button('Agregar Conocimiento',message(@prolog,experto))),
     new(Figure, figure),
     new(Bitmap, bitmap(resource(login), @on)),
     %llamado de los objetos
     send(Etiqueta,font,font(arial,bold,20)),
     send(VentanaE,display,Etiqueta,point(190,0)),
     send(Bitmap, name, 1),
     send(Figure, display, Bitmap),
     send(Figure, status, 1),
     send(VentanaE, display,Figure, point(25,40)),
     send(VentanaE,display,Usuario,point(30,430)),
     send(VentanaE,display,Experto,point(220,430)),
     send(VentanaE,display,Salir,point(400,430)),
     send(VentanaE,open).

experto:-
       new(VentanaE,dialog('Experto de Robot 1997')),
     %creacion de objetos
     new(Etiqueta,label(nombre,'Sistema Experto Robot1997')),
     new(Salir, button('Regresar',message(VentanaE,destroy))),
    %creacion de objetos
    new(Accion,
        menu('1.-¿Que acciones quieres que realice el robot?')),
    send_list(Accion, append,['cortar','manipular','medir']),
    new(Presupuesto,
        menu('2.-¿Con que presupuesto cuenta aproximadamente?')),
    send_list(Presupuesto, append,['2000dl','5000dl','10000dl']),
    new(Tipo,
        menu('3.-¿En que tipo de industria produce su servicio?')),
    send_list(Tipo,append,['farmaceutica','automovilistica','metalurgica']),
    new(Espacio,
        menu('4.-¿Cuanto espacio necesita para producir su servicio?')),
    send_list(Espacio,append,['5m','10m']),
    new(Tiempo,
        menu('5.-¿Cuanto tiempo necesita para producir su servicio?')),
    send_list(Tiempo,append,['1 dia','mas 1 dia']),
    new(Nombre,text_item('Justifique la respuesta')),

    new(Justificacion,text_item('Justifique la respuesta')),
    new(Imagen,text_item('Ingrese la ruta de la Imagen')),
    new(Button2, button(guardar, message(@prolog,guardarrobot,

           Accion?selection,%se ennvia lo alamacenado en ese objeto Genero
           Presupuesto?selection,
           Tipo?selection,
           Espacio?selection,
           Tiempo?selection,
           Nombre?selection,
           Justificacion?selection,
           Imagen?selection))),

     send(Etiqueta,font,font(arial,bold,20)),
     send(VentanaE,append,Etiqueta),
     send(VentanaE,append,Accion),
     send(VentanaE,append,Presupuesto),
     send(VentanaE,append,Tipo),
     send(VentanaE,append,Espacio),
     send(VentanaE,append,Tiempo),
     send(VentanaE,append,Nombre),
     send(VentanaE,append,Justificacion),
     send(VentanaE,append,Imagen),
     send(VentanaE,append,Button2),

     send(VentanaE,append,Salir),
     send(VentanaE,open).

usuario:-
    new(VentanaU,dialog('Usuario de Robot1997')),
    %Creacion De objetos
    new(Etiqueta,label(nombre,'Sugerencia al usuario de Robot1997')),
    new(Salir, button('Regresar',message(VentanaU,destroy))),
    new(Accion,
        menu('1.-¿Que acciones quieres que realice el robot?')),
    send_list(Accion, append,['cortar','manipular','medir']),
    new(Presupuesto,
        menu('2.-¿Con que presupuesto cuenta aproximadamente?')),
    send_list(Presupuesto, append,['2000dl','5000dl','10000dl']),
    new(Tipo,
        menu('3.-¿En que tipo de industria produce su servicio?')),
    send_list(Tipo,append,['farmaceutica','automovilistica','metalurgica']),
    new(Espacio,
        menu('4.-¿Cuanto espacio necesita para producir su servicio?')),
    send_list(Espacio,append,['5m','10m']),
    new(Tiempo,
        menu('5.-¿Cuanto tiempo necesita para producir su servicio?')),
    send_list(Tiempo,append,['1 dia','mas 1 dia']),
    new(Nombre,text_item('Robot')),
    new(Jus,text_item('Justificacion')),
    new(Imagen,text_item('Imagen')),


    new(SugerenciaBtn, button('Solicitar Sugerencia',message(@prolog,robot,
                                                             Accion?selection,
                                                             Presupuesto?selection,
                                                             Tipo?selection,
                                                             Espacio?selection,
                                                             Tiempo?selection,
                                                             Nombre,
                                                             Imagen))),

   new(JustBtn, button('Solicitar Sugerencia',message(@prolog,jrobot,
                                                             Nombre?selection,
                                                             Jus))),

    send(Etiqueta,font,font(arial,bold,20)),
    send(Nombre,editable,false),
    send(Imagen,editable,false),
    send(Jus,editable,false),
    send(VentanaU,append,Etiqueta),
    send(VentanaU,append,Accion),
    send(VentanaU,append,Presupuesto),
    send(VentanaU,append,Tipo),
    send(VentanaU,append,Espacio),
    send(VentanaU,append,Tiempo),
    send(VentanaU,append,SugerenciaBtn),
    send(VentanaU,append,Nombre),
    send(VentanaU,append,Imagen),
    send(VentanaU,append,JustBtn),
    send(VentanaU,append,Jus),

    send(VentanaU,append,Salir),
    send(VentanaU,open).

guardarrobot(A,P,TI,E,T,N,J,I):-
       asserta(utilidad(N,A,T,TI)),
       asserta(tipo(N,TI,P)),
       asserta(espacio(N,E,I)),
       asserta(justificacion(N,J)),
       guardar.
guardar:-
       told.

%------------------------------------------------------------------
%
%                    REGLA
%------------------------------------------------------------------


robot(Accion,Presupuesto,TipoI,Espacio,Tiempo,Nombre,Imagen):-
                                      utilidad(N,Accion,Tiempo,TipoI),
                                      tipo(N,TipoI,Presupuesto),
                                      espacio(N,Espacio,I),
                                      new(VentanaU,dialog('Sugerencia de Robot1997')),
                                      new(Lie2,label(mentira,N,font('times','roman',17))),

                                      new(Figure, figure),
                                      new(Bitmap, bitmap(resource(I),@on)),
                                      send(Nombre,selection,N),
                                      send(Imagen,selection,I),
                                      send(VentanaU,append,Lie2),
                                      send(Bitmap, name, 1),
                                      send(Figure, display, Bitmap),
                                      send(Figure, status, 1),
                                      send(VentanaU, display,Figure, point(20,50)),

                                      send(VentanaU,open)

                                      .


jrobot(Nombre,Sug):-
                   justificacion(Nombre,Sugerencia),
                   send(Sug,selection,Sugerencia).


%------------------------------------------------------------------
%
%                    Base de Conocimiento
%
%------------------------------------------------------------------

:-dynamic tipo/3.
tipo('115W CNC','farmaceutica','5000dl').
tipo('SR1325 CNC','farmaceutica','5000dl').
tipo('Dewalt DWP611','farmaceutica','10000dl').
tipo('yoocnc 9060','farmaceutica','10000dl').
tipo('Fresadora SMB-3117','farmaceutica','10000dl').
tipo('NCN Router 15303','farmaceutica','10000dl').
tipo('4xArmBot','farmaceutica','2000dl').
tipo('Diy 4dof','farmaceutica','2000dl').
tipo('Automatic Robotic Arm','farmaceutica','10000dl').
tipo('UR-1010','farmaceutica','10000dl').
tipo('ARCMate 100IC','farmaceutica','10000dl').
tipo('Faro Factory','farmaceutica','10000dl').
tipo('LMSSA Wachendorff','farmaceutica','5000dl').
tipo('Moto man MS-ES','farmaceutica','5000dl').
tipo('UR-10','farmaceutica','5000dl').
tipo('M-10IA','farmaceutica','10000dl').
tipo('Comau Arm-2','farmaceutica','10000dl').
tipo('TWS-1200','farmaceutica','10000dl').
tipo('Faro Colbat','farmaceutica','2000dl').
tipo('ISRA VISION','farmaceutica','2000dl').
tipo('Zeiss Albox','farmaceutica','2000dl').
tipo('Estun Robitc ERSeries','farmaceutica','2000dl').
tipo('LEONI medidor','farmaceutica','5000dl').
tipo('XIAO R4','farmaceutica','2000dl').
tipo('Robot arm','farmaceutica','2000dl').
tipo('Fanuc','farmaceutica','5000dl').
tipo('Alfa-Robot Phoenix','farmaceutica','5000dl').
tipo('Motoman MPX3500','farmaceutica','5000dl').
tipo('Sanea','farmaceutica','5000dl').
tipo('UP6 XCR','farmaceutica','10000dl').
tipo('IRB 6600','farmaceutica','2000dl').
tipo('Goliat Robot NC','farmaceutica','2000dl').
tipo('Cizalla Adira de 3050 x 10','farmaceutica','2000dl').
tipo('Robot industrial FANUC R2000iB','farmaceutica','5000dl').
tipo('Robot industrial FANUC R2000iB','farmaceutica','2000dl').
tipo('Cnc Router','farmaceutica','5000dl').
tipo('115W CNC','automovilistica','5000dl').
tipo('SR1325 CNC','automovilistica','5000dl').
tipo('Dewalt DWP611','automovilistica','10000dl').
tipo('yoocnc 9060','automovilistica','10000dl').
tipo('Fresadora SMB-3117','automovilistica','10000dl').
tipo('NCN Router 15303','automovilistica','10000dl').
tipo('4xArmBot','automovilistica','2000dl').
tipo('Diy 4dof','automovilistica','2000dl').
tipo('Automatic Robotic Arm','automovilistica','10000dl').
tipo('UR-1010','automovilistica','10000dl').
tipo('ARCMate 100IC','automovilistica','10000dl').
tipo('Faro Factory','automovilistica','10000dl').
tipo('LMSSA Wachendorff','automovilistica','5000dl').
tipo('Moto man MS-ES','automovilistica','5000dl').
tipo('UR-10','automovilistica','5000dl').
tipo('M-10IA','automovilistica','10000dl').
tipo('Comau Arm-2','automovilistica','10000dl').
tipo('TWS-1200','automovilistica','10000dl').
tipo('Faro Colbat','automovilistica','2000dl').
tipo('ISRA VISION','automovilistica','2000dl').
tipo('Zeiss Albox','automovilistica','2000dl').
tipo('Estun Robitc ERSeries','automovilistica','2000dl').
tipo('LEONI medidor','automovilistica','5000dl').
tipo('XIAO R4','automovilistica','2000dl').
tipo('Robot arm','automovilistica','2000dl').
tipo('Fanuc','automovilistica','5000dl').
tipo('Alfa-Robot Phoenix','automovilistica','5000dl').
tipo('Motoman MPX3500','automovilistica','5000dl').
tipo('Sanea','automovilistica','5000dl').
tipo('UP6 XCR','automovilistica','10000dl').
tipo('IRB 6600','automovilistica','2000dl').
tipo('Goliat Robot NC','automovilistica','2000dl').
tipo('Cizalla Adira de 3050 x 10','automovilistica','2000dl').
tipo('Robot industrial FANUC R2000iB','automovilistica','5000dl').
tipo('Robot industrial FANUC R2000iB','automovilistica','2000dl').
tipo('Cnc Router','automovilistica','5000dl').
tipo('115W CNC','metalurgica','5000dl').
tipo('SR1325 CNC','metalurgica','5000dl').
tipo('Dewalt DWP611','metalurgica','10000dl').
tipo('yoocnc 9060','metalurgica','10000dl').
tipo('Fresadora SMB-3117','metalurgica','10000dl').
tipo('NCN Router 15303','metalurgica','10000dl').
tipo('4xArmBot','metalurgica','2000dl').
tipo('Diy 4dof','metalurgica','2000dl').
tipo('Automatic Robotic Arm','metalurgica','10000dl').
tipo('UR-1010','metalurgica','10000dl').
tipo('ARCMate 100IC','metalurgica','10000dl').
tipo('Faro Factory','metalurgica','10000dl').
tipo('LMSSA Wachendorff','metalurgica','5000dl').
tipo('Moto man MS-ES','metalurgica','5000dl').
tipo('UR-10','metalurgica','5000dl').
tipo('M-10IA','metalurgica','10000dl').
tipo('Comau Arm-2','metalurgica','10000dl').
tipo('TWS-1200','metalurgica','10000dl').
tipo('Faro Colbat','metalurgica','2000dl').
tipo('ISRA VISION','metalurgica','2000dl').
tipo('Zeiss Albox','metalurgica','2000dl').
tipo('Estun Robitc ERSeries','metalurgica','2000dl').
tipo('LEONI medidor','metalurgica','5000dl').
tipo('XIAO R4','metalurgica','2000dl').
tipo('Robot arm','metalurgica','2000dl').
tipo('Fanuc','metalurgica','5000dl').
tipo('Alfa-Robot Phoenix','metalurgica','5000dl').
tipo('Motoman MPX3500','metalurgica','5000dl').
tipo('Sanea','metalurgica','5000dl').
tipo('UP6 XCR','metalurgica','10000dl').
tipo('IRB 6600','metalurgica','2000dl').
tipo('Goliat Robot NC','metalurgica','2000dl').
tipo('Cizalla Adira de 3050 x 10','metalurgica','2000dl').
tipo('Robot industrial FANUC R2000iB','metalurgica','5000dl').
tipo('Robot industrial FANUC R2000iB','metalurgica','2000dl').
tipo('Cnc Router','metalurgica','5000dl').


:-dynamic espacio/3.
espacio('115W CNC','10m','7.JPG').
espacio('SR1325 CNC','10m','8.JPG').
espacio('Dewalt DWP611','5m','9.JPG').
espacio('yoocnc 9060','5m','10.JPG').
espacio('Fresadora SMB-3117','10m','11.JPG').
espacio('NCN Router 15303','10m','12.JPG').
espacio('4xArmBot','5m','13.JPG').
espacio('Diy 4dof','5m','14.JPG').
espacio('Automatic Robotic Arm','5m','33.JPG').
espacio('UR-1010','5m','34.JPG').
espacio('ARCMate 100IC','10m','35.JPG').
espacio('Faro Factory','10m','36.JPG').
espacio('LMSSA Wachendorff','5m','30.JPG').
espacio('Moto man MS-ES','10m','31.JPG').
espacio('UR-10','10m','32.JPG').
espacio('M-10IA','5m','22.JPG').
espacio('Comau Arm-2','10m','23.JPG').
espacio('TWS-1200','10m','24.JPG').
espacio('Faro Colbat','5m','25.JPG').
espacio('ISRA VISION','5m','26.JPG').
espacio('Zeiss Albox','10m','27.JPG').
espacio('Estun Robitc ERSeries','10m','28.JPG').
espacio('LEONI medidor','5m','29.JPG').
espacio('XIAO R4','10m','15.JPG').
espacio('Robot arm','10m','16.JPG').
espacio('Fanuc','5m','17.JPG').
espacio('Alfa-Robot Phoenix','5m','18.JPG').
espacio('Motoman MPX3500','10m','19.JPG').
espacio('Sanea','10m','20.JPG').
espacio('UP6 XCR','5m','21.JPG').
espacio('IRB 6600','5m','1.JPG').
espacio('Goliat Robot NC','5m','2.JPG').
espacio('Cizalla Adira de 3050 x 10','10m','3.JPG').
espacio('Robot industrial FANUC R2000iB','10m','4.JPG').
espacio('Robot industrial FANUC R2000iB','5m','5.JPG').
espacio('Cnc Router','5m','6.JPG').

:-dynamic utilidad/4.
utilidad('ARCMate 100IC','medir','1 dia','farmaceutica').
utilidad('Faro Factory','medir','mas 1 dia','farmaceutica').
utilidad('Automatic Robotic Arm','medir','1 dia','farmaceutica').
utilidad('UR-1010','medir','mas 1 dia','farmaceutica').
utilidad('LMSSA Wachendorff','medir','mas 1 dia','farmaceutica').
utilidad('Moto man MS-ES','medir','1 dia','farmaceutica').
utilidad('UR-10','medir','mas 1 dia','farmaceutica').
utilidad('M-10IA','manipular','mas 1 dia','farmaceutica').
utilidad('Comau Arm-2','manipular','1 dia','farmaceutica').
utilidad('TWS-1200','manipular','mas 1 dia','farmaceutica').
utilidad('Faro Colbat','medir','1 dia','farmaceutica').
utilidad('ISRA VISION','medir','mas 1 dia','farmaceutica').
utilidad('Zeiss Albox','medir','1 dia','farmaceutica').
utilidad('Estun Robitc ERSeries','medir','mas 1 dia','farmaceutica').
utilidad('LEONI medidor','medir','1 dia','farmaceutica').
utilidad('XIAO R4','manipular','1 dia','farmaceutica').
utilidad('Robot arm','manipular','mas 1 dia','farmaceutica').
utilidad('Fanuc','manipular','1 dia','farmaceutica').
utilidad('Alfa-Robot Phoenix','manipular','mas 1 dia','farmaceutica').
utilidad('Motoman MPX3500','manipular','1 dia','farmaceutica').
utilidad('Sanea','manipular','mas 1 dia','farmaceutica').
utilidad('UP6 XCR','manipular','1 dia','farmaceutica').
utilidad('IRB 6600','cortar','1 dia','farmaceutica').
utilidad('Goliat Robot NC','cortar','mas 1 dia','farmaceutica').
utilidad('Cizalla Adira de 3050 x 10','cortar','1 dia','farmaceutica').
utilidad('Robot industrial FANUC R2000iB','cortar','1 dia','farmaceutica').
utilidad('Robot industrial FANUC R2000iB','cortar','mas 1 dia','farmaceutica').
utilidad('Cnc Router','cortar','mas 1 dia','farmaceutica').
utilidad('115W CNC','cortar','1 dia','farmaceutica').
utilidad('SR1325 CNC','cortar','mas 1 dia','farmaceutica').
utilidad('Dewalt DWP611','cortar','1 dia','farmaceutica').
utilidad('yoocnc 9060','cortar','mas 1 dia','farmaceutica').
utilidad('Fresadora SMB-3117','cortar','1 dia','farmaceutica').
utilidad('NCN Router 15303','cortar','mas 1 dia','farmaceutica').
utilidad('4xArmBot','manipular','1 dia','farmaceutica').
utilidad('Diy 4dof','manipular','mas 1 dia','farmaceutica').
utilidad('ARCMate 100IC','medir','1 dia','automovilistica').
utilidad('Faro Factory','medir','mas 1 dia','automovilistica').
utilidad('Automatic Robotic Arm','medir','1 dia','automovilistica').
utilidad('UR-1010','medir','mas 1 dia','automovilistica').
utilidad('LMSSA Wachendorff','medir','mas 1 dia','automovilistica').
utilidad('Moto man MS-ES','medir','1 dia','automovilistica').
utilidad('UR-10','medir','mas 1 dia','automovilistica').
utilidad('M-10IA','manipular','mas 1 dia','automovilistica').
utilidad('Comau Arm-2','manipular','1 dia','automovilistica').
utilidad('TWS-1200','manipular','mas 1 dia','automovilistica').
utilidad('Faro Colbat','medir','1 dia','automovilistica').
utilidad('ISRA VISION','medir','mas 1 dia','automovilistica').
utilidad('Zeiss Albox','medir','1 dia','automovilistica').
utilidad('Estun Robitc ERSeries','medir','mas 1 dia','automovilistica').
utilidad('LEONI medidor','medir','1 dia','automovilistica').
utilidad('XIAO R4','manipular','1 dia','automovilistica').
utilidad('Robot arm','manipular','mas 1 dia','automovilistica').
utilidad('Fanuc','manipular','1 dia','automovilistica').
utilidad('Alfa-Robot Phoenix','manipular','mas 1 dia','automovilistica').
utilidad('Motoman MPX3500','manipular','1 dia','automovilistica').
utilidad('Sanea','manipular','mas 1 dia','automovilistica').
utilidad('UP6 XCR','manipular','1 dia','automovilistica').
utilidad('IRB 6600','cortar','1 dia','automovilistica').
utilidad('Goliat Robot NC','cortar','mas 1 dia','automovilistica').
utilidad('Cizalla Adira de 3050 x 10','cortar','1 dia','automovilistica').
utilidad('Robot industrial FANUC R2000iB','cortar','1 dia','automovilistica').
utilidad('Robot industrial FANUC R2000iB','cortar','mas 1 dia','automovilistica').
utilidad('Cnc Router','cortar','mas 1 dia','automovilistica').
utilidad('115W CNC','cortar','1 dia','automovilistica').
utilidad('SR1325 CNC','cortar','mas 1 dia','automovilistica').
utilidad('Dewalt DWP611','cortar','1 dia','automovilistica').
utilidad('yoocnc 9060','cortar','mas 1 dia','automovilistica').
utilidad('Fresadora SMB-3117','cortar','1 dia','automovilistica').
utilidad('NCN Router 15303','cortar','mas 1 dia','automovilistica').
utilidad('4xArmBot','manipular','1 dia','automovilistica').
utilidad('Diy 4dof','manipular','mas 1 dia','automovilistica').
%utilidad('UR-1010','medir','mas 1 dia','automovilistica').
utilidad('LMSSA Wachendorff','medir','mas 1 dia','automovilistica').
utilidad('Moto man MS-ES','medir','1 dia','automovilistica').
utilidad('UR-10','medir','mas 1 dia','automovilistica').
utilidad('M-10IA','manipular','mas 1 dia','metalurgica').
utilidad('Comau Arm-2','manipular','1 dia','metalurgica').
utilidad('TWS-1200','manipular','mas 1 dia','metalurgica').
utilidad('Faro Colbat','medir','1 dia','metalurgica').
utilidad('ISRA VISION','medir','mas 1 dia','metalurgica').
utilidad('Zeiss Albox','medir','1 dia','metalurgica').
utilidad('Estun Robitc ERSeries','medir','mas 1 dia','metalurgica').
utilidad('LEONI medidor','medir','1 dia','metalurgica').
utilidad('XIAO R4','manipular','1 dia','metalurgica').
utilidad('Robot arm','manipular','mas 1 dia','metalurgica').
utilidad('Fanuc','manipular','1 dia','metalurgica').
utilidad('Alfa-Robot Phoenix','manipular','mas 1 dia','metalurgica').
utilidad('Motoman MPX3500','manipular','1 dia','metalurgica').
utilidad('Sanea','manipular','mas 1 dia','metalurgica').
utilidad('UP6 XCR','manipular','1 dia','metalurgica').
utilidad('IRB 6600','cortar','1 dia','metalurgica').
utilidad('Goliat Robot NC','cortar','mas 1 dia','metalurgica').
utilidad('Cizalla Adira de 3050 x 10','cortar','1 dia','metalurgica').
utilidad('Robot industrial FANUC R2000iB','cortar','1 dia','metalurgica').
utilidad('Robot industrial FANUC R2000iB','cortar','mas 1 dia','metalurgica').
utilidad('Cnc Router','cortar','mas 1 dia','metalurgica').
utilidad('115W CNC','cortar','1 dia','metalurgica').
utilidad('SR1325 CNC','cortar','mas 1 dia','metalurgica').
utilidad('Dewalt DWP611','cortar','1 dia','metalurgica').
utilidad('yoocnc 9060','cortar','mas 1 dia','metalurgica').
utilidad('Fresadora SMB-3117','cortar','1 dia','metalurgica').
utilidad('NCN Router 15303','cortar','mas 1 dia','metalurgica').
utilidad('4xArmBot','manipular','1 dia','metalurgica').
utilidad('Diy 4dof','manipular','mas 1 dia','metalurgica').

:-dynamic justificacion/2.
justificacion('ARCMate 100IC','Un robot industrial que tiene medidas muy exactas y de manera veloz se mide').
justificacion('Faro Factory','Robot que tiene medidas muy exactas y certeras, mide cosas muy grandes con margen de error muy bajo').
justificacion('Automatic Robotic Arm','Un Robot pequeño que mide de manera muy detallada a una velocidad rapida y eficaz').
justificacion('UR-1010','Un robot industrial que mide con gran presicion medidas pequeñas y medianas').
justificacion('LMSSA Wachendorff','Robot industrial de medicion con un rodillo a una velocidad baja pero precisa').
justificacion('Moto man MS-ES','Robot industrial que mide en una gran presicion y medidas grandes a una velocidad relativamente rapida').
justificacion('UR-10','Robot industrial que mide con una gran presicion medidas grandes').
justificacion('Faro Colbat','Un Robot industrial medidor capaz de medir hasta 4.8 m de cualquier objeto').
justificacion('ISRA VISION','Robot con la capacidad a base de luz ultravioleta medir cosas en una velocidad eficaz').
justificacion('Zeiss Albox','Un robot con una buena medicion de proporciones grandes').
justificacion('Estun Robitc ERSeries','Un robot de medicion de proporciones medianas').
justificacion('LEONI medidor','Un robot de medicion lacer de tamaño pequeño, con una velocidad de medicion rapida').
justificacion('Motoman MPX3500','Robot Industrial capaz de manipular cosas tediosas a una buena velocidad y  de manera eficaz').
justificacion('Sanea','Robot Experto Industrial con una gran manipulacion y precision').
justificacion('UP6 XCR','Robot industrial manipulador aunque sea pequeño puede realizar tareas complicadas de una manera rapida').
justificacion('M-10IA','Robot industrial que realiza tareas complicadas pero con una buena manipulacion de manera eficaz').
justificacion('Comau Arm-2','Robot industrial grande grandes capacidades de manipulacion de una manera veloz').
justificacion('TWS-1200','Un gran robot industrial que realiza manipulaciones de maxima dificultad en tiempo moderado').
justificacion('XIAO R4','Robot industrial con una buena manipulacion de objetos un poco mas tediosos de realizar con una velocidad relativamente rapida').
justificacion('Robot arm','Robot Industrial manipulador capaz de realizar manipulaciones con un gran peso en dificultad con una velocidad buena').
justificacion('Fanuc','Robot Industrial capaz de manipular de manera facil y eficaz.').
justificacion('Alfa-Robot Phoenix','Un gran robot industrial realizando manipulaciones mas complicadas a una velocidad buena.').
justificacion('IRB 6600','Robot industrial cortador de una manera eficiente. Velocidad normal. Un tamaño de 4.5m x 4m x 3m').
justificacion('Goliat Robot NC','Robot de cortes finos a una velocidad regular con un corte de 8m x 6m x 4m').
justificacion('Cizalla Adira de 3050 x 10','Robot industrial cortador eficiente. Con una velocidad lenta. Cortes de 2m x 4m x 2m').
justificacion('Robot industrial FANUC R2000iB','Robot industrial de uso rudo ideal para trabajar con material mecanico de alta resistencia, con velocidad de trabajo rapida y un tamaño de 5m x 4m x 2m').
justificacion('Robot industrial FANUC R2000iB','Robot de buenos cortes, con una velocidad baja pero,logrando cortar medidas grandes 11 m x 8 m x 6m').
justificacion('Cnc Router','Un Robt industrian de buenos cortes pero una capacidad lenta en cortar. Aunque este deja cortes finos y a gran cantidad. Sus cortes son apartir de los 2 metros y su maximo corte son los 4.2 M').
justificacion('Dewalt DWP611','Robot Industrial pequeño pero rapido en cortes sus medidas maxiamas son 2 x 3 x 2.6 m').
justificacion('yoocnc 9060','Robot industrial cortador bueno y eficiente hace cortes con medidas maximas 4 x6 x 4').
justificacion('Fresadora SMB-3117','Robot Cortador industrial con una velocidad bueno haciendo cortes maximos aproximadamente 18 m').
justificacion('NCN Router 15303','Robot industrial con la realizacion de grandes cortes de medida maxima de 19 m a una velocidad moderada.').
justificacion('4xArmBot','Un robot industrial Manipulador capaz de lograr manipulaciones basicas pero de una manera eficaz').
justificacion('Diy 4dof','Robot industrial manipulador, realiza manipulaciones sencillas en un tiempo normal').
justificacion('115W CNC','Robot industrial de grandes cortes a una velocidad moderada, Puede cortar hasta 12 m x 12 m x 12 m').
justificacion('SR1325 CNC','Robot Industrial de Grandes cortes a una velocidad baja pero con gran capacidad de cortar muchos millares de gran tamaño aproximadamente 14M').




