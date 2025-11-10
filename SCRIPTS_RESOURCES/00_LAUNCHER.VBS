' ==============================================================================
' RUN_USB_PROTECTION_SILENT.VBS
' ==============================================================================
' Descripcion: Ejecuta USB_PROTECTION_MANAGER.BAT en background sin ventana
' ==============================================================================
' INSTRUCCIONES:
' 1. Coloca este archivo .VBS en la misma carpeta que USB_PROTECTION_MANAGER.BAT
' 2. Haz doble clic en este archivo .VBS para ejecutar
' 3. El archivo .BAT se ejecutara sin mostrar ventana de consola
' ==============================================================================

On Error Resume Next

' Crear objetos necesarios
Set objShell = CreateObject("WScript.Shell")
Set objFSO = CreateObject("Scripting.FileSystemObject")

' Obtener la unidad donde esta el script actual
scriptFullPath = WScript.ScriptFullName
scriptDrive = Left(scriptFullPath, 3)
scriptFolder = objFSO.GetParentFolderName(scriptFullPath)

' Rutas posibles del archivo BAT
batPath1 = scriptDrive & "USB_PROTECTION_MANAGER.BAT"
batPath2 = scriptFolder & "\USB_PROTECTION_MANAGER.BAT"
batPath3 = scriptDrive & "\USB_PROTECTION_MANAGER.BAT"

' Buscar el archivo BAT en diferentes ubicaciones
Dim batPath
batPath = ""

If objFSO.FileExists(batPath2) Then
    batPath = batPath2
ElseIf objFSO.FileExists(batPath1) Then
    batPath = batPath1
ElseIf objFSO.FileExists(batPath3) Then
    batPath = batPath3
End If

' Si encuentra el archivo, ejecutarlo en background
If batPath <> "" Then
    ' Chr(34) = comillas (")
    ' 0 = ejecutar sin mostrar ventana
    ' False = no esperar a que termine
    objShell.Run Chr(34) & batPath & Chr(34), 0, False
Else
    ' Si no lo encuentra, mostrar mensaje de error
    MsgBox "No se encontro USB_PROTECTION_MANAGER.BAT" & vbCrLf & vbCrLf & _
           "Asegurate de que:" & vbCrLf & _
           "1. El archivo .BAT esta en la misma carpeta que este .VBS" & vbCrLf & _
           "2. El nombre del archivo es exactamente: USB_PROTECTION_MANAGER.BAT" & vbCrLf & _
           "3. Ambos archivos estan en la raiz de la unidad USB o en la misma carpeta", _
           vbExclamation, "Error - Archivo no encontrado"
End If

' Limpiar objetos
Set objFSO = Nothing
Set objShell = Nothing