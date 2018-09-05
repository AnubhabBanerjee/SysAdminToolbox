
$FunctionFiles = (Get-ChildItem -Path ($PSScriptRoot + "\functions\*.ps1"))

# Load Functions
$FunctionFiles | ForEach-Object {. $_.FullName}

# Export Module Member Functions
$FunctionFiles | ForEach-Object { Export-ModuleMember -Function $_.BaseName }