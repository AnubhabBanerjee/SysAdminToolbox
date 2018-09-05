
(Get-ChildItem -Path ($PSScriptRoot + "\functions\*.ps1")) | ForEach-Object {
    . $_.FullName
    Export-ModuleMember -Function $_.BaseName
}