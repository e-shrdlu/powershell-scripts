Add-Type -AssemblyName System.Windows.Forms
while ($true)
{
  $Pos = [System.Windows.Forms.Cursor]::Position
  $x = if ($pos.X -gt 0) {$pos.X % 1919} else {1920}
  $y = if ($pos.Y -gt 0) {$pos.Y % 1079} else {1080}
  echo $x $y
  [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($x, $y)
  Start-Sleep -Milliseconds 10
}
