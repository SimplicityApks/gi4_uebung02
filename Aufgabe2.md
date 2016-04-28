## Aufgabe 2

1. Die Darstellung vom "Hello World!" im Speicher wäre (in Bytes getrennt):

48 65 6c 6c 6f 20 57 6f 72 6c 64 21 00

Die zugehörigen Speicheradressen sind wie durch C Pointer zu erkennen
aufsteigend und somit hat das letzte Byte 0x00 die höchste Speicheradresse.

2. Ganzzahlen

Tabelle mit von links nach rechts aufsteigenden Speicheradressen:

Zahl | Big-Endian   | Little-Endian
---- | ------------ | -------------
i    | DE AD BE EF  | EF BE AD DE
s    | 04 01        | 01 04
c    | 07           | 07

3. Variablenspeicherung (Little-Endian)

Da die Werte nicht schön sortiert sind und Optimierungen deaktiviert sind geht 
viel Platz verloren:

Byte: 00 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20
Wert: 07          00 FE FF FF 7F 00 20    23 01 56 04 00 10 00 00
Var:  index       avalue      short char  sarray      anothervalue
