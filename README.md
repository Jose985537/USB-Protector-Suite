# 🔒 USB PROTECTOR SUITE - GUÍA RÁPIDA

![GitHub](https://img.shields.io/badge/GitHub-Jose985537-blue?logo=github)
![License](https://img.shields.io/badge/License-MIT-green)
![Windows](https://img.shields.io/badge/Windows-10%2B-blue?logo=windows)

## ¿QUÉ ES?

Herramientas simples para **OCULTAR** archivos en USB y **MOSTRARLOS** después.

- ✅ Rápido
- ✅ Simple
- ✅ Seguro
- ✅ **MÁS AVANZADO que Explorador de Windows**

---

## 🛠️ TECNOLOGÍAS USADAS

<img src="https://skillicons.dev/icons?i=windows,powershell,vscode,git,github" />

| Herramienta | Uso |
|-------------|-----|
| **Batch (.BAT)** | Scripts principales |
| **VBScript (.VBS)** | Ejecutor silencioso |
| **Windows CMD** | Comandos del sistema |
| **Git** | Control de versiones |

---

## 📦 ARCHIVOS QUE NECESITAS

| Archivo | Función | Estado |
|---------|---------|--------|
| **01_PROTECT_MANAGER.BAT** | Oculta archivos en USB | ✅ Requerido |
| **02_REVEAL_ALL.BAT** | Muestra archivos ocultos | ✅ Requerido |
| **03_SCAN_HIDDEN.BAT** | Busca archivos ocultos | ✅ Requerido |
| **00_LAUNCHER.VBS** | Ejecutor silencioso | ✅ Requerido |
| icon.ico | Icono (DE PRUEBA - puedes cambiar) | ⚠️ Opcional |
| autorun.inf | Autorun (DE PRUEBA - puedes cambiar) | ⚠️ Opcional |

---

## 🚀 PASO 1: COPIAR A USB

1. Copia **TODOS** estos archivos a tu USB
2. Copialos en la **RAÍZ** (no en carpetas)
3. ¡Listo!

---

## 🎯 PASO 2: CÓMO USAR

### Opción A: OCULTAR ARCHIVOS

```bash
1. Haz doble clic en: 01_PROTECT_MANAGER.BAT
2. Escribe letra de USB (ejemplo: E, F, G)
3. Presiona Enter
4. Elige: opción 1
5. ¡Los archivos se OCULTAN!
```

### Opción B: MOSTRAR ARCHIVOS

```bash
1. Haz doble clic en: 02_REVEAL_ALL.BAT
2. Escribe letra de USB
3. Presiona Enter
4. ¡TODOS los archivos aparecen!
```

### Opción C: BUSCAR OCULTOS

```bash
1. Haz doble clic en: 03_SCAN_HIDDEN.BAT
2. El programa BUSCA en todas las USB
3. Te dice DÓNDE hay ocultos
4. Presiona tecla para salir
```

---

## ⚙️ ¿CÓMO FUNCIONA TÉCNICAMENTE?

### Los atributos H + S

El script usa **atributos especiales** del sistema operativo:

| Atributo | Significado | Función |
|----------|-------------|---------|
| **H** | HIDDEN (Oculto) | El archivo no se ve en Explorador |
| **S** | SYSTEM (Sistema) | El archivo está protegido |

### Qué hace:

**Para OCULTAR:**
```batch
attrib +h +s archivo.txt
```
- ➕ AGREGA atributo H = el archivo se oculta
- ➕ AGREGA atributo S = el archivo se protege
- Resultado: **El archivo está en la USB pero NO se ve**

**Para MOSTRAR:**
```batch
attrib -h -s archivo.txt
```
- ➖ QUITA atributo H = deja de ser oculto
- ➖ QUITA atributo S = deja de estar protegido
- Resultado: **El archivo vuelve a ser visible**

### ¿Por qué es efectivo?

✅ Los archivos **realmente existen** en la USB
✅ Windows **simplemente no los muestra**
✅ Solo quien sabe cómo desocultarlos puede acceder
✅ Imposible encontrar si no tienes los scripts

---

## 📋 QUÉ HACE CADA SCRIPT

### 01_PROTECT_MANAGER.BAT
- ✅ Oculta **TODOS** los archivos de tu USB
- ✅ Los archivos NO se ven en el explorador
- ✅ **NO se eliminan**, están protegidos
- ✅ Puedes EXCLUIR archivos (que si se vean)

### 02_REVEAL_ALL.BAT
- ✅ Muestra **TODOS** los archivos ocultos
- ✅ Los archivos vuelven a ser visibles
- ✅ **NO borra nada**
- ✅ Es lo **opuesto** a ocultar

### 03_SCAN_HIDDEN.BAT
- ✅ Busca en **TODAS** las USB conectadas
- ✅ Te dice **DÓNDE** hay archivos ocultos
- ✅ Te muestra la **RUTA** de los ocultos
- ✅ **NO cambia nada**, solo busca

### 00_LAUNCHER.VBS
- ✅ Ejecuta los scripts en **BACKGROUND**
- ✅ **Sin ventana de consola** visible
- ✅ Función silenciosa

---

## 🔐 CÓMO EXCLUIR ARCHIVOS

**¿Quiero que algunos archivos SIEMPRE se vean?**

### Pasos:

1. Abre con Bloc de Notas: `01_PROTECT_MANAGER.BAT`
2. Busca: `CONFIGURACION DE EXCLUSIONES`
3. Modifica estas líneas:
   ```batch
   set "EXCLUSIONS[1]="
   set "EXCLUSIONS[2]="
   ```
4. **Agrega tu archivo:**
   ```batch
   set "EXCLUSIONS[1]=MiArchivo.txt"
   set "EXCLUSIONS[2]=MiCarpeta"
   ```
5. **Guarda** el archivo
6. ¡Listo! Esos archivos **NO se ocultarán**

### Ejemplos:

```batch
- Un archivo:       set "EXCLUSIONS[1]=documento.docx"
- Una carpeta:      set "EXCLUSIONS[2]=MisCarpetas"
- En subcarpeta:    set "EXCLUSIONS[3]=Datos\importante.txt"
- Varios niveles:   set "EXCLUSIONS[4]=A\B\C\archivo.doc"
```

---

## ❓ PREGUNTAS FRECUENTES

### P: ¿Se perdieron mis archivos?
**R:** ¡NO! Los archivos están ocultos. Usa `02_REVEAL_ALL.BAT`

### P: ¿Puedo recuperar archivos ocultos?
**R:** ¡SÍ! Ejecuta `02_REVEAL_ALL.BAT` y aparecen de nuevo

### P: ¿Es seguro ocultar archivos?
**R:** ¡SÍ! No borra nada, solo los esconde

### P: ¿Se ven todos ocultos?
**R:** Sí, a menos que EXCLUYAS algunos

### P: ¿Dónde se guardan?
**R:** En la misma USB, solo no se ven

### P: ¿Funciona en otra USB?
**R:** ¡SÍ! Funciona en cualquier USB o disco

### P: ¿Necesito admin?
**R:** En algunos Windows sí. Abre como Administrador

### P: ¿Este método es diferente a Explorador?
**R:** ¡SÍ! Es **MÁS AVANZADO:**
- 📁 Explorador = solo esconde
- 🔐 Este script = **PROTEGE realmente**
- 📁 Explorador = cualquiera lo puede mostrar
- 🔐 Este script = solo tú sabes cómo desocultarlo
- 📁 Explorador = oculto superficial
- 🔐 Este script = oculto profesional

---

## ⚡ PASO A PASO RÁPIDO (RESUMEN)

### Para OCULTAR:
```
1. Copia los .BAT a USB
2. Haz doble clic en 01_PROTECT_MANAGER.BAT
3. Escribe letra de USB
4. Elige opción: 1
5. ¡LISTO! Archivos ocultos
```

### Para MOSTRAR:
```
1. Haz doble clic en 02_REVEAL_ALL.BAT
2. Escribe letra de USB
3. ¡LISTO! Archivos visibles
```

---

## 🚨 ERRORES COMUNES

### Error: "No se esperaba : en este momento"
**Solución:**
1. Abre Bloc de Notas
2. Guarda VACÍO como: `test.bat`
3. Si se crea = problema del archivo
4. Descarga los .BAT nuevamente

### Error: "Acceso denegado"
**Solución:**
1. Abre el .BAT como **ADMINISTRADOR**
2. Clic derecho > Ejecutar como administrador

### No veo los archivos ocultos
**Solución:**
1. Ejecuta `03_SCAN_HIDDEN.BAT` para buscar
2. Si encuentra = están ocultos
3. Ejecuta `02_REVEAL_ALL.BAT` para mostrar

---

## 📝 SOBRE LOS ARCHIVOS: icon.ico Y autorun.inf

### ⚠️ ESTOS SON DE PRUEBA

#### icon.ico
- 🖼️ Es el **icono** que se muestra en la USB
- 🔄 **PUEDES CAMBIAR** por tu propio icono
- 📋 Para usar tu icono:
  ```
  1. Ten tu archivo .ico
  2. Renombralo a: icon.ico
  3. Reemplaza el que viene en la carpeta
  ```

#### autorun.inf
- ⚙️ Es la **configuración** de autorun de la USB
- 🔄 **PUEDES CAMBIAR** por tu propia configuración
- 📋 Para cambiar:
  ```
  1. Abre autorun.inf con Bloc de Notas
  2. Modifica lo que necesites
  3. Guarda
  4. ¡Listo!
  ```

#### Nota importante:
```
❌ Si no necesitas autorun = puedes ELIMINAR este archivo
✅ No afecta el funcionamiento de los scripts
```

---

## ⚠️ ARCHIVOS ESPECIALES

### "System Volume Information"
```
❌ NO es virus
❌ NO lo toques
❌ Es del SISTEMA Windows
✅ Normal que aparezca
```

---

## 💡 SOPORTE RÁPIDO

Si algo no funciona:

```
1. Guarda tu USB (copia de seguridad)
2. Ejecuta 02_REVEAL_ALL.BAT (muestra todo)
3. Intenta de nuevo
```

⚠️ **IMPORTANTE:** ¡Siempre haz copia de seguridad antes!

---

## 📁 ESTRUCTURA DEL PROYECTO

```
USB_PROTECTOR_SUITE/
├── 01_PROTECT_MANAGER.BAT      (Ocultar archivos)
├── 02_REVEAL_ALL.BAT           (Mostrar archivos)
├── 03_SCAN_HIDDEN.BAT          (Escanear ocultos)
├── 00_LAUNCHER.VBS             (Ejecutor silencioso)
├── SCRIPTS_RESOURCES/
│   ├── icon.ico                (Icono de prueba)
│   └── autorun.inf             (Config autorun)
└── DOCS/
    ├── README.md               (Este archivo)
    └── README.txt              (Versión texto)
```

---

## 📊 RESUMEN FINAL

| Acción | Script | Resultado |
|--------|--------|-----------|
| 🔒 Ocultar | 01_PROTECT_MANAGER.BAT | Archivos no visibles |
| 👁️ Mostrar | 02_REVEAL_ALL.BAT | Archivos visibles |
| 🔍 Buscar | 03_SCAN_HIDDEN.BAT | Detecta ocultos |
| 🚀 Ejecutar | 00_LAUNCHER.VBS | Sin ventana |

---

## 🌐 ENLACES ÚTILES

- 🐙 [GitHub Repository](https://github.com/Jose985537/USB-Protector-Suite)
- 📖 [Documentación](./DOCS/)
- 💬 [Issues](https://github.com/Jose985537/USB-Protector-Suite/issues)

---

## 📄 LICENCIA

Este proyecto está bajo licencia MIT. Ver detalles en LICENSE.

---

## 👨‍💻 AUTOR

**Jose985537**
- 🐙 GitHub: [@Jose985537](https://github.com/Jose985537)
- 📧 Email: tu_email@gmail.com

---

## ⭐ SI TE AYUDÓ, DALE UNA ESTRELLA

```
Si este proyecto te fue útil, por favor dale una ⭐ en GitHub
```

---

**¡Listo! Ya puedes empezar a usar USB PROTECTOR SUITE** 🚀

Última actualización: Noviembre 2025
