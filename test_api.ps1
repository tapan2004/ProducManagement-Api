$ErrorActionPreference = 'Stop'

Write-Host "=== POST /api/products ==="
$headers = @{"Content-Type"="application/json"}
$body = '{"name": "Test Product", "description": "A test product", "price": 99.99, "quantity": 10}'
$created = Invoke-RestMethod -Uri "http://localhost:8081/api/products" -Method POST -Headers $headers -Body $body
$created | ConvertTo-Json

$id = $created.id
Write-Host "`n=== GET /api/products/$id ==="
Invoke-RestMethod -Uri "http://localhost:8081/api/products/$id" -Method GET | ConvertTo-Json

Write-Host "`n=== PUT /api/products/$id ==="
$bodyUpdate = '{"name": "Test Product Updated", "description": "A test product updated", "price": 109.99, "quantity": 15}'
Invoke-RestMethod -Uri "http://localhost:8081/api/products/$id" -Method PUT -Headers $headers -Body $bodyUpdate | ConvertTo-Json

Write-Host "`n=== GET /api/products ==="
Invoke-RestMethod -Uri "http://localhost:8081/api/products" -Method GET | ConvertTo-Json

Write-Host "`n=== DELETE /api/products/$id ==="
Invoke-RestMethod -Uri "http://localhost:8081/api/products/$id" -Method DELETE
Write-Host "Deleted successfully."

Write-Host "`n=== GET /api/products ==="
Invoke-RestMethod -Uri "http://localhost:8081/api/products" -Method GET | ConvertTo-Json
