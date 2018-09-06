function Test-LDAPFilter {

    <#
    .SYNOPSIS
    Test whether a string is a valid LDAP Filter

    .DESCRIPTION
    Test-MacAddress tests whether a given string (or array of strings) contains a LDAP LDAPFilter

    .PARAMETER MacAddress
    Specifies the LDAP Filter to be tested   
    
    .OUTPUTS
    Boolean. Test-LDAPFilter returns whether the given String is a valid LDAP Filter

    .EXAMPLE
    C:\PS> Test-LDAPFilter '(&(Name=OFFICE1-S*)(objectClass=computer))'
    True

    .EXAMPLE
    C:\PS> '(&(Name=OFFICE1-S*)(objectClass=computer))' | Test-LDAPFilter
    True
    
    #>

    Param (
        [parameter(Mandatory=$true,
        ValueFromPipeline=$true)]
        [System.String]$LDAPFilter
        
    )

    Process {
        
        # Settings
        $LDAPFilterRegex = '(\s*\((?:[&|]\s*(?1)+|(?:!\s*(?1))|[a-zA-Z][a-zA-Z0-9-]*[<>~]?=[^()]*)\s*\)\s*)'

        # Processing
        $ValidRegex = ($LDAPFilter -match $LDAPFilterRegex)

        # Return Validness
        return $ValidRegex

    }

}