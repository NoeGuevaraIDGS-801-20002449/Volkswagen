use VolksWagen;
go
-- Insertar registros en la tabla de errores
INSERT INTO errores (tipo_error, descripción, fecha, hora, usuario_reporte, estado, prioridad, notas_solución, causa_raíz, nivel, impacto, frecuencia)
VALUES
    ('Error de conexión', 'No se pudo establecer conexión con la base de datos', '2023-08-27', '08:15:00', 'Usuario1', 1, 'Alta', 'Reiniciar el servidor de la base de datos', 'Problema de red', 2, 'Bajo', 'Diaria'),
    ('Error de sistema', 'El sistema se bloqueó al intentar procesar una solicitud', '2023-08-27', '10:30:00', 'Usuario2', 1, 'Alta', 'Reiniciar el servidor de aplicaciones', 'Código defectuoso', 3, 'Alto', 'Semanal'),
    ('Error de archivo', 'No se pudo encontrar el archivo de configuración', '2023-08-28', '14:45:00', 'Usuario3', 0, 'Media', 'Restaurar archivo de respaldo', 'Archivo eliminado accidentalmente', 1, 'Moderado', 'Mensual'),
    ('Error de hardware', 'La impresora no responde al imprimir', '2023-08-29', '09:20:00', 'Usuario4', 1, 'Alta', 'Reemplazar cable de conexión', 'Fallo de hardware', 2, 'Alto', 'Diaria'),
    ('Error de seguridad', 'Acceso no autorizado al sistema', '2023-08-30', '11:10:00', 'Usuario5', 1, 'Alta', 'Cambiar contraseñas y revisar permisos', 'Intento de hackeo', 3, 'Crítico', 'Semanal'),
    ('Error de aplicación', 'La página web muestra un error 404', '2023-08-30', '15:30:00', 'Usuario1', 1, 'Media', 'Verificar enlaces y rutas', 'Enlace roto', 2, 'Moderado', 'Diaria'),
    ('Error de sistema', 'El sistema se reinició inesperadamente', '2023-08-31', '08:00:00', 'Usuario2', 0, 'Baja', 'Investigar registros de eventos', 'Fallo eléctrico', 1, 'Bajo', 'Semanal'),
    ('Error de base de datos', 'Consulta SQL arrojó un error de sintaxis', '2023-08-31', '10:50:00', 'Usuario3', 1, 'Media', 'Revisar la consulta SQL', 'Error de programación', 2, 'Moderado', 'Diaria'),
    ('Error de red', 'La conexión a internet está intermitente', '2023-09-01', '12:15:00', 'Usuario4', 1, 'Alta', 'Contactar al proveedor de servicios', 'Problema en la ISP', 2, 'Moderado', 'Semanal'),
    ('Error de aplicación', 'La aplicación móvil se cierra inesperadamente', '2023-09-02', '16:40:00', 'Usuario5', 1, 'Media', 'Actualizar la aplicación', 'Error de memoria', 2, 'Bajo', 'Diaria'),
    ('Error de sistema', 'El sistema operativo no inicia', '2023-09-02', '09:05:00', 'Usuario1', 1, 'Alta', 'Realizar un análisis de disco', 'Error en el bootloader', 3, 'Crítico', 'Mensual'),
    ('Error de seguridad', 'Se detectó un malware en la red', '2023-09-03', '11:20:00', 'Usuario2', 1, 'Alta', 'Ejecutar un escaneo antivirus', 'Descarga de archivo malicioso', 2, 'Alto', 'Semanal'),
    ('Error de aplicación', 'El módulo de informes no muestra datos', '2023-09-04', '14:30:00', 'Usuario3', 0, 'Media', 'Verificar conexión a la base de datos', 'Error en la consulta SQL', 1, 'Moderado', 'Diaria'),
    ('Error de sistema', 'El servidor de correo no envía mensajes', '2023-09-04', '10:00:00', 'Usuario4', 1, 'Alta', 'Verificar configuración del servidor de correo', 'Problema de configuración', 2, 'Moderado', 'Semanal'),
    ('Error de hardware', 'El teclado no responde al escribir', '2023-09-05', '12:45:00', 'Usuario5', 1, 'Alta', 'Reemplazar el teclado', 'Fallo de hardware', 2, 'Alto', 'Diaria'),
    ('Error de aplicación', 'La aplicación web muestra datos incorrectos', '2023-09-05', '16:15:00', 'Usuario1', 1, 'Media', 'Revisar lógica de programación', 'Error en el cálculo', 2, 'Moderado', 'Semanal'),
    ('Error de seguridad', 'Se detectó una brecha de seguridad en la red', '2023-09-06', '10:35:00', 'Usuario2', 1, 'Alta', 'Tomar medidas para contener la brecha', 'Ataque de fuerza bruta', 3, 'Crítico', 'Diaria'),
    ('Error de sistema', 'El sistema operativo muestra pantallas azules', '2023-09-06', '08:50:00', 'Usuario3', 0, 'Baja', 'Actualizar controladores de hardware', 'Error de driver', 1, 'Moderado', 'Semanal'),
    ('Error de aplicación', 'La aplicación móvil se bloquea al subir fotos', '2023-09-07', '14:05:00', 'Usuario4', 1, 'Media', 'Optimizar la gestión de memoria', 'Sobrecarga de memoria', 2, 'Bajo', 'Mensual'),
    ('Error de sistema', 'El sistema se apaga repentinamente', '2023-09-07', '09:30:00', 'Usuario5', 1, 'Alta', 'Revisar temperaturas del hardware', 'Sobrecalentamiento', 3, 'Alto', 'Diaria');


