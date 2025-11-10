P: Puedo RECUPERAR archivos ocultos?
R: SI! Ejecuta 02_REVEAL_ALL.BAT y aparecen de nuevo


P: Este metodo es diferente a Explorador?
R: SI! Es MAS AVANZADO:
   - Explorador solo esconde, nosotros PROTEGEMOS
   - Con Explorador = cualquiera los puede mostrar
   - Con este script = solo tu sabes como hacerlo
   - Los archivos estan REALMENTE ocultos


P: Se ven todos ocultos en la USB?
R: Si. A menos que EXCLUYAS algunos en la configuracion================================================================================
USB PROTECTOR SUITE - GUIA RAPIDA
================================================================================

QUE ES?
=======
Herramientas para OCULTAR archivos en USB/discos y MOSTRARLOS después.
Simple. Rápido. Seguro.

VENTAJA ESPECIAL: Este metodo es MAS AVANZADO que ocultar con Explorador
- Los archivos estan PROTEGIDOS de cambios accidentales
- Imposible encontrarlos sin saber como desocultarlos
- Funciona incluso en Windows antiguo


ARCHIVOS QUE NECESITAS
=====================

1. 01_PROTECT_MANAGER.BAT ........ OCULTA archivos en USB
2. 02_REVEAL_ALL.BAT ............ MUESTRA archivos ocultos
3. 03_SCAN_HIDDEN.BAT ........... BUSCA archivos ocultos
4. icon.ico ..................... Icono (optional)
5. autorun.inf .................. Autorun (optional)


PASO 1: COPIAR A USB
====================

1. Copia TODOS estos archivos a tu USB
2. Copia en la RAIZ (no en carpetas)
3. Listo!


PASO 2: COMO USAR
=================

OPCION A: OCULTAR ARCHIVOS
---------------------------
1. Haz doble clic en: 01_PROTECT_MANAGER.BAT
2. Escribe la letra de tu USB (ejemplo: E, F, G)
3. Presiona Enter
4. Elige opcion: 1
5. Los archivos se OCULTAN (menos los que agregues)

OPCION B: MOSTRAR ARCHIVOS
---------------------------
1. Haz doble clic en: 02_REVEAL_ALL.BAT
2. Escribe la letra de tu USB
3. Presiona Enter
4. TODOS los archivos aparecen visibles

OPCION C: BUSCAR OCULTOS
------------------------
1. Haz doble clic en: 03_SCAN_HIDDEN.BAT
2. El programa BUSCA en todas las USB
3. Te dice DONDE hay archivos ocultos
4. Presiona cualquier tecla para salir


QUE HACE CADA SCRIPT
====================

01_PROTECT_MANAGER.BAT
  - Oculta TODOS los archivos de tu USB
  - Los archivos NO se ven en el explorador
  - Pero NO se eliminan, estan ahi protegidos
  - Tu puedes EXCLUIR archivos (que si se vean)
  
02_REVEAL_ALL.BAT
  - Muestra TODOS los archivos ocultos
  - Los archivos vuelven a ser visibles
  - NO borra nada
  - Es lo OPUESTO a ocultar
  
03_SCAN_HIDDEN.BAT
  - Busca en TODAS las USB conectadas
  - Te dice si hay archivos ocultos
  - Te MUESTRA la ruta de los ocultos
  - NO cambia nada, SOLO busca


COMO EXCLUIR ARCHIVOS
====================

Quiero que algunos archivos SIEMPRE se vean (no se oculten)

PASOS:
1. Abre: 01_PROTECT_MANAGER.BAT con Bloc de Notas
2. Busca la linea: "CONFIGURACION DE EXCLUSIONES"
3. Mira estas lineas:
   set "EXCLUSIONS[1]="
   set "EXCLUSIONS[2]="
4. AGREGA tu archivo:
   set "EXCLUSIONS[1]=MiArchivo.txt"
   set "EXCLUSIONS[2]=MiCarpeta"
5. GUARDA el archivo
6. Listo! Esos archivos NO se ocultaran


EJEMPLOS DE EXCLUSIONES
=======================

- Un archivo:       set "EXCLUSIONS[1]=documento.docx"
- Una carpeta:      set "EXCLUSIONS[2]=MisCarpetas"
- En subcarpeta:    set "EXCLUSIONS[3]=Datos\importante.txt"
- Varios niveles:   set "EXCLUSIONS[4]=A\B\C\archivo.doc"


PREGUNTAS FRECUENTES
====================

P: Se perdieron mis archivos?
R: NO! Los archivos estan ocultos, pero existen. Usa 02_REVEAL_ALL.BAT


P: Puedo RECUPERAR archivos ocultos?
R: SI! Ejecuta 02_REVEAL_ALL.BAT y aparecen de nuevo


P: Es seguro ocultar archivos?
R: SI! No borra nada. Solo los esconde del explorador


P: Se ven todos ocultos en la USB?
R: Si. A menos que EXCLUYAS algunos en la configuracion


P: Donde se guardan los ocultos?
R: En la misma USB! Solo no se ven


P: Puedo usar estos scripts en otra USB?
R: SI! Funcionan en cualquier USB o disco


P: Necesito privilegios de admin?
R: En algunos Windows si. Abre como Administrador


PASO A PASO RAPIDO (RESUMEN)
===========================

1. Copia los .BAT a USB
2. Haz doble clic en 01_PROTECT_MANAGER.BAT
3. Escribe letra de USB
4. Elige opcion 1
5. LISTO! Archivos ocultos

Para MOSTRAR:
1. Haz doble clic en 02_REVEAL_ALL.BAT
2. Escribe letra de USB
3. LISTO! Archivos visibles


ERROR: "No se esperaba : en este momento"
=========================================
Solucion:
1. Abre Bloc de Notas
2. Guarda VACIO como: test.bat
3. Si se crea correctamente = problema del archivo
4. Descarga los .BAT nuevamente


ERROR: "Acceso denegado"
=======================
Solucion:
1. Abre el .BAT como ADMINISTRADOR
2. Clic derecho > Ejecutar como administrador


NO VEO LOS ARCHIVOS OCULTOS
===========================
1. Ejecuta 03_SCAN_HIDDEN.BAT para buscar
2. Si encuentra = estan ocultos
3. Ejecuta 02_REVEAL_ALL.BAT para mostrar


ARCHIVOS ESPECIALES QUE APARECEN
================================

"System Volume Information"
- Es del SISTEMA Windows
- NO es virus
- NO lo toques
- Es normal que aparezca


================================================================================
SOPORTE RAPIDO
================================================================================

Si algo no funciona:
1. Guarda tu USB
2. Ejecuta 02_REVEAL_ALL.BAT (muestra todo)
3. Intenta de nuevo

IMPORTANTE: Siempre haz copia de seguridad antes de experimentar!

================================================================================
FIN DE LA GUIA
================================================================================