🔒 USB PROTECTOR SUITE - GUÍA RÁPIDA 💻

¿QUÉ ES?

Herramientas simples para OCULTAR archivos en USB y MOSTRARLOS después.

✅ Rápido ⚡

✅ Simple 👍

✅ Seguro 🛡️

✅ MÁS AVANZADO que Explorador de Windows ⚙️

📦 ARCHIVOS QUE NECESITAS

Archivo

Función

01_PROTECT_MANAGER.BAT

Oculta archivos en USB 👻

02_REVEAL_ALL.BAT

Muestra archivos ocultos ✨

03_SCAN_HIDDEN.BAT

Busca archivos ocultos 🔎

icon.ico

Icono (DE PRUEBA - puedes cambiar) 🖼️

autorun.inf

Autorun (DE PRUEBA - puedes cambiar) 🧭

🚀 PASO 1: COPIAR A USB

Copia TODOS estos archivos a tu USB 💾

Cópialos en la RAÍZ (no en carpetas) 📁

¡Listo! ✅

🎯 PASO 2: CÓMO USAR

Opción A: OCULTAR ARCHIVOS 🙈

Haz doble clic en: 01_PROTECT_MANAGER.BAT 🖱️

Escribe letra de USB (ejemplo: E, F, G) ⌨️

Presiona Enter ↵️

Elige: opción 1 🔢

¡Los archivos se OCULTAN! 🧙

Opción B: MOSTRAR ARCHIVOS 👀

Haz doble clic en: 02_REVEAL_ALL.BAT 🖱️

Escribe letra de USB ⌨️

Presiona Enter ↵️

¡TODOS los archivos aparecen! 🎉

Opción C: BUSCAR OCULTOS 🧐

Haz doble clic en: 03_SCAN_HIDDEN.BAT 🔍

El programa BUSCA en todas las USB 🚀

Te dice DÓNDE hay ocultos 📍

Presiona tecla para salir 🛑

⚙️ ¿CÓMO FUNCIONA TÉCNICAMENTE?

Los atributos H + S

Atributo

Significado

Función

H

HIDDEN (Oculto)

El archivo no se ve en Explorador 👻

S

SYSTEM (Sistema)

El archivo está protegido 🛡️

Acción Ocultar: attrib +h +s archivo.txt
Acción Mostrar: attrib -h -s archivo.txt

🔐 CÓMO EXCLUIR ARCHIVOS (Whitelist)

Pasos:

Abre con Bloc de Notas: 01_PROTECT_MANAGER.BAT 📝

Busca: CONFIGURACION DE EXCLUSIONES 🎯

Agrega tu archivo (Ejemplo):

set "EXCLUSIONS[1]=MiArchivo.txt"
set "EXCLUSIONS[2]=MiCarpeta"


Guarda el archivo ✅

¡Listo! Esos archivos NO se ocultarán 🥳

Ejemplo

Código

Un archivo

set "EXCLUSIONS[1]=documento.docx"

Una carpeta

set "EXCLUSIONS[2]=MisCarpetas"

❓ PREGUNTAS FRECUENTES (FAQ)

P: ¿Se perdieron mis archivos? R: ¡NO! 🙅‍♂️ Usa 02_REVEAL_ALL.BAT ✨

P: ¿Puedo recuperar archivos ocultos? R: ¡SÍ! Ejecuta 02_REVEAL_ALL.BAT 🎉

P: ¿Necesito admin? R: En algunos Windows sí. Abre como Administrador 🔑

⚡ PASO A PASO RÁPIDO (RESUMEN)

Acción

Script

Icono

🔒 Ocultar

01_PROTECT_MANAGER.BAT

🙈

👁️ Mostrar

02_REVEAL_ALL.BAT

👀

🔍 Buscar

03_SCAN_HIDDEN.BAT

🔎

¡Listo! Ya puedes empezar a usar USB PROTECTOR SUITE 🚀
