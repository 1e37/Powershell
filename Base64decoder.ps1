# Simple Powershell base64 decoder to deobfuscate shell scripts

$base64String = "suspicious_string"  # Replace this with your Base64 string
$decodedBytes = [System.Convert]::FromBase64String($base64String)
$decodedString = [System.Text.Encoding]::UTF8.GetString($decodedBytes)

$decodedString | Out-File "C:\users\$env:UserName\Analysis\decoded_string.txt"
