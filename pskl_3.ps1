Add-Type -AssemblyName WindowsBase
Add-Type -AssemblyName PresentationCore

1..1000 | ForEach-Object {
  "I am at $_"
  $isDown = [Windows.Input.Keyboard]::IsKeyDown([System.Windows.Input.Key]::LeftShift)
  if ($isDown)
  {
    Write-Warning "ABORTED!!"
    break
  }

  Start-Sleep -Seconds 1
}