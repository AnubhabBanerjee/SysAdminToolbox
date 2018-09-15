---
external help file: SysAdminToolbox-help.xml
Module Name: SysAdminToolbox
online version:
schema: 2.0.0
---

# Convert-MacToIPv6

## SYNOPSIS
Converts a given MAC address to a link-local IPv6 address

## SYNTAX

```
Convert-MacToIPv6 [-MacAddress] <String> [<CommonParameters>]
```

## DESCRIPTION
{{Fill in the Description}}

## EXAMPLES

### BEISPIEL 1
```
Convert-MacToIPv6 'aa:bb:cc:dd:ee:ff'
```

fe80::a8bb:ccff:fedd:eeff

### BEISPIEL 2
```
Convert-MacToIPv6 'de:ad:de:ad:be:ef'
```

fe80::dcad:deff:fead:beef

## PARAMETERS

### -MacAddress
Specifies the MAC-Address to be converted

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### System.String. Convert-MacToIPv6 returns the converted link-local IPv6 address as a string
## NOTES

## RELATED LINKS
