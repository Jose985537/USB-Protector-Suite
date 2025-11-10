@echo off
rem ==============================================================================
rem USB PROTECTION MANAGER - Gestor Simplificado de Archivos Ocultos
rem ==============================================================================
rem Funciones: Ocultar TODO / Ver Exclusiones / Salir
rem ==============================================================================

setlocal enabledelayedexpansion

rem ==============================================================================
rem SECCIÓN 1: CONFIGURACIÓN DE EXCLUSIONES
rem ==============================================================================
rem INSTRUCCIONES: Edita las siguientes líneas para agregar/quitar archivos y carpetas
rem que deseas MANTENER VISIBLES cuando se ejecute "Ocultar Todo"
rem
rem FORMATOS:
rem  - Archivo individual: "nombre.extension"
rem  - Carpeta: "nombre_carpeta"
rem  - Archivo en subcarpeta: "carpeta\archivo.ext"
rem  - Múltiples niveles: "carpeta\subcarpeta\archivo.ext"
rem
rem EJEMPLOS DE EXCLUSIONES:
rem  - Mostrar ejecutable en raíz: Ghost Drive.exe
rem  - Mostrar carpeta: Datos_Importantes
rem  - Mostrar archivo en subcarpeta: Datos_Importantes\Config.txt
rem  - Mostrar carpeta completa y su contenido: Seguro
rem ==============================================================================

setlocal enabledelayedexpansion

rem Lista de exclusiones - EDITA AQUI los archivos y carpetas a proteger
set "EXCLUSIONS_COUNT=0"

rem ==============================================================================
rem SECCIÓN 2: MENÚ PRINCIPAL
rem ==============================================================================

:MENU
cls
echo.
echo ========================================================
echo       USB PROTECTION MANAGER - Proteccion de Archivos
echo ========================================================
echo.
echo  1. Ocultar TODO (excepto exclusiones)
echo  2. Ver configuracion de exclusiones
echo  3. Salir
echo.
set /p "OPTION=Selecciona una opcion (1, 5 o 6): "

if "%OPTION%"=="1" goto HIDE_ALL
if "%OPTION%"=="2" goto VIEW_EXCLUSIONS
if "%OPTION%"=="3" goto END
echo Error: Opcion no valida. Presiona cualquier tecla...
pause >nul
goto MENU

rem ==============================================================================
rem SECCIÓN 3: SELECCIONAR UNIDAD USB
rem ==============================================================================

:SELECT_DRIVE
cls
echo.
echo ========================================================
echo           SELECCIONAR UNIDAD USB
echo ========================================================
echo.
echo Escribe la letra de tu unidad USB (ej: E, F, G, H):
set /p "USB_LETTER=Letra de la unidad: "

if not defined USB_LETTER (
    echo.
    echo Error: No se introdujo la letra. Abortando.
    pause
    goto MENU
)

set "DRIVE=%USB_LETTER%:"

if not exist "%DRIVE%\." (
    echo.
    echo Error: La unidad %DRIVE% no es accesible o no existe.
    pause
    goto MENU
)

echo.
echo Unidad seleccionada: %DRIVE%
timeout /t 1 /nobreak >nul
exit /b

rem ==============================================================================
rem OPCIÓN 1: OCULTAR TODO (excepto exclusiones)
rem ==============================================================================

:HIDE_ALL
call :SELECT_DRIVE
if errorlevel 1 goto MENU

cls
echo.
echo ========================================================
echo  OCULTANDO TODO EN %DRIVE% - Proceso en ejecucion...
echo ========================================================
echo.

echo Paso 1/4: Limpiando atributos previos...
attrib -h -s "%DRIVE%\*.*" /s /d >nul 2>nul

echo Paso 2/4: Protegiendo archivos y carpetas en lista de exclusion...
for /l %%i in (1,1,%EXCLUSIONS_COUNT%) do (
    if defined EXCLUSIONS[%%i] (
        set "ITEM=!EXCLUSIONS[%%i]!"
        if exist "%DRIVE%\!ITEM!" (
            attrib +h +s "%DRIVE%\!ITEM!" /s /d >nul 2>nul
            echo   [OK] Protegido: !ITEM! ^(y su contenido^)
        )
    )
)

echo Paso 3/4: Ocultando todos los archivos y carpetas...
attrib +h +s "%DRIVE%\*.*" /s /d >nul 2>nul

echo Paso 4/4: Restaurando visibilidad de exclusiones...
for /l %%i in (1,1,%EXCLUSIONS_COUNT%) do (
    if defined EXCLUSIONS[%%i] (
        set "ITEM=!EXCLUSIONS[%%i]!"
        if exist "%DRIVE%\!ITEM!" (
            attrib -h -s "%DRIVE%\!ITEM!" /s /d >nul 2>nul
        )
    )
)

echo.
echo ========================================================
echo  PROTECCION COMPLETADA
echo  Archivos ocultos: TODOS excepto exclusiones
echo ========================================================
echo.
pause
goto MENU

rem ==============================================================================
rem OPCIÓN 5: VER CONFIGURACIÓN DE EXCLUSIONES
rem ==============================================================================

:VIEW_EXCLUSIONS
cls
echo.
echo ╔════════════════════════════════════════════════════════════════╗
echo ║  LISTA DE EXCLUSIONES CONFIGURADAS                             ║
echo ╚════════════════════════════════════════════════════════════════╝
echo.

echo.
echo ════════════════════════════════════════════════════════════════
echo INSTRUCCIONES PARA EDITAR EXCLUSIONES:
echo ════════════════════════════════════════════════════════════════
echo.
echo 1. Abre este archivo en Bloc de Notas (clic derecho ^> Editar)
echo.
echo 2. Busca la sección "SECCIÓN 1: CONFIGURACIÓN DE EXCLUSIONES"
echo    (alrededor de la línea 20)
echo.
echo 3. Modifica las líneas que comienzan con "set EXCLUSIONS[X]="
echo    Ejemplos:
echo    - Archivo en raíz:        set "EXCLUSIONS[1]=archivo.exe"
echo    - Carpeta:                set "EXCLUSIONS[2]=MiCarpeta"
echo    - Archivo en carpeta:     set "EXCLUSIONS[3]=Carpeta\archivo.txt"
echo    - Varios niveles:         set "EXCLUSIONS[4]=A\B\C\archivo.doc"
echo.
echo 4. Aumenta EXCLUSIONS_COUNT si agregas más exclusiones
echo    Ejemplo: Si tienes 10 exclusiones, set "EXCLUSIONS_COUNT=10"
echo.
echo 5. Guarda el archivo y ya está listo para usar
echo.
echo ════════════════════════════════════════════════════════════════
echo.
pause
goto MENU

rem ==============================================================================
rem SECCIÓN 4: FINALIZACIÓN
rem ==============================================================================

:END
cls
echo.
echo ✓ USB Protection Manager - Sesión finalizada.
echo.
endlocal
exit /b