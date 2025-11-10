# USB-Protector-Suite
🔒 USB PROTECTOR SUITE - GUÍA RÁPIDA
¿QUÉ ES?
Herramientas simples para OCULTAR archivos en USB y MOSTRARLOS después.

✅ Rápido
✅ Simple
✅ Seguro
✅ MÁS AVANZADO que Explorador de Windows
📦 ARCHIVOS QUE NECESITAS
Archivo	Función
01_PROTECT_MANAGER.BAT	Oculta archivos en USB
02_REVEAL_ALL.BAT	Muestra archivos ocultos
03_SCAN_HIDDEN.BAT	Busca archivos ocultos
icon.ico	Icono (DE PRUEBA - puedes cambiar)
autorun.inf	Autorun (DE PRUEBA - puedes cambiar)
🚀 PASO 1: COPIAR A USB
Copia TODOS estos archivos a tu USB
Copialos en la RAÍZ (no en carpetas)
¡Listo!
🎯 PASO 2: CÓMO USAR
Opción A: OCULTAR ARCHIVOS
1. Haz doble clic en: 01_PROTECT_MANAGER.BAT
2. Escribe letra de USB (ejemplo: E, F, G)
3. Presiona Enter
4. Elige: opción 1
5. ¡Los archivos se OCULTAN!
Opción B: MOSTRAR ARCHIVOS
1. Haz doble clic en: 02_REVEAL_ALL.BAT
2. Escribe letra de USB
3. Presiona Enter
4. ¡TODOS los archivos aparecen!
Opción C: BUSCAR OCULTOS
1. Haz doble clic en: 03_SCAN_HIDDEN.BAT
2. El programa BUSCA en todas las USB
3. Te dice DÓNDE hay ocultos
4. Presiona tecla para salir
⚙️ ¿CÓMO FUNCIONA TÉCNICAMENTE?
Los atributos H + S
El script usa atributos especiales del sistema operativo:

Atributo	Significado	Función
H	HIDDEN (Oculto)	El archivo no se ve en Explorador
S	SYSTEM (Sistema)	El archivo está protegido
Qué hace:
Para OCULTAR:

attrib +h +s archivo.txt
➕ AGREGA atributo H = el archivo se oculta
➕ AGREGA atributo S = el archivo se protege
Resultado: El archivo está en la USB pero NO se ve
Para MOSTRAR:

attrib -h -s archivo.txt
➖ QUITA atributo H = deja de ser oculto
➖ QUITA atributo S = deja de estar protegido
Resultado: El archivo vuelve a ser visible
¿Por qué es efectivo?
✅ Los archivos realmente existen en la USB ✅ Windows simplemente no los muestra ✅ Solo quien sabe cómo desocultarlos puede acceder ✅ Imposible encontrar si no tienes los scripts

01_PROTECT_MANAGER.BAT
✅ Oculta TODOS los archivos de tu USB
✅ Los archivos NO se ven en el explorador
✅ NO se eliminan, están protegidos
✅ Puedes EXCLUIR archivos (que si se vean)
02_REVEAL_ALL.BAT
✅ Muestra TODOS los archivos ocultos
✅ Los archivos vuelven a ser visibles
✅ NO borra nada
✅ Es lo opuesto a ocultar
03_SCAN_HIDDEN.BAT
✅ Busca en TODAS las USB conectadas
✅ Te dice DÓNDE hay archivos ocultos
✅ Te muestra la RUTA de los ocultos
✅ NO cambia nada, solo busca
🔐 CÓMO EXCLUIR ARCHIVOS
¿Quiero que algunos archivos SIEMPRE se vean?

