## Aufgabe 1

2. Die Headerdateien der auf dem Betriebssystem installierten Libraries müssen
bei der Abhängigkeitsbetrachtung nicht beachtet werden, da sie vom Compiler
automatisch auf den vom System festgelegten Pfaden gefunden und eingebunden
werden. Diese werden selten aktualisiert und nicht vom Anwender geändert und
brauchen daher nicht von make beachtet werden.

3. main.c ist durch die benutzte Funktion von input.c (bzw input.o) abhängig und
hat diese somit in ihrer Abhängigkeitsliste. Damit wird main.o auch bei
Änderungen an input.c neu kompiliert.

5. Würde make nicht mittels .PHONY mitgeteilt, dass es die Ziele clean und
install immer neu bauen muss würden diese nicht ausgeführt, wenn es Dateien mit 
ihren Namen im Ordner gäbe.
