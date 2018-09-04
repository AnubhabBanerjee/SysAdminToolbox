
# Load Functions
. ($PSScriptRoot + "\functions\Disable-TunnelingProcotols.ps1")
. ($PSScriptRoot + "\functions\Test-SessionElevation.ps1")

# Export Module Member Functions
Export-ModuleMember -Function 'Disable-TunnelingProtocols'
Export-ModuleMember -Function 'Test-SessionElevation'