Pasos:
Abre con Bloc de Notas: 01_PROTECT_MANAGER.BAT
Busca: CONFIGURACION DE EXCLUSIONES
Modifica estas líneas:
set "EXCLUSIONS[1]="
set "EXCLUSIONS[2]="
Agrega tu archivo:
set "EXCLUSIONS[1]=MiArchivo.txt"
set "EXCLUSIONS[2]=MiCarpeta"
Guarda el archivo
¡Listo! Esos archivos NO se ocultarán
Ejemplos:
- Un archivo:       set "EXCLUSIONS[1]=documento.docx"
- Una carpeta:      set "EXCLUSIONS[2]=MisCarpetas"
- En subcarpeta:    set "EXCLUSIONS[3]=Datos\importante.txt"
- Varios niveles:   set "EXCLUSIONS[4]=A\B\C\archivo.doc"
❓ PREGUNTAS FRECUENTES
P: ¿Se perdieron mis archivos?
R: ¡NO! Los archivos están ocultos. Usa 02_REVEAL_ALL.BAT

P: ¿Puedo recuperar archivos ocultos?
R: ¡SÍ! Ejecuta 02_REVEAL_ALL.BAT y aparecen de nuevo

P: ¿Es seguro ocultar archivos?
R: ¡SÍ! No borra nada, solo los esconde

P: ¿Se ven todos ocultos?
R: Sí, a menos que EXCLUYAS algunos

P: ¿Dónde se guardan?
R: En la misma USB, solo no se ven

P: ¿Funciona en otra USB?
R: ¡SÍ! Funciona en cualquier USB o disco

P: ¿Necesito admin?
R: En algunos Windows sí. Abre como Administrador

⚡ PASO A PASO RÁPIDO (RESUMEN)
Para OCULTAR:
1. Copia los .BAT a USB
2. Haz doble clic en 01_PROTECT_MANAGER.BAT
3. Escribe letra de USB
4. Elige opción: 1
5. ¡LISTO! Archivos ocultos
Para MOSTRAR:
1. Haz doble clic en 02_REVEAL_ALL.BAT
2. Escribe letra de USB
3. ¡LISTO! Archivos visibles
🚨 ERRORES COMUNES
Error: "No se esperaba : en este momento"
Solución:

Abre Bloc de Notas
Guarda VACÍO como: test.bat
Si se crea = problema del archivo
Descarga los .BAT nuevamente
Error: "Acceso denegado"
Solución:

Abre el .BAT como ADMINISTRADOR
Clic derecho > Ejecutar como administrador
No veo los archivos ocultos
Solución:

Ejecuta 03_SCAN_HIDDEN.BAT para buscar
Si encuentra = están ocultos
Ejecuta 02_REVEAL_ALL.BAT para mostrar
📝 SOBRE LOS ARCHIVOS: icon.ico Y autorun.inf
⚠️ ESTOS SON DE PRUEBA
icon.ico
🖼️ Es el icono que se muestra en la USB
🔄 PUEDES CAMBIAR por tu propio icono
📋 Para usar tu icono:
1. Ten tu archivo .ico
2. Renombralo a: icon.ico
3. Reemplaza el que viene en la carpeta
autorun.inf
⚙️ Es la configuración de autorun de la USB
🔄 PUEDES CAMBIAR por tu propia configuración
📋 Para cambiar:
1. Abre autorun.inf con Bloc de Notas
2. Modifica lo que necesites
3. Guarda
4. ¡Listo!
Nota importante:
❌ Si no necesitas autorun = puedes ELIMINAR este archivo
✅ No afecta el funcionamiento de los scripts
⚠️ ARCHIVOS ESPECIALES
"System Volume Information"
❌ NO es virus
❌ NO lo toques
❌ Es del SISTEMA Windows
✅ Normal que aparezca
💡 SOPORTE RÁPIDO
Si algo no funciona:

1. Guarda tu USB (copia de seguridad)
2. Ejecuta 02_REVEAL_ALL.BAT (muestra todo)
3. Intenta de nuevo
⚠️ IMPORTANTE: ¡Siempre haz copia de seguridad antes!

📝 RESUMEN FINAL
Acción	Script
🔒 Ocultar	01_PROTECT_MANAGER.BAT
👁️ Mostrar	02_REVEAL_ALL.BAT
🔍 Buscar	03_SCAN_HIDDEN.BAT
¡Listo! Ya puedes empezar a usar USB PROTECTOR SUITE 🚀
