$pasta = '\\oen-srv-file\projectwise$\OFs em Desenvolvimento\P.0709847.1.01 - VALE-SILICATO TUBARÃO-CBMT-PI'
$desktop = [Environment]::GetFolderPath('Desktop')

$arquivos = Get-ChildItem -Path $pasta -Filter *.e3s -Recurse -File -ErrorAction SilentlyContinue

$arquivos | Select-Object FullName, Length, LastWriteTime | Format-Table -AutoSize
Write-Host "`nTotal encontrado: $($arquivos.Count)"

$arquivos | Select-Object -ExpandProperty FullName | Out-File "$desktop\lista_e3s.txt"