
$FunctionFiles = (Get-ChildItem -Path ($PSScriptRoot + "\functions\*.ps1"))

# Load Functions
$FunctionFiles | ForEach-Object {. $_.FullName}

# Export Module Member Functions
Export-ModuleMember -Function * -Alias *