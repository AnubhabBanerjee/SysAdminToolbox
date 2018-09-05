function global:Add-PS1RunAs {
    <#
    .SYNOPSIS
    Adds "Run as Administrator" to the right-click menu for *.ps1-Files
    #>

    Process {

        # Add Registry Key
        $Value = "powershell.exe ""-Command"" ""if((Get-ExecutionPolicy ) -ne 'AllSigned') { Set-ExecutionPolicy -Scope Process Bypass }; & '%1'"""
        New-Item -Path Registry::HKEY_CLASSES_ROOT\Microsoft.PowerShellScript.1\Shell\runas\command -Force
        New-ItemProperty -Path Registry::HKEY_CLASSES_ROOT\Microsoft.PowerShellScript.1\Shell\runas\command -Name '(default)' -Value $Value

    }
}