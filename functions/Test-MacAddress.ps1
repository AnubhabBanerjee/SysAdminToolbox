function global:Test-MacAddress {

    <#
    .SYNOPSIS
    Test whether a string is a valid MAC-Adress

    .DESCRIPTION
    Test-MacAddress tests whether a given string (or array of strings) contains a valid MAC address in canonical writing,
    as defined in IEEE 802. The MAC address can be written upper- oder lowercase, as seperator, colons (:) or hyphens (-)
    may be used. 

    .PARAMETER MacAddress
    Specifies the MAC-Address to be tested   
    
    .OUTPUTS
    Boolean. Test-MacAddress returns whether the given String is a valid MAC-Adress

    .EXAMPLE
    C:\PS> Test-MacAddress 'aa:bb:cc:dd:ee:ff'
    True

    .EXAMPLE
    C:\PS> 'aa:bb:cc:dd:ee:ff' | Test-MacAddress
    True
    
    #>

    Param (
        [parameter(Mandatory=$true,
        ValueFromPipeline=$true)]
        [System.String]$MacAddress
        
    )

    Process {
        
        # Settings
        $MacAdressRegex = '([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})'

        # Processing
        $ValidMac = ($MacAddress -match $MacAdressRegex)

        # Return Validness
        return $ValidMac

    }

}