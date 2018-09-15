---
external help file: SysAdminToolbox-help.xml
Module Name: SysAdminToolbox
online version:
schema: 2.0.0
---

# ConvertTo-CamelCase

## SYNOPSIS

Converts a given string to CamelCase notation

## SYNTAX

```
ConvertTo-CamelCase [-String] <String> [[-Seperator] <String[]>] [-LowerCamelCase] [<CommonParameters>]
```

## DESCRIPTION

ConvertTo-CamelCase converts a given string to CamelCase notation.
By default, the UpperCamelCase notation will be used.
This can be changed to LowerCamelCase by using the Switch '-LowerCamelCase'

## EXAMPLES

### BEISPIEL 1

```
ConvertTo-CamelCase 'Report Template_Official'

ReportTemplateOfficial
```

### BEISPIEL 2

```
ConvertTo-CamelCase 'Report Template_Official' -Seperator ' '

ReportTemplate_official
```

### BEISPIEL 3

```
'Report Template_Official' | ConvertTo-CamelCase -Seperator ' ' -LowerCamelCase

reportTemplate_official
```

## PARAMETERS

### -String

The string that will be converted to CamelCase notation

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

### -Seperator

One or more chars/strings that will be used as seperator between words.
Default are whitespace ( ), unterscore (_), and hyphen (-)

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: @(' ','-','_')
Accept pipeline input: False
Accept wildcard characters: False
```

### -LowerCamelCase

If LowerCamelCase Switch is activated, the string will be returned with first lower first letter

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (<http://go.microsoft.com/fwlink/?LinkID=113216)>).

## INPUTS

## OUTPUTS

### String

ConvertTo-CamelCase will return the string in CamelCase Notation

## NOTES

## RELATED LINKS
