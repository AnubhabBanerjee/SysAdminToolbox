---
external help file: SysAdminToolbox-help.xml
Module Name: SysAdminToolbox
online version:
schema: 2.0.0
---

# Test-DistinguishedName

## SYNOPSIS
Test whether a string is a valid LDAP DistinguishedName

## SYNTAX

```
Test-DistinguishedName [-DistinguishedName] <String> [<CommonParameters>]
```

## DESCRIPTION
Test-MacAddress tests whether a given string (or array of strings) contains a LDAP DistinguishedName

## EXAMPLES

### BEISPIEL 1
```
Test-DistinguishedName 'OU=Microsoft Exchange Security Groups,DC=company,DC=example,DC=com'
```

True

### BEISPIEL 2
```
'OU=Microsoft Exchange Security Groups,DC=company,DC=example,DC=com' | Test-DistinguishedName
```

True

## PARAMETERS

### -DistinguishedName
{{Fill DistinguishedName Description}}

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

### Boolean. Test-DistinguishedName returns whether the given String is a valid LDAP DistinguishedName
## NOTES

## RELATED LINKS
