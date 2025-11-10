@echo off
rem ==============================================================================
rem SCAN_HIDDEN_FILES.BAT
rem ==============================================================================
rem Funcion: Escanea unidades para detectar archivos OCULTOS con attrib -h
rem ==============================================================================

setlocal enabledelayedexpansion
cls

echo.
echo ========================================================
echo       ESCANER DE ARCHIVOS OCULTOS - USB y DISCOS
echo ========================================================
echo.

set "TOTAL_HIDDEN=0"
set "FOUND_ANY=0"

rem Escanear unidades D a Z
for %%L in (D E F G H I J K L M N O P Q R S T U V W X Y Z) do (
    if exist "%%L:\." (
        call :CHECK_DRIVE %%L
    )
)

echo.
echo ========================================================
echo RESUMEN DEL ESCANEO
echo ========================================================
echo.

if %FOUND_ANY% equ 0 (
    echo No se encontraron unidades con archivos ocultos
) else (
    echo Total de archivos OCULTOS encontrados: %TOTAL_HIDDEN%
    echo.
    echo ADVERTENCIA: Se detectaron archivos ocultos
    echo Usa USB_PROTECTION_MANAGER.BAT para mostrarlos o gestionarlos
)

echo.
pause
endlocal
exit /b

rem ==============================================================================
rem FUNCION: VERIFICAR UNIDAD - USA attrib -h PARA BUSCAR OCULTOS
rem ==============================================================================

:CHECK_DRIVE
setlocal enabledelayedexpansion
set "CURRENT_DRIVE=%1"
set "TEMP_FILE=%temp%\hidden_list_%RANDOM%.txt"
set "COUNT=0"

rem Obtener SOLO archivos ocultos con attrib -h -s
attrib -h "%CURRENT_DRIVE%:\*" /s /d >"%TEMP_FILE%" 2>nul

rem Contar lineas del archivo (cada linea es un archivo oculto)
for /f "tokens=*" %%F in ('type "%TEMP_FILE%"') do (
    set /a "COUNT+=1"
    if !COUNT! equ 1 (
        echo.
        echo [ENCONTRADO] Unidad %CURRENT_DRIVE%:
        echo             Archivos/carpetas OCULTOS:
        echo.
    )
    echo %%F
)

if %COUNT% gtr 0 (
    set /a "TOTAL_HIDDEN+=%COUNT%"
    set "FOUND_ANY=1"
    echo.
    echo ========================================================
    echo.
)

rem Eliminar archivo temporal
del /q "%TEMP_FILE%" 2>nul

endlocal & set "TOTAL_HIDDEN=%TOTAL_HIDDEN%" & set "FOUND_ANY=%FOUND_ANY%"
exit /b