do
{
    # wait for a key to be available:
    if ([Console]::KeyAvailable)
    {
        # read the key, and consume it so it won't
        # be echoed to the console:
        $keyInfo = [Console]::ReadKey($true)
        # exit loop
        Write-Output $keyInfo.Key
        # break
    }

    # write a dot and wait a second
    # Write-Host '.' -NoNewline
    Start-Sleep -Seconds 0.2

} while ($true)

# emit a new line
Write-Host

# show the received key info object:
$keyInfo