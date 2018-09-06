function Test-DistinguishedName {

    <#
    .SYNOPSIS
    Test whether a string is a valid LDAP DistinguishedName

    .DESCRIPTION
    Test-MacAddress tests whether a given string (or array of strings) contains a LDAP DistinguishedName

    .PARAMETER MacAddress
    Specifies the DistinguishedName to be tested   
    
    .OUTPUTS
    Boolean. Test-DistinguishedName returns whether the given String is a valid LDAP DistinguishedName

    .EXAMPLE
    C:\PS> Test-DistinguishedName 'OU=Microsoft Exchange Security Groups,DC=company,DC=example,DC=com'
    True

    .EXAMPLE
    C:\PS> 'OU=Microsoft Exchange Security Groups,DC=company,DC=example,DC=com' | Test-DistinguishedName
    True
    
    #>

    Param (
        [parameter(Mandatory=$true,
        ValueFromPipeline=$true)]
        [System.String]$DistinguishedName
        
    )

    Process {
        
        # Settings
        $DistinguishedNameRegex = '(?:(?<cn>CN=(?<name>[^,]*)),)?(?:(?<path>(?:(?:CN|OU)=[^,]+,?)+),)?(?<domain>(?:DC=[^,]+,?)+)'

        # Processing
        $ValidRegex = ($DistinguishedName -match $DistinguishedNameRegex)

        # Return Validness
        return $ValidRegex

    }

}