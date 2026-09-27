# Taqdimotni PowerPoint orqali PDF'ga eksport qiladi (docs/ ichiga).
# Ishga tushirish:  powershell -ExecutionPolicy Bypass -File tools\export_pdf.ps1
# Talab: kompyuterda Microsoft PowerPoint o'rnatilgan bo'lishi kerak.

$root = Split-Path -Parent $PSScriptRoot
$name = "Biznes-va-tadbirkorlik-Business-Model-Canvas-va-BPM"
$src  = Join-Path $root "$name.pptx"
$dst  = Join-Path $root "docs\$name.pdf"

$pp = New-Object -ComObject PowerPoint.Application
try {
    $p = $pp.Presentations.Open($src, $true, $false, $false)  # faqat o'qish, oynasiz
    $p.SaveAs($dst, 32)                                       # 32 = ppSaveAsPDF
    $p.Close()
    Write-Host "PDF tayyor: $dst"
} finally {
    $pp.Quit()
    [System.Runtime.Interopservices.Marshal]::ReleaseComObject($pp) | Out-Null
}
