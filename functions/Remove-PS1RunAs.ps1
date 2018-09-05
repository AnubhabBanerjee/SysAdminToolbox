function global:Remove-PS1RunAs {
    <#
    .SYNOPSIS
    Removes "Run as Administrator" from the right-click menu for *.ps1-Files

    .EXAMPLE
    C:\> Remove-PS1RunAs
    #>

    Process {

        if ((Get-ChildItem -Path Registry::HKEY_CLASSES_ROOT\Microsoft.PowerShellScript.1\Shell).PSChildName -match "runas") {
            Remove-Item -Path Registry::HKEY_CLASSES_ROOT\Microsoft.PowerShellScript.1\Shell\runas -Recurse -Force | Out-Null
        }

    }
    
}