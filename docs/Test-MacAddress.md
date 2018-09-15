---
external help file: SysAdminToolbox-help.xml
Module Name: SysAdminToolbox
online version:
schema: 2.0.0
---

# Test-MacAddress

## SYNOPSIS
Test whether a string is a valid MAC-Adress

## SYNTAX

```
Test-MacAddress [-MacAddress] <String> [<CommonParameters>]
```

## DESCRIPTION
Test-MacAddress tests whether a given string (or array of strings) contains a valid MAC address in canonical writing,
as defined in IEEE 802.
The MAC address can be written upper- oder lowercase, as seperator, colons (:) or hyphens (-)
may be used.

## EXAMPLES

### BEISPIEL 1
```
Test-MacAddress 'aa:bb:cc:dd:ee:ff'
```

True

### BEISPIEL 2
```
'aa:bb:cc:dd:ee:ff' | Test-MacAddress
```

True

## PARAMETERS

### -MacAddress
Specifies the MAC-Address to be tested

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

### Boolean. Test-MacAddress returns whether the given String is a valid MAC-Adress
## NOTES

## RELATED LINKS
