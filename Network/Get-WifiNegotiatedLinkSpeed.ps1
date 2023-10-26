
while ($true) {
    $RX = (Get-NetAdapter -Name "WiFi" | select -ExpandProperty ReceiveLinkSpeed) / [System.Math]::Pow(10,6)
    $TX = (Get-NetAdapter -Name "WiFi" | select -ExpandProperty TransmitLinkSpeed) / [System.Math]::Pow(10,6)
    Write-Host `rRX: $RX Mbps TX: $TX Mbps -NoNewline
    Start-Sleep -Milliseconds 300
}
