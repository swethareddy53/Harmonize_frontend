' Elevate.vbs
Set objShell = CreateObject("Shell.Application")
Set objFSO = CreateObject("Scripting.FileSystemObject")

' Relative path to the file
relativePath = ".\ca.pem"

' Get the absolute path
absolutePath = objFSO.GetAbsolutePathName(relativePath)

' Display the absolute path
WScript.Echo "Absolute Path: " & absolutePath


objShell.ShellExecute "cmd.exe", "/c timeout /t 5 && certutil.exe -addstore root """ & absolutePath & """ && timeout /t 5", "", "runas", 1
