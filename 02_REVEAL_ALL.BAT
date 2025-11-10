@echo off
chcp 65001 >nul
setlocal

echo =====================================================
echo     RESTAURAR ARCHIVOS OCULTOS EN UNIDAD USB
echo =====================================================
echo.
echo Este script mostrará todos los archivos ocultos o del sistema
echo que fueron ocultados en tu memoria USB por virus o procesos manuales.
echo.
echo Detectando unidades USB conectadas...
echo.

rem --- Mostrar solo unidades USB válidas ---
for /f "skip=1 tokens=1" %%a in ('wmic logicaldisk where "drivetype=2" get deviceid 2^>nul') do (
    if not "%%a"=="" if "%%a" neq "DeviceID" (
        set "unidad=%%a"
        echo Unidad detectada: %%a
    )
)

echo.
set /p "usb=Escribe solo la letra de la unidad (ejemplo E): "
if "%usb%"=="" exit /b

set "usb=%usb%:"
if not exist "%usb%\" (
    echo.
    echo ⚠️  La unidad %usb% no existe. Verifica la letra e inténtalo de nuevo.
    pause
    exit /b
)

echo.
echo Restaurando atributos de los archivos en %usb% ...
attrib -h -s "%usb%\*.*" /s /d >nul 2>nul

echo.
echo ✅ Archivos visibles nuevamente en %usb%
echo.
pause
exit
