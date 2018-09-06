function Add-PS1RunAs {
    <#
    .SYNOPSIS
    Adds "Run as Administrator" to the right-click menu for *.ps1-Files
    
    .EXAMPLE
    C:\> Remove-PS1RunAs
    #>

    Process {

        # Add Registry Key
        $Value = "powershell.exe ""-Command"" ""if((Get-ExecutionPolicy ) -ne 'AllSigned') { Set-ExecutionPolicy -Scope Process Bypass }; & '%1'"""
        New-Item -Path Registry::HKEY_CLASSES_ROOT\Microsoft.PowerShellScript.1\Shell\runas\command -Force | Out-Null
        New-ItemProperty -Path Registry::HKEY_CLASSES_ROOT\Microsoft.PowerShellScript.1\Shell\runas\command -Name '(default)' -Value $Value | Out-Null

    }
    
}