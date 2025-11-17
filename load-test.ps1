# Duração do teste em minutos
$durationMinutes = 2
$endTime = (Get-Date).AddMinutes($durationMinutes)

# Quantidade de requisições simultâneas por "batch"
$requestsPerBatch = 20

# URL da sua API no Kubernetes
$apiUrl = "http://localhost:30080/"

Write-Host "Iniciando teste de carga para $durationMinutes minutos..."

while ((Get-Date) -lt $endTime) {
    1..$requestsPerBatch | ForEach-Object {
        Start-Job { Invoke-WebRequest -Uri $using:apiUrl -UseBasicParsing | Out-Null }
    }
    # Espera 1 segundo antes do próximo batch
    Start-Sleep -Seconds 1
}

Write-Host "Teste de carga finalizado."