go

-- Insertar registros en la tabla de error_personal
INSERT INTO error_personal (tipo_error, descripción, fecha, hora, usuario_reporte, estado, prioridad, notas_solución, causa_raíz, nivel, impacto, frecuencia)
VALUES
    ('Error de conexión', 'No se pudo establecer conexión con el servidor', '2023-08-27', '08:15:00', 'Usuario1', 1, 'Alta', 'Reiniciar el enrutador', 'Problema de red', 2, 'Bajo', 'Diaria'),
    ('Error de sistema', 'El sistema operativo se congela al iniciar', '2023-08-28', '14:45:00', 'Usuario2', 0, 'Baja', 'Realizar un análisis de disco', 'Fallo en el disco duro', 3, 'Crítico', 'Mensual'),
    ('Error de seguridad', 'Acceso no autorizado a la cuenta de usuario', '2023-08-30', '11:10:00', 'Usuario3', 1, 'Alta', 'Cambiar contraseña y habilitar autenticación en dos pasos', 'Contraseña comprometida', 3, 'Crítico', 'Semanal'),
    ('Error de aplicación', 'La aplicación móvil muestra datos incorrectos', '2023-08-30', '15:30:00', 'Usuario4', 1, 'Media', 'Actualizar la aplicación', 'Error en la lógica de programación', 2, 'Alto', 'Diaria'),
    ('Error de base de datos', 'Consulta SQL arrojó un error de sintaxis', '2023-08-31', '10:50:00', 'Usuario3', 1, 'Media', 'Revisar la consulta SQL', 'Error de programación', 2, 'Moderado', 'Diaria'),
    ('Error de aplicación', 'La aplicación móvil se cierra al abrir el menú', '2023-09-02', '16:40:00', 'Usuario5', 1, 'Media', 'Verificar actualizaciones de la aplicación', 'Error en la interacción con el menú', 2, 'Bajo', 'Diaria'),
    ('Error de seguridad', 'Se detectó un intento de intrusión en la red', '2023-09-03', '11:20:00', 'Usuario2', 1, 'Alta', 'Verificar registros de seguridad y fortalecer firewall', 'Ataque de fuerza bruta', 2, 'Alto', 'Semanal'),
    ('Error de sistema', 'El sistema operativo muestra errores al abrir ciertos programas', '2023-09-04', '10:00:00', 'Usuario4', 1, 'Alta', 'Realizar un análisis de integridad del sistema', 'Problema en el registro de Windows', 2, 'Moderado', 'Semanal'),
    ('Error de hardware', 'El mouse se mueve de forma errática', '2023-09-05', '12:45:00', 'Usuario5', 1, 'Alta', 'Probar el mouse en otro puerto USB', 'Fallo en el puerto USB', 2, 'Alto', 'Diaria'),
    ('Error de aplicación', 'La aplicación web muestra fechas incorrectas', '2023-09-05', '16:15:00', 'Usuario1', 1, 'Media', 'Verificar la configuración regional', 'Error en el formato de fecha', 1, 'Moderado', 'Diaria'),
    ('Error de seguridad', 'Se detectó un intento de phishing en el correo', '2023-09-06', '10:35:00', 'Usuario2', 1, 'Alta', 'Eliminar el correo sospechoso y educar al usuario', 'Intento de robo de información', 3, 'Crítico', 'Diaria'),
    ('Error de aplicación', 'La aplicación de escritorio se cierra inesperadamente', '2023-09-07', '14:05:00', 'Usuario4', 1, 'Media', 'Verificar registros de eventos del sistema', 'Error en la gestión de memoria', 2, 'Bajo', 'Mensual'),
    ('Error de sistema', 'El sistema operativo se reinicia automáticamente', '2023-09-07', '09:30:00', 'Usuario5', 1, 'Alta', 'Revisar configuración de actualizaciones', 'Actualización defectuosa', 3, 'Alto', 'Diaria'),
    ('Error de conexión', 'Se perdió la conexión a la red local', '2023-09-08', '08:15:00', 'Usuario1', 1, 'Alta', 'Revisar cables de red y puertos', 'Problema de conexión física', 2, 'Bajo', 'Semanal'),
    ('Error de aplicación', 'La aplicación web no muestra el contenido actualizado', '2023-09-08', '10:30:00', 'Usuario2', 1, 'Media', 'Limpiar caché del navegador', 'Error en la lógica de caché', 1, 'Moderado', 'Diaria'),
    ('Error de sistema', 'El sistema operativo muestra errores al apagar', '2023-09-09', '14:45:00', 'Usuario3', 0, 'Baja', 'Verificar actualizaciones del sistema operativo', 'Error en la secuencia de apagado', 1, 'Bajo', 'Semanal'),
    ('Error de seguridad', 'Se detectó un archivo adjunto malicioso en el correo', '2023-09-10', '11:10:00', 'Usuario4', 1, 'Alta', 'Eliminar el correo y realizar un escaneo antivirus', 'Intento de infección por malware', 2, 'Alto', 'Semanal'),
    ('Error de aplicación', 'La aplicación móvil no responde al tocar ciertos botones', '2023-09-10', '15:30:00', 'Usuario5', 1, 'Media', 'Reiniciar la aplicación', 'Error en la interfaz táctil', 1, 'Moderado', 'Diaria'),
    ('Error de sistema', 'El sistema operativo se congela al ejecutar programas específicos', '2023-09-11', '08:00:00', 'Usuario1', 0, 'Baja', 'Verificar actualizaciones de los programas', 'Incompatibilidad de versiones', 2, 'Moderado', 'Mensual'),
    ('Error de base de datos', 'No se pudo insertar un nuevo registro en la base de datos', '2023-09-11', '10:50:00', 'Usuario2', 1, 'Media', 'Revisar permisos del usuario', 'Restricciones en el usuario de base de datos', 1, 'Moderado', 'Diaria'),
    ('Error de aplicación', 'La aplicación de escritorio muestra un mensaje de error al guardar', '2023-09-12', '12:15:00', 'Usuario3', 1, 'Alta', 'Verificar espacio en disco y permisos', 'Error en la escritura de archivo', 2, 'Moderado', 'Semanal');



