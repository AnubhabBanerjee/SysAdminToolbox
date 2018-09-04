function global:Test-SessionElevation {

    <#

    .SYNOPSIS
    Tests whether the current session is elevated

    .EXAMPLE
    PS C:>Test-SessionElevation
    True

    .NOTES
    Copied from https://ss64.com/ps/syntax-elevate.html
    #>
    Process {
        
        return ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")
    }
}
