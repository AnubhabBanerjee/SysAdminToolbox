function global:Disable-TunnelingProtocols {

    <#
    .SYNOPSIS
    Disabled the tunneling protocols Teredo, Isatap and 6to4

    .EXAMPLE
    
    #>

    Process {
        if ((Get-NetIsatapConfiguration).State -eq 'Disabled') {
            Set-NetIsatapConfiguration -State Disabled
        }
        if ((Get-NetTeredoConfiguration).Type -ne 'Disabled') {
            Set-NetTeredoConfiguration -Type Disabled
        }
        if ((Get-Net6to4Configuration).State -ne 'Disabled') {
            Set-Net6to4Configuration -State Disabled
        }

    }
}