go

-- Insertar registros en la tabla de error_herramienta
INSERT INTO error_herramienta (tipo_error, descripción, fecha, hora, usuario_reporte, estado, prioridad, notas_solución, causa_raíz, nivel, impacto, frecuencia)
VALUES
    ('Error de funcionamiento', 'La herramienta no enciende', '2023-08-27', '08:15:00', 'Usuario1', 1, 'Alta', 'Verificar cableado y conexión eléctrica', 'Fallo en la alimentación', 2, 'Bajo', 'Diaria'),
    ('Error de precisión', 'La herramienta corta de forma desigual', '2023-08-28', '14:45:00', 'Usuario2', 0, 'Media', 'Calibrar la herramienta', 'Desajuste en las cuchillas', 3, 'Moderado', 'Semanal'),
    ('Error de seguridad', 'La herramienta no tiene protecciones adecuadas', '2023-08-30', '11:10:00', 'Usuario3', 1, 'Alta', 'Agregar protecciones y señalizaciones', 'Incumplimiento de normativas', 3, 'Crítico', 'Semanal'),
    ('Error de mantenimiento', 'La herramienta hace ruidos extraños', '2023-08-30', '15:30:00', 'Usuario4', 1, 'Media', 'Realizar mantenimiento preventivo', 'Piezas desgastadas o sucias', 2, 'Alto', 'Diaria'),
    ('Error de uso', 'La herramienta se bloquea al utilizarla', '2023-08-31', '10:50:00', 'Usuario3', 1, 'Media', 'Revisar el manual de usuario', 'Uso incorrecto de la herramienta', 2, 'Moderado', 'Diaria'),
    ('Error de calidad', 'La herramienta produce productos defectuosos', '2023-09-02', '16:40:00', 'Usuario5', 1, 'Alta', 'Verificar materiales y ajustes', 'Problema en el proceso de producción', 2, 'Alto', 'Diaria'),
    ('Error de seguridad', 'La herramienta no tiene bloqueo de encendido', '2023-09-03', '11:20:00', 'Usuario2', 1, 'Alta', 'Instalar un bloqueo de encendido', 'Riesgo de encendido accidental', 2, 'Alto', 'Semanal'),
    ('Error de funcionamiento', 'La herramienta vibra excesivamente al funcionar', '2023-09-04', '10:00:00', 'Usuario4', 1, 'Alta', 'Balancear la herramienta', 'Desequilibrio en las piezas móviles', 2, 'Moderado', 'Semanal'),
    ('Error de seguridad', 'La herramienta no tiene protección auditiva', '2023-09-05', '12:45:00', 'Usuario5', 1, 'Media', 'Entregar protección auditiva al usuario', 'Riesgo de daño auditivo', 1, 'Bajo', 'Diaria'),
    ('Error de uso', 'La herramienta produce chispas al cortar', '2023-09-05', '16:15:00', 'Usuario1', 1, 'Media', 'Utilizar herramienta en área segura', 'Material inapropiado para corte', 1, 'Moderado', 'Diaria'),
    ('Error de seguridad', 'La herramienta presenta cables pelados', '2023-09-06', '10:35:00', 'Usuario2', 1, 'Alta', 'Cambiar el cableado de la herramienta', 'Riesgo de electrocución', 3, 'Crítico', 'Diaria'),
    ('Error de funcionamiento', 'La herramienta no alcanza la velocidad deseada', '2023-09-07', '14:05:00', 'Usuario4', 1, 'Media', 'Verificar control de velocidad', 'Problema en el regulador de velocidad', 2, 'Moderado', 'Mensual'),
    ('Error de uso', 'La herramienta no corta correctamente', '2023-09-07', '09:30:00', 'Usuario5', 1, 'Alta', 'Cambiar cuchillas de corte', 'Cuchillas desgastadas', 3, 'Alto', 'Diaria'),
    ('Error de seguridad', 'La herramienta no tiene protección ocular', '2023-09-08', '08:15:00', 'Usuario1', 1, 'Alta', 'Entregar protección ocular al usuario', 'Riesgo de lesiones oculares', 2, 'Alto', 'Semanal'),
    ('Error de calidad', 'La herramienta no ajusta correctamente', '2023-09-08', '10:30:00', 'Usuario2', 1, 'Media', 'Verificar mecanismos de ajuste', 'Desgaste en mecanismos de ajuste', 1, 'Moderado', 'Diaria'),
    ('Error de funcionamiento', 'La herramienta no enciende', '2023-09-09', '14:45:00', 'Usuario3', 0, 'Baja', 'Verificar cableado y enchufe', 'Fallo en la alimentación', 1, 'Bajo', 'Semanal'),
    ('Error de uso', 'La herramienta no suelta el material después de cortar', '2023-09-10', '11:10:00', 'Usuario4', 1, 'Media', 'Verificar mecanismo de liberación', 'Bloqueo en el mecanismo de liberación', 2, 'Moderado', 'Semanal'),
    ('Error de seguridad', 'La herramienta no tiene protector térmico', '2023-09-10', '15:30:00', 'Usuario5', 1, 'Alta', 'Instalar protector térmico', 'Riesgo de sobrecalentamiento', 1, 'Bajo', 'Diaria'),
    ('Error de calidad', 'La herramienta deja marcas en la superficie', '2023-09-11', '08:00:00', 'Usuario1', 1, 'Alta', 'Ajustar presión y velocidad', 'Ajustes inadecuados para el material', 2, 'Moderado', 'Mensual'),
    ('Error de funcionamiento', 'La herramienta no detiene la rotación al soltar el interruptor', '2023-09-11', '10:50:00', 'Usuario2', 1, 'Media', 'Reemplazar interruptor', 'Fallo en el interruptor de apagado', 2, 'Moderado', 'Diaria');


