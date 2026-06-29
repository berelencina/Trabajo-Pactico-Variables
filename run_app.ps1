# Verificar si las variables están definidas o vacías
if ([string]::IsNullOrEmpty($env:APP_MODE) -or [string]::IsNullOrEmpty($env:DB_USER)) {
    Write-Warning "Falta configurar APP_MODE o DB_USER."
} else {
    Write-Output "Iniciando aplicación..."
    Write-Output "Modo de aplicación (APP_MODE): $env:APP_MODE"
    Write-Output "Usuario de Base de Datos (DB_USER): $env:DB_USER"
}