go

-- Insertar registros en la tabla de error_linea_produccion
INSERT INTO error_linea_produccion (tipo_error, descripción, fecha, hora, usuario_reporte, estado, prioridad, notas_solución, causa_raíz, nivel, impacto, frecuencia)
VALUES
    ('Fallo en la alimentación', 'La línea de producción se detuvo por falta de energía', '2023-08-27', '08:15:00', 'Supervisor1', 1, 'Alta', 'Revisar suministro eléctrico', 'Apagón en la zona', 2, 'Bajo', 'Diaria'),
    ('Defecto de fabricación', 'Los productos presentan grietas en la superficie', '2023-08-28', '14:45:00', 'Supervisor2', 0, 'Media', 'Revisar proceso de moldeo', 'Problema en el molde', 3, 'Moderado', 'Semanal'),
    ('Detención de emergencia', 'La línea se detuvo debido a una parada de emergencia', '2023-08-30', '11:10:00', 'Supervisor3', 1, 'Alta', 'Revisar causa de la parada', 'Acción de emergencia activada', 3, 'Crítico', 'Semanal'),
    ('Fallo en sensor', 'El sensor de detección de producto no funciona correctamente', '2023-08-30', '15:30:00', 'Supervisor4', 1, 'Media', 'Reemplazar sensor', 'Sensor defectuoso', 2, 'Alto', 'Diaria'),
    ('Error de programación', 'La línea ejecuta movimientos incorrectos', '2023-08-31', '10:50:00', 'Supervisor3', 1, 'Media', 'Corregir código de programación', 'Error en el programa de control', 2, 'Moderado', 'Diaria'),
    ('Defecto en soldadura', 'Los productos presentan uniones débiles', '2023-09-02', '16:40:00', 'Supervisor5', 1, 'Alta', 'Ajustar parámetros de soldadura', 'Error en proceso de soldadura', 2, 'Alto', 'Diaria'),
    ('Parada no programada', 'La línea se detuvo sin instrucción', '2023-09-03', '11:20:00', 'Supervisor2', 1, 'Alta', 'Identificar causa de la parada', 'Problema en el sistema de control', 2, 'Alto', 'Semanal'),
    ('Fallo en transportador', 'El transportador no mueve los productos', '2023-09-04', '10:00:00', 'Supervisor4', 1, 'Media', 'Revisar motor y sistema de transmisión', 'Fallo en motor o transmisión', 2, 'Moderado', 'Semanal'),
    ('Error de programación', 'Los productos no reciben la etiqueta adecuada', '2023-09-05', '12:45:00', 'Supervisor5', 1, 'Media', 'Corregir código de etiquetado', 'Error en el programa de etiquetado', 1, 'Bajo', 'Diaria'),
    ('Defecto en pintura', 'Los productos presentan manchas en la pintura', '2023-09-05', '16:15:00', 'Supervisor1', 1, 'Media', 'Verificar proceso de pintura', 'Problema en la pulverización', 1, 'Moderado', 'Diaria'),
    ('Fallo en sensor', 'El sensor de detección de final de ciclo no funciona', '2023-09-06', '10:35:00', 'Supervisor2', 1, 'Alta', 'Reemplazar sensor', 'Sensor defectuoso', 3, 'Crítico', 'Diaria'),
    ('Error de programación', 'La línea ejecuta movimientos incorrectos', '2023-09-07', '14:05:00', 'Supervisor4', 1, 'Media', 'Corregir código de programación', 'Error en el programa de control', 2, 'Moderado', 'Mensual'),
    ('Fallo en transportador', 'El transportador no mueve los productos', '2023-09-07', '09:30:00', 'Supervisor5', 1, 'Alta', 'Revisar motor y sistema de transmisión', 'Fallo en motor o transmisión', 3, 'Alto', 'Diaria'),
    ('Error de programación', 'La línea no ajusta la velocidad de acuerdo a la demanda', '2023-09-08', '08:15:00', 'Supervisor1', 0, 'Alta', 'Revisar código de control', 'Error en la lógica de ajuste de velocidad', 1, 'Bajo', 'Semanal'),
    ('Defecto de montaje', 'Los productos presentan piezas mal ensambladas', '2023-09-08', '10:30:00', 'Supervisor2', 1, 'Media', 'Mejorar proceso de ensamblaje', 'Error en proceso de montaje', 2, 'Moderado', 'Diaria'),
    ('Parada por mantenimiento', 'La línea se detuvo para realizar mantenimiento', '2023-09-09', '14:45:00', 'Supervisor3', 0, 'Media', 'Realizar mantenimiento preventivo', 'Programa de mantenimiento', 2, 'Bajo', 'Semanal'),
    ('Fallo en sensor', 'El sensor de detección de piezas no responde', '2023-09-10', '11:10:00', 'Supervisor4', 1, 'Media', 'Reemplazar sensor', 'Sensor defectuoso', 2, 'Moderado', 'Semanal'),
    ('Error de programación', 'La línea no sigue el flujo correcto de producción', '2023-09-10', '15:30:00', 'Supervisor5', 1, 'Alta', 'Revisar código de control', 'Error en el flujo de producción', 3, 'Alto', 'Diaria'),
    ('Defecto en empaque', 'Los productos presentan daños en el empaque', '2023-09-11', '08:00:00', 'Supervisor1', 1, 'Alta', 'Mejorar proceso de embalaje', 'Problema en proceso de embalaje', 2, 'Alto', 'Mensual'),
    ('Fallo en sensor', 'El sensor de detección de producto no funciona correctamente', '2023-09-11', '10:50:00', 'Supervisor2', 1, 'Media', 'Reemplazar sensor', 'Sensor defectuoso', 2, 'Moderado', 'Diaria');


