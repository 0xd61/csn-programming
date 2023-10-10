---
theme: samuu
_class: lead
paginate: true
transition: fade
backgroundColor: #f2fcfa
backgroundPosition: 30rem -20%
backgroundAttachmet: fixed
backgroundImage: url('https://www.samuu.srl/logo.svg')
title: CSN Programming
description: Colegio Segundario Neuland Programming Course
author: Daniel Glinka
auto-scaling: false
style: |
  :root {
    --color-background: #fff;
    --color-foreground: #202020;
    --color-highlight: #00b89f;
    --color-dimmed: #3a3a3a;
  }
---
<!-- paginate: false -->
<!-- backgroundAttachment: contained -->

![bg left:50% 60%](https://www.samuu.srl/samuu_tech_dark.svg)

# **Willkommen**
Software Entwicklung

---

<!-- paginate: true --> 

# Wo wird Software verwendet?

* Roboter, IoT
* Personal Computer
* Server

---

# Was ist Software?

* Liste von Anweisungen und Daten
* Programme/Prozesse, Prozeduren, Routinen, Algorithmen
* Systeme, Programme, Entwickler Programme
* Open Source Software, Closed Source Software, Freeware, Shareware

---

# Was macht ein Computer Programm?

* Input
* Verarbeitung
* Output

---

# Sprachen

* C, Assembly
* Go, Rust
* Python
* Java, C++

---

# Assembly Hello World

<style scoped>
pre {
   font-size: 0.7rem;
}
</style>

```asm
section .text

section .data
msg db  'Hello, world!',0xa ;our dear string
len equ $ - msg         ;length of our dear string

section .text

; linker puts the entry point here:
_start:

; Write the string to stdout:
    mov edx,len ;message length
    mov ecx,msg ;message to write
    mov ebx,1   ;file descriptor (stdout)
    mov eax,4   ;system call number (sys_write)
    int 0x80    ;call kernel

; Exit via the kernel:
    mov ebx,0   ;process' exit code
    mov eax,1   ;system call number (sys_exit)
    int 0x80    ;call kernel - this interrupt won't return
```

---

# C Hello World

```c
#include <stdio.h>
  
int main() {
    printf("Hello World\n");
    return 0;
}
```

---

# Golang Hello World

```go
package main
  
import "fmt"
  
func main() {
    fmt.Println("Hello World")
}
```

---

# Python Hello World

```python
print("Hello World\n")
```

---

# Java Hello World

```java
class HelloWorld
{
    public static void main(String args[])
    {
        System.out.println("Hello World");
    }
}
```

---

# [Processing](https://processing.org)

Processing is a flexible software sketchbook and a language for learning how to code.

```java
println("Hello World");
```

---

# Installation

- IDE (Integrated Development Environment)
- https://processing.org/download

---

# Dokumentation

- [Referenz](https://processing.org/reference)
- [Examples](https://processing.org/examples)
- [IDE Info](https://processing.org/environment)

---

# Debugging

* Analyse vom Code
* Fehler finden
* Wissen, was passiert
* Schritt für Schritt durch den Code gehen

---

# Whitespace und Kommentare

Unsere wichtigste Aufgabe als guter Software Entwickler ist es verständlichen Code zu schreiben.

<style scoped>
pre {
   font-size: 0.6rem;
}
</style>

```java
/*
 * Dieses Programm ist ein kleines Beispiel für Processing.
 * Es öffnet ein Fenster, welches eine von einem Ursprungspunkt
 * zu Maus Position eine Line zeichet.
 */

// Setup wird am Anfang des Programms einmal ausgeführt
void setup() {
  size(400, 400);
  stroke(255);
  background(192, 64, 0);
}

// Draw wird bei jedem Frame ausgeführt
void draw() {
  line(150, 25, mouseX, mouseY);
}
```

---

# Übung 1

## Erstes Programm

Schreibe ein Programm, das in der Konsole folgenden Text ausgibt:

```java

Three-Two-One - Takeoff!

```

---

## Testfall 1.1

Kontrolliere, ob die geforderte Ausgabe auf der Konsole ausgegeben wird

---

# Übung 2

## Beschreibung

In dieser Übung wollen wir ein Muster in die Konsole schreiben. Dafür werden bestimmte Zeichen so oft hintereinander und untereinander geschrieben, bis sich daraus die geforderte Form ergibt.

---

## Aufgabenstellung 2.1

Schreibe ein Programm, dass das folgende Muster auf der Konsole ausgibt:

```java
      *
     ***
    *****
   *******
  *********
 ***********
*************
     ***
```

---

## Tipp 2.1

Du kannst die Funktion println(), Leerzeichen und * verwenden.

---

## Testfall 2.1

Die Ausgabe auf der Konsole entspricht dem vorgegeben Muster.

---

## Testfall 2.2

Gib diese weiteren Muster auf der Konsole aus:

```java
Sanduhr: *****   Pizzastück: **********   Diamant:   **
          ***                  *      *              *  * 
           *                    *   *               *    *
          ***                    * *                 *  * 
         *****                    *                   ** 
```

---

# Übung 3

## Perlenkette

Wir wollen die folgende Perlenkette programmieren:

![w:550 center](https://raw.githubusercontent.com/0xd61/csn-programming/main/assets/aufgabe3_1.png)

Die Perlenkette besteht aus 5 Kreisen mit schwarzem Rand und weißer Füllung.

---

## Aufgabenstellung 3.1

Programmiere das angegebene Bild mithilfe der grafischen Grundelemente von Processing.

Du kannst das Template auf der nächsten Folie nutzen.

---

## Tipp 3.1

Schaue dir dazu die Funktionen [size](https://processing.org/reference/size_.html) und [ellipse](https://processing.org/reference/ellipse_.html) in der Referenz an.

```java
// Die Größe des grafischen Ausgabefensters wird auf 550 Pixel
// in der Breite und 150 Pixel in der Höhe festgelegt.
size(550, 150);
// Die Perlen werden durch vier Kreise von links nach rechts gezeichnet.
// Zum Zeichnen von Kreisen stellt Processing keine explizite Anweisung
// zur Verfügung, zum Zeichnen von Ellipsen aber schon. Ellipsen haben
// zwei Durchmesser: einen für die Breite und einen für die Höhe der
// Ellipse. Sind beide Durchmesser gleich, ergibt sich ein Kreis.
// Vier Kreise mit 100 Pixel Durchmesser
ellipse(75, 70, 100, 100);
```

---

## Testfall 3.1

Wenn deine Ausgabe (Größe, Abstand und Farbe) dem Bild auf der Vorgabe entspricht, hast du alles richtig gemacht.

---

# Datentypen und Variablen

* Basis Baustein jeder Programmiersprache
* Platzhalter für Daten
* Logische Organisation durch verständliche Namen
* Legen fest welche Art von Werten gültig ist
* Können selbst definiert werden

---

## Primitive Datentypen

| Name    | Bezeichung | Beschreibung    | Größe      | Beispiel |
| -----   | ---------- | ------------    | -------      | -------- |
| int     | Integer    | Ganzzahl        | 4 Bytes      | 1,2,3    |
| long    | Long       | Ganzzahl        | 8 Bytes      | 1,2,3    |
| float   | Float      | Kommazahl       | 4 Bytes      | 1.3f     |
| boolean | Boolean    | Wahr/Falsch     | 1 o. 4 Bytes | true     |
| byte    | Byte       | Ganzzahl        | 1 Byte       | 1,2,3    |
| char    | Character  | Buchstabe       | 1 Byte       | 'a','b'  |
| String  | String     | Buchstabenliste | n Bytes      | "abc"    |

---

## Variablen

* Haben immer einen Datentyp
* Müssen definiert und deklariert werden
* Werte werden mit = zugewiesen

---

### Beispiel

```java
byte age = 25;
float pi = 3.14f;
String name = "Daniel";
boolean isHappy = true;

int a; // Variable deklaration (es wird deklariert, dass die Variable existiert); Wir wissen nicht, welchen Wert die Variable hier hat
a = 20; // Variable definition (es wird definiert, welchen Wert die Variable hat)

int b = 21; // Variable deklaration und definition in einem Schritt
b = 22;
```

---

# Übung 3 (Refactoring)

Überarbeite Aufgabe 3 und verwende Variablen für mehrfach verwendete Werte.

---

# Übung 4

## Ghettoblaster

Zeichne den folgenden Ghettoblaster/Radio:

![w:400 center](https://raw.githubusercontent.com/0xd61/csn-programming/main/assets/aufgabe4_1.png)

---

## Aufgabenstellung 4.1

Erstelle ein Programm, welches den Ghettoblaster mit den verschiedenen Basisfunktionen um Linien, Kreise, Rechtecke zu zeichnen, erstellt.

Nutze Variablen für gleiche mehrfach verwendete Größen.

---

## Tipp 4.1

Schaue dir in der Referenz die folgenden Funktionen an:

- [size()](https://processing.org/reference/size_.html)
- [background()](https://processing.org/reference/background_.html)
- [stroke()](https://processing.org/reference/stroke_.html)
- [strokeWeight()](https://processing.org/reference/strokeWeight_.html)
- [strokeCap()](https://processing.org/reference/strokeCap_.html)

Fortsetzung auf der nächsten Folie...

---

## Tipp 4.2

- [noStroke()](https://processing.org/reference/noStroke_.html)
- [fill()](https://processing.org/reference/fill_.html)
- [rect()](https://processing.org/reference/rect_.html)
- [line()](https://processing.org/reference/line_.html)
- [ellipse()](https://processing.org/reference/ellipse_.html)

---

## Tipp 4.3

Die Fenster Koordianten haben ihren Nullpunkt immer oben links:

![w:300 center](https://raw.githubusercontent.com/0xd61/csn-programming/main/assets/aufgabe4_2.png)

Oftmals hilft es, sich das Bild vorher auf ein Blatt Papier aufzumalen und die Größen festzulegen.

---

## Testfall 4.1

Siehe Aufgabenstellung

---

# Casting von Datentypen

* Konvertieren von einem Datentyp in einen anderen
* Casten von einem Float in einen Integer schneidet das Komma ab
* Casten von einem String in einen Zahlentyp ist (ohne weiteres) nicht möglich
* Explizites casten erflogt indem der Datentyp in Klammern vor die Variable geschrieben wird
* Impliziertes casten möglich, solange kein Datenverlust passiert (z.B. int -> float)

---

## Beispiel

```java
int a = 5;
String b = a;        // ERROR!

float c = a; // c entspricht jetzt der Zahl 5.0f
c = c + 0.1;        // c entspricht jetzt der Zahl 5.1f
int d = (int)c;     // d entspricht jetzt der Zahl 5

// Einfaches runden auf eine Ganzzahl kann über casting erfolgen 
// abrunden:
float round_down = 5.3f;
int rounded = (int)(round_down + 0.5f); // rounded entspricht jetzt der Zahl 5
println(rounded);

// aufrunden:
float round_up = 5.6f;
rounded = (int)(round_up + 0.5f); // rounded entspricht jetzt der Zahl 6
println(rounded);
```

---

# Operatoren

* Mathematische Operatoren (+, -, *, /, %)
* Zuweisungsoperatoren (=)
* Vergleichsoperatoren (==, !=, >, <, >=, <=, !)
* Kombinationsoperatoren (+=, -=, ++, --)

---

## Beispiel

```java
int ergebnis = 5 * 3 + 8 * (5 - 2) % 2;

boolean negierung = !false;

boolean richtiges_ergebnis = (5 * 3 == 15);

println(ergebnis);
println(negierung);
println(richtiges_ergebnis);
```

---

# Übung 5

Rechnen mit Variablen und Datentypen

## Aufgabenbescheibung 5.1

Schreibe ein Programm, das die bei den Testfällen stehenden Rechenaufgaben berechnet,
die Ergebnisse in einer Variablen speichert und die Werte der Variablen in der Konsole
ausgibt.

---

## Tipp 5.1

- Achte darauf, dass bei der Division die korrekten Datentypen verwendet werden. Beispiel: 255 ist Integer, 255.0 ist Float

---

## Testfall 5.1

```
1  + 7 - 9 + 43 = 42                12 % 2 = 0
43 - 9 + 7 + 1 = 42                 13 % 5 = 3
4 * 3 + 1 = 13                      12345 / 10 = 1234
9 * (2 + 1) = 27                    1234 / 10 = 123
4 * 3 * 0.5 = 6                     123 / 10 = 12
(3 - 7) * (7 + 4) = -44             12 / 10 = 1
3 / 4 = 0                           1 / 10 = 0
3 / 4 = 0.75                        12345 % 10 = 5
4 / 3 + 1 * 7 = 8                   1234 % 10 = 4
4 / 3 + 1 * 7 = 8.333333            123 % 10 = 3
2 * 2 * 2 * 2 * 2 * 2 * 2 = 128     12 % 10 = 2
42 / 7 / 3 = 2                      1 % 10 = 1
```

---

# Übung 6

## Stoffwechselrate berechnen

Die Stoffwechselrate (Grundumsatz G) ist eine Göße, die den Kalorienverbrauch (Energiemenge) eines Menschen pro Tag bestimmt.
Diese Energiemenge wird benötigt um den Köper am Leben zu halten.

---

## Aufgabenbeschreibung 6.1

Schreibe ein Programm, welches den Grundumsatz (Stoffwechselrate) nach der Harris-Benedict-Formel berechnet und die Ergebnisse für beide Geschlechter in der Konsole ausgibt.

```
Für Männer:
G = 66.47+13.7*m +5*l-6.8*t

Für Frauen:
G = 655.1+9.6*m +1.8*l-4.7*t

l = Größe in cm
m = Gewicht in kg
t = Alter in Jahren
```

---

## Tipp 6.1

Wenn du nicht weiter kommst, versuche folgendes:
- Speichere die Eingabegrößen als Variablen
- Berechne die Formeln für Mann und Frau in unterschiedlichen Variablen
- Schreibe das Ergebnis in die Konsole
- Achte auf den passenden Datentyp

---

## Testfall 6.1

- Gewicht: 58kg, Größe: 180cm, Alter: 25 Jahre -> Mann: 1591.07 Kalorien pro Tag, Frau: 1418.4 Kalorien pro Tag
- Gewicht: 90kg, Größe: 160cm, Alter: 45 Jahre -> Mann: 1793.47 Kalorien pro Tag, Frau: 1595.6 Kalorien pro Tag
- Gewicht: 45kg, Größe: 176cm, Alter: 17 Jahre -> Mann: 1447.37 Kalorien pro Tag, Frau: 1324.0 Kalorien pro Tag

---

# Übung 7

## Baumstammvolumen berechnen

Nachdem ein Baum gefällt wurde, möchte der Schreiner wissen, wie viel Holz der Stamm hat. Dazu rechnen wir das Volumen mit der folgenden Formel aus:

![w:300 center](https://raw.githubusercontent.com/0xd61/csn-programming/main/assets/aufgabe7_1.png)

Der Durchmesser (D) ist in Zentimeter und die Länge (L) in Meter angegeben.

---

## Aufgabenbeschreibung 7.1

Schreibe ein Programm, das nach der vorherigen Formel das Volumen eines Baumstamms berechnet

---

## Tipp 7.1

- Die Kreiszahl PI steht in Processing als Variable PI zur Verfügung

---

## Testfall 7.1

- 10 Meter lang und 33 cm Durchmesser: 0.70685834
- 15 Meter lang und 32 cm Durchmesser: 1.2063715

---

# Übung 8

## Körperoverfläche

Die Körperoberfläche eines Menschen kann nach folgender Formel berechnet werden:

![w:300 center](https://raw.githubusercontent.com/0xd61/csn-programming/main/assets/aufgabe8_1.png)

In der Formel is die Körpergröße (h) in cm und das Körpergewicht (w) in kg angegeben. Das Ergebnis ist die Oberfläche in m^2. 

---

## Aufgabenbeschreibung 8.1

Schreibe ein Programm, das die Körperoberfläche eines Menschen berechnet.

---

## Tipp 8.1

- Um die Wurzel zu berechnet kannst du die Funktion [sqrt()](https://processing.org/reference/sqrt_.html) verwenden.

---

## Testfall 8.1

- 1.80 m und 58 kg -> 1.7029387

---

# Übung 9

## RGB nach CMYK

Farben beim Computer werden meit in RGB angegeben. Diese bescheiben den Anteil von Rot (R), Grün (G) und Blau (B) im Zahlenbereich von 0 bis 255.
Beim Drucken wird normalerweise das CMYK-Format verwendet. Dabei handelt es sich um die Farben Cyan (C), Magenta (M), Gelb/Yellow (Y) und Schwarz/Key (K) im Zahlenbereich zwischen 0 und 1.

---

## Aufgabenbeschreibung 9.1

Schreibe ein Programm mit dem Farbwerte von RGB in CMYK mithilfe dieser Formeln umgewandelt werden können.

![w:300 center](https://raw.githubusercontent.com/0xd61/csn-programming/main/assets/aufgabe9_1.png)

---

## Tipp 9.1

- Das Maximum einer Zahl kannst du mir der Funktoin [max()](https://processing.org/reference/max_.html) berechnen.

---

## Testfall 9.1

- R: 75, G: 0, B: 130 -> C: 0.42307693, M: 1.0, Y: 0.0, K: 0.49019605

---

# Übung 10

## Tic-Tac-Toe Spielfeld

In einer späteren Aufgabe wollen wir das Spiel Tic-Tac-Toe programmieren. Dafür wird ein Spielfeld mit 9 Feldern benötigt.

![w:300 center](https://raw.githubusercontent.com/0xd61/csn-programming/main/assets/aufgabe10_1.png)

---

## Aufgabenbeschreibung 10.1

Schreibe ein Programm, welches ein leeres Spielfeld für Tic-Tac-Toe erzeugt und darstellt.
Mache dabei Gebrauch von eigenen Variablen.

---

## Tipp 10.1

- Rechteck oder Linie zeichnen? Beides ist möglich, aber ein Fall ist einfacher.
- Speichere wiederholende Zahlenwerte in einer Variable.

---

## Testfall 10.1

Siehe Beschreibung.

---

# Kontrollstrukturen

* Ablauf im Programm steuern
* Verändern die Reihenfolge der ausgeführten Anweisungen
* Bedingte Anweisung
* Wiederholungsanweisung

---

## Bedinge Anweisung

### [If-Else Anweisung](https://processing.org/reference/if.html)

```java
if(<boolescherAusdruck>) {
    // In diesen geklammerten Block kommen alle die Anweisungen hinein,
    // die abgearbeitet werden, wenn die Bedingung wahr ist.
} else {
    // In diesen geklammerten Block kommen alle Anweisungen hinein,
    // die abgearbeitet werden, wenn die Bedingung falsch ist.
}
```

Der [`else`-Block](https://processing.org/reference/else.html) ist optional.

---

### [If-Else Anweisung](https://processing.org/reference/if.html)

Die Anweisungen können beliebig verschachtelt werden:

```java
if(a == true) {
    if(b == true) {
        // ...
    }
} else if(c == true) {
    // ...
} else {
    // ...
}

```

---

## Bedingte Anweisung

### [Switch Anweisung](https://processing.org/reference/switch.html)

<style scoped>
pre {
   font-size: 0.5rem;
}
</style>

```java
switch(<Ausdruck>) {
    case <Konstante_1>:
        <Anweisungsblock_1>;
    break;
    case <Konstante_2>:
        <Anweisungsblock_2>;
    break;
    ...
    case <Konstante_n>:
        <Anweisungsblock_n>;
    break;
    default:
        <Anweisungsblock_sonst>;
}
```

Intern funktionieren Switch Anweisungen wie mehrere If-Else Anweisungen zusammen.
Achtung `break` nicht vergessen! Ansonsten wird der nächste Block auch ausgeführt.

---

## Wiederholungsanweisung (Schleifen)

### [For-Loop](https://processing.org/reference/for.html)

```java
// for(<initialeVariable>; <boolscherAusdruck>; <variableAktualisieren>)
for(int i=1; i<10; i++) {
    // In diesen geklammerten Block kommen alle die Anweisungen hinein,
    // die wiederholt abgearbeitet werden sollen.
}
```

---

### [For-Loop](https://processing.org/reference/for.html)

Auch Loops können verschachtelt werden:

```java
for(int y = 0; y < 10; y++) {
    for(int x = 0; x < 12; x++) {
        // ...
    }
}
```

---

## Wiederholungsanweisung (Schleifen)

### [While-Loop](https://processing.org/reference/while.html)

```java
int i = 0;
while(i<10) {
    // Anweisungen, die abgearbeitet werden sollen
    i++;
}

// Endloßchleife
while(true) {
    // Diese Schleife wird nie aufhören, außer sie wird mit einem Break beendet
}

```

---

## Wiederholungsanweisung (Schleifen)

### Vorzeitiges Beenden oder Überspringen

- Das Keyword [`continue`](https://processing.org/reference/continue.html) beendet den aktuellen Loop-Durchlauf und prüft die Bedingung erneut.
- Das Keyword [`break`](https://processing.org/reference/break.html) beendet den aktuellen Loop-Durchlauf ohne die Bedinung zu prüfen.

---

# Übung 11

## Maximum bestimmen

Bestimme die größte Zahl aus den vorliegenden Zahlen.

---

## Aufgabenbeschreibung 11.1

Bestimme das Maximum aus drei vorliegenden Integer-Zahlen mithilfe von `if-else`-Anweisungen. Nutze dafür das Template auf der nächsten Folie.

---

```java
// Variablen deklarieren und initialisieren
int a = 1;
int b = 2;
int c = 3;

// Variable deklarieren, die den maximalen Wert halten soll
int maxi = -2147483648; // kleinste erlaubte Integer-Zahl

// TODO: Maximum bestimmen
// ...

// Ausgabe des Maximums in der Konsole
println(
    "Der größte Wert in der Menge {" + a + ", " + b + ", " + c +
    "} lautet: " + maxi
);
```

---

## Tipp 11.1

- Wenn Variable a größer ist als b und c, dann ist a das Maximum. Wenn b größer ist als a und c, dann ist b das Maximum. Trifft beides nicht zu, dann kann nur c das Maximum sein.

---

## Testfall 11.1

- Vorliegende Zahlen: 1, 2, 3 -> Maximum davon: 3
- Vorliegende Zahlen: 42, 7, 13 -> Maximum davon: 42
- Vorliegende Zahlen: -9, 4, 2 -> Maximum davon: 4

---

# Übung 12

## Summe berechnen

In dieser Aufgabe wollen wir die Summe von 24 aufeinanderfolgenden Zahlen berechnen.
Mit einem Taschenrechner ist das ein sehr großer Tippaufwand. Für den Computer kein Problem.

---

## Aufgabenbeschreibung 12.1

Schreibe ein Programm, das mit einer for-Schleife die Summe der Zahlen von 3 bis 27 berechnet und das Ergebnis in der Konsole ausgibt.

---

## Tipp 12.1

- Deklariere und initialisiere die Variable, die die Summe beinhalten soll.
- Gehe die Zahlen von 3 bis 27 nacheinander durch.
- Addiere zur Summenvariable die aktuelle Zahl.

---

## Testfall 12.1

- Das Ergebnis der Summe von 3 bis 27 ist 375.
- Das Ergebnis der Summe von 1 bis 100 ist 5050.

---

# Übung 12

## Pin-Code Generator

In dieser Aufgabe wollen wir alle vierstelligen PINs einer Bankkarte oder Passcodes erzeugen
und in der Konsole ausgeben.

---

## Aufgabenbeschreibung 12.1

Schreibe ein Programm, das die oben beschriebene Aufgabe umsetzt. Setze diese mit einer `for`-Schleife um.

---

## Tipp 12.1

- Prüfe, ob die Zahl ein-, zwei-, oder dreistellig ist, und füge gegebenenfalls voranstehende Nullen hinzu.
- Da das Processing-Konsolenfenster maximal 500 Einträge anzeigen kann, sind bei einem schnellen Prozessor eventuell nur die letzten 500 Einträge sichtbar. Du kannst die Funktionalität aber überprüfen, indem du die Schleifenanweisung etwas langsamer ablaufen lässt. Der Processing-Befehl [delay(1)](https://processing.org/reference/delay_.html) fügt beispielsweise eine Pause von einer Millisekunde in dein Programm ein.

---

## Testfall 12.1
Ausgabe:

<style scoped>
pre {
   font-size: 0.8rem;
}
</style>

```
0000
0001
0002
0003
0004
...
9995
9996
9997
9998
9999
```
Alle PINs sind vierstellig

---

## Verknüpfte Bedingungen

Manchmal ist es erforderlich in einer If-Anweisunge mehrere Ausdrücke zu prüfen. Das ist möglich, indem man die Ausdrucke mit `&&` (und) oder `||` (oder) verknüpft.

<style scoped>
pre {
   font-size: 0.8rem;
}
</style>

```java
// Wenn a gleich 3 und b gleich 8:
if(a == 3 && b == 8) {
    // ...
}
// Wenn a größer 2 oder a kleiner 0:
if(a > 2 || a < 0) {
    // ...
}
// Wenn name keinen Text hat und b > 3 ist oder a gleich 2:
if(name == "" && b > 3 || a == 2) {
    // ...
}
```

---

# Übung 13

## Radialer Farbverlauf

Mit Bildbearbeitungssoftware wie z.B. Photoshop kann man Farbverläufe erstellen. In dieser Übung wollen wir diese Funktionalität selbst programmieren

---

## Aufgabenbeschreibung 13.1

Erstelle ein Programm was den folgenden Farbverlauf erstellt

![w:300 center](https://raw.githubusercontent.com/0xd61/csn-programming/main/assets/aufgabe13_1.png)

---

## Tipp 13.1

Erstelle einen weißen Kreis. Darauf werden nun weitere kleiner werdende Kreise, mit immer dunklerer Farbe gezeichnet.

Achte darauf, dass der Kreis Radius nicht negativ wird. Denn dann wird der Kreis wieder größer auf den Bildschirm gezeichnet.

---

## Testfall 13.1

Siehe Aufgabenbeschreibung

---

# Übung 14

## Moderne Kunst

Moderne Kunst kann auch mit einem Computer erstellt werden.

In diesem Fall ist wichtig:

- Farben werden zufällig generiert
- Alle Vierecke sind gleich groß
- _Optional:_ Die Vierecke sind leicht gedreht

---

## Aufgabenbeschreibung 14.1

Erstelle ein Programm, welches das folgende Bild erstellt

![w:300 center](https://raw.githubusercontent.com/0xd61/csn-programming/main/assets/aufgabe14_1.png)

---

## Tipp 14.1

- Berechne die Anzahl der Felder anhand der Breite und Höhe des Fensters und der gewünschten Größe der Felder
- Benutze die Funktion [random](https://processing.org/reference/random_.html)

---

## Testfall 14.1

Siehe Aufgabenbeschreibung

---

# Übung 15

## Interaktiver Button

Ein Butten verändert in der Regel seine Farbe, wenn man mit der Maus darüber hovert. In dieser Übung wollen wir einen solchen Button erstellen.

---

## Aufgabenbeschreibung 15.1

Erstelle ein Programm, was ein blauen Button zeichnet. Wenn die Maus sich darüber befindet soll der Button die Farbe auf grün ändern.
Die `x`- und `y`-Koordinaten der Maus kann man mit den Variablen `mouseX` und `mouseY` herausfinden.

<style>
img[alt~="right"] {
  position: absolute;
  top: 430px;
  right: 200px;
  width: 300px;
}
</style>

<style>
img[alt~="left"] {
  position: absolute;
  top: 430px;
  left: 200px;
  width: 300px;
}
</style>


![left](https://raw.githubusercontent.com/0xd61/csn-programming/main/assets/aufgabe15_1.png)
![right](https://raw.githubusercontent.com/0xd61/csn-programming/main/assets/aufgabe15_2.png)

---

## Tipp 15.1

Du kannst dieses Template benutzen:

```java
void setup() {
    size(800, 800);
    // Dieser Bereich wird einmal am Anfang aufgerufen
}
void draw() {
    // Hier kommt das geforderte Programm hinein
    // Dieser Bereich wird durchgehend aufgerufen
}
```

---

## Tipp 15.2

- Es ist sinnvoll, die Eigenschaften des Rechtecks als Variablen zu speichern. Diese wirst du bei den Kontrollen der Mausposition häufig benötigen.
- Dies sind die möglichen Maus Positionen, die abgefragt werden müssen:

<style>
img[alt~="right"] {
  position: absolute;
  top: 460px;
  right: 100px;
  width: 250px;
}
</style>

<style>
img[alt~="left"] {
  position: absolute;
  top: 430px;
  left: 100px;
  width: 250px;
}
</style>

<style>
img[alt~="middle"] {
  position: absolute;
  top: 430px;
  left: 500px;
  width: 250px;
}
</style>

![left](https://raw.githubusercontent.com/0xd61/csn-programming/main/assets/aufgabe15_3.png)
![middle](https://raw.githubusercontent.com/0xd61/csn-programming/main/assets/aufgabe15_4.png)
![right](https://raw.githubusercontent.com/0xd61/csn-programming/main/assets/aufgabe15_5.png)

---

# Funktionen

* Vermeidung von wiederholenden Code Blöcken
* Sammlung von Anweisungen innerhalb von `{}` (Blöcken)
* Haben immer eine Definition und einen Namen
* Separierung von Code, der mehrfach aufgerufen werden kann
* Macht Code übersichtlich und leicht zu ändern (muss nur an einer Stelle geändert werden)

---

## Syntax (Signatur der Funktion)

- Rückgabetyp (wenn nichts zurück gegeben wird, `void` verwenden)
- Funktionsnamen (sollte beschreiben, was die Funktion macht)
- Parameterliste (Keine oder mehrere Variablen durch Komma getrennt)
- Anweisungsblock

Durch diese Signatur ist die Funktion vom Programm identifizierbar und kann aufgerufen werden.

---

## Syntax (Beispiel)

```java
int BerechneSumme(int a, int b) {
    int ergebnis = a + b;
    return ergebnis;
}
```

Die Funktion kann dann aufgerufen werden mit:

```java
int summe = BerechneSumme(15, 39);
```

---

## Lokale vs Globale Variablen

| Global | Lokal |
| ------ | ----- |
| Überall im Programm verwendbar | Nur im aktuellen Block verwendbar |
| Außerhalb eines Blocks definiert und deklariert | Innerhalb eines Blocks definiert und deklariert |
| Name kann nur 1x definiert werden | Name kann in jedem Block neu definiert und verwendet werden |

---

## Lokale vs Globale Variablen Beispiel

```java
String x = "global";

def localVar() {
    String y = "local";
    println(x);
    println(y);
}

void setup() {
    localVar();
    println(x); // gibt global aus
    println(y); // ERROR! (da Variable nur innerhalb des Blocks existiert)
}
```

---

## Processing Einstiegspunkt

Da wir jetzt mit Funktionen arbeiten benötigt Processing einen Einstiegspunkt, bei dem der Programmablauf startet.
Dieser ist in Processing die [`void setup()`](https://processing.org/reference/setup_.html)-Funktion.

Eine weitere Funktion, die direkt nach der `setup`-Funktion aufgerufen wird ist die [`void draw()`](https://processing.org/reference/draw_.html)-Funktion. Diese wird periodisch für jeden Frame aufgerufen.

---

### Beispiel

Unsere Programme müssen somit jetzt immer mindestens diese 2 Funktionen enthalten

```java
void setup() {
  // Wird einmaling am Anfang aufgerufen
}

void draw() {
  // Wird direkt nach setup periodisch aufgerufen
}
```

---

# Übung 16

Beliebiges Programm erstellen, welches 2 Funktionen enthält und aufruft.

---

## Aufgabenbeschreibung 16.1

Erstelle alleine oder mit einem Partner ein kleines Programm, welches mindestens 2 Funktionen (zusätzlich zu `setup` und `draw`) mit
unterschiedlichen Parametern oder Rückgabewerten enthält.

Stelle dein Programm deinen Mitschülern vor.

---

# Übung 17

## Fakultät berechnen

Berechne die Fakultät einer vorgegeben Zahl. Die Fakultät berechnet man, indem man alle Zahlen von 1 bis n multipliziert.

Beispiel:
Fakultät n=4 ->  `1 * 2 * 3 * 4 = 24`

---

## Tipp 17.1

```java
int factorial(int n) {
  // Diese Funktion soll die Fakultät von n berechnen.
  // Die Fakultat von 6 berechnet man z.B. mit 1*2*3*4*5*6.
  // Die Variable n gibt vor wie oft die oben genannte Multiplikation durchgeführt wird.
}

void setup() {
  // Startpunkt des Hauptprogramms
  // Hier wird die implementierte Funktion aufgerufen.
  // Das Ergebnis soll mit println ausgegeben werden.
}
```

---

## Testfall 17.1

- n=6: 720
- n=2: 2
- n=1: 1
- n=9: 362880

---

# Übung 18 

## Schaltjahr Prüfung

Bei Schaltjahren hat der Februar 29 Tage anstatt der üblichen 28 Tage.
Schaltjahre können wir dadurch bestimmen, wenn die Jahreszahl durch 4 teilbar ist. Allerdings darf die Jahreszahl zusätzlich nicht durch 100 teilbar sein. 
Wenn die Jahreszahl wiederum durch 400 teilbar ist, ist es doch ein Schaltjahr.

---

## Aufgabenbeschreibung 18.1

Schreibe eine Funktion, die überprüft, ob es sich bei einer übergebenen Jahreszahl um ein Schaltjahr handelt. Sollte das Jahr ein Schaltjahr sein, wird true zurückgegeben. Sollte dies nicht der Fall sein, wird false zurückgegeben.

---

## Tipp 18.1

- Probiere, die Abläufe in der Funktion testweise auszugeben. Wird zum Beispiel bei einer entsprechenden Jahreszahl die erwartete Stelle im Quellcode ausgeführt? Sollte dies nicht der Fall sein, scheint es einen (Denk-)Fehler im Quellcode zu geben.
- Teilbarkeit in Zahlen lässt sich mit dem Modulo-Operator (%) prüfen, welcher den Rest einer Division zurückgibt.

---

## Tipp 18.2

```java
// Erstelle hier die Funktion checkLeapYear, welche uns das Ergebnis liefert.

void setup() {
  println("War 1800 ein Schaltjahr? -> " + checkLeapYear(1800));
  println("War 2016 ein Schaltjahr? -> " + checkLeapYear(2016));
  println("Wird 2020 ein Schaltjahr sein? -> " + checkLeapYear(2020));
}
```

---

## Testfall 18.1

- Schaltjahre:
  - 2012
  - 2000
  - 1916
  - 1896
- keine Schaltjahre:
  - 2013
  - 2003
  - 1900
  - 1881

---

# Übung 19

## Literzahlen umwandeln

Bei dieser Übung wollen wir uns das umrechnen von Größen vereinfachen.

---

## Aufgabenbeschreibung 19.1

Schreibe eine Funktion mit Namen volumeConverter, die eine als float-Wert übergebene Literzahl umwandelt und als String zurückgibt.

| float-Wert | Erzeugter String |
| ---------- | ---------------- |
| 1.0 und größer | \<vol\> l |
| 0.1 und größer | \<vol\> cl |
| 0.001 und größer | \<vol\> ml |
| kleiner als 0.001 | Number too small!| 

---

## Tipp 19.1

- Wenn du die Kommazahlen entfernt haben möchtest, probiere doch eine Umwandlung zu Integer-Werten.
- Natürlich musst du bei Divisionen auch aufpassen, dass nicht der Kommawert zu früh abgeschnitten wird.
- Float-Werte müssen in Java immer mit einem nachstehenden f definiert werden. Beispiel: 0.01f.
- Strings können mit einem + verknüpft werden, z.B. `"abc" + "def" -> "abcdef" oder "abc" + 123 -> "abc123"` 

---

## Testfall 19.1

- vol = 3.0 → 3.0 l
- vol = 0.3 → 30 cl
- vol = 0.003 → 3 ml

---

# Uebung 20 (Zusatz Aufgabe)

## Sportwetten

Bei Fußballwettspielen werden die erzielten Wettpunkte nach folgenden Regeln ermittelt:

-> nächste Folie

---

Exakter Tipp (3 Punkte):
- Sieg (z.B. Ergebnis: 3:2, Tipp: 3:2)
- Niederlage (z.B. Ergebnis: 0:1, Tipp: 0:1)
- Unentschieden (z.B. Ergebnis: 2:2, Tipp: 2:2)

Richtige Tendenz (1 Punkt):
- Sieg (z.B. Ergebnis: 3:2, Tipp: 2:1)
- Niederlage (z.B. Ergebnis: 0:1, Tipp: 1:2)
- Unentschieden (z.B. Ergebnis: 2:2, Tipp: 1:1)

Sonst 0 Punkte

---

## Aufgabenbeschreibung 20.1

Schreibe eine Funktion mit Namen computeBetScore, die für ein Fußballwettspiel die
erzielten Punkte berechnet. Die Funktion soll das getippte Ergebnis und das tatsächlich
erzielte Ergebnis des Fußballspiels übergeben bekommen.

Schreibe anschließend eine Funktion mit Namen computeCompleteBetScore, die die vorherige Funktion verwendet, um die Gesamtpunktzahl aller Wettergebnisse für eine Person zu
berechnen.

---

## Testfall 20.1

| Ergebnis Heim | Ergebnis Gast | Tipp Heim | Tipp Gast |
| ------------- | ------------- | --------- | --------- |
| 3 | 2 | 3 | 2 |
| 1 | 1 | 1 | 0 |
| 2 | 2 | 1 | 1 |

Das Ergebnis dieser Wetten sollte 4 sein (3 + 0 + 1)

---

## Übung 21

## Wurfparabel

Computerspiele basieren in der Regel auf physikalischen Gesetzen. Häufig verwendet wird da die Wurfparabel. Sie beschreibt die Flugban eines geschossenen oder geworfenen Objekts.

---

- Konstanten:
  – Fallbeschleunigung: g =9, 81
- Startwerte:
  – Geschwindigkeit: v0
  – Winkel: β
- Berechnung:
  – x(t) = v0 ∗ t ∗ cos(β)
  – y(t) = v0 ∗ t ∗ sin(β)−g/2 * t

---

## Aufgabenbeschreibung 21.1

Schreibe ein Programm, was die Wurfparabel für die Anfangsgeschwindigkeit v0 und einem Winkel β im Ausgabefenster darstellt.

---

## Tipp 21.1

- Winkel ausgeben (wird Cosinus/Sinus in Radians oder Grad berechnet?)
- Erst einmal mit verschiedenen Werten t testen. Wann bleibt y oberhalb von 0?
- Oben links ist beim Zeichenbereich in Processing bei y=0.

---

## Tipp 21.2

Für die Berechnung kannst du diese Hilfe verwenden

<style scoped>
pre {
   font-size: 0.8rem;
}
</style>

```java
  // Umwandlung von Grad in Radians
  beta = radians(beta);

  // Berechne und zeichne in einer Skalierung von 0.25
  for (float t = 0.0; t < 20.0; t = t + 0.25) {
    // Startpunkt für Zeichnung ist Fensterhöhe = unterer Rand
    int yStart = height;

    // Berechne Werte für x und y
    // HIER MÜSSEN DIE FORMELN ERGÄNZT WERDEN:
    // ...

    // Zeichne Parabelpunkte
    // y muss horizontal gedreht werden (s. Hinweise)
    ellipse(x, -y + yStart, 2, 2);
  }
```

---

## Testfall 21.1

<style>
img[alt~="right"] {
  position: absolute;
  top: 200px;
  right: 100px;
  width: 350px;
}
</style>

<style>
img[alt~="left"] {
  position: absolute;
  top: 200px;
  left: 100px;
  width: 340px;
}
</style>

<style>
img[alt~="middle"] {
  position: absolute;
  top: 200px;
  left: 465px;
  width: 350px;
}
</style>

![left](https://raw.githubusercontent.com/0xd61/csn-programming/main/assets/aufgabe21_1.png)
![middle](https://raw.githubusercontent.com/0xd61/csn-programming/main/assets/aufgabe21_2.png)
![right](https://raw.githubusercontent.com/0xd61/csn-programming/main/assets/aufgabe21_3.png)

---

# Übung 22

## Bogenschießen

Wie schon in der Aufgabe 5.2.15 zur Wurfparabel erwähnt, basieren so gut wie alle Computerspiele auf physikalischen Gesetzen. Mit der Wurfparabel wollen wir nun ein eigenes Computerspiel programmieren: das Bogenschießspiel.
Bogenschießen ist seit langer Zeit eine olympische Disziplin. Hierbei wird mit einem Bogen ein Pfeil auf eine Zielscheibe geschossen, die in einiger Distanz vom Schützen entfernt steht. Ziel dabei ist, möglichst die Mitte der Zielscheibe zu treffen.

---

Um den generellen Ablauf eines Computerspiels zu verstehen, hier ein paar Anmerkungen: 
Computerspiele werden mit einer Art Endlosschleife (Game-Loop) realisiert, bei der in jedem Schleifendurchlauf jeweils ein neues Bild in das Ausgabefenster gezeichnet wird. Bevor
in das Ausgabefenster gezeichnet wird, werden jeweils die Positionen aller Gegenstände in der Schleife gegebenenfalls aktualisiert. Dort kann zum Beispiel eine Positionsänderung passieren, wenn der Spieler eine Taste drückt oder physikalische Gesetze in einem Zeitrahmen greifen.

---

Beispiel-Pseudocode:
```
Für jeden Schleifendurchlauf:
reagiere auf Tastaturanfragen
aktualisiere Variablen/Positionen der Gegenstände
zeichne Bild in Abhängigkeit der Variablen
```

---

## Aufgabenbeschreibung 22.1

Programmiere ein Bogenschießspiel.
Der Pfeil, bzw. der Bogen sollen dabei auf der Tastatur in Geschwindigkeit und Winkel angepasst werden können. Die Platzierung der Zielscheibe soll bei jedem Spieldurchlauf zufällig gewählt werden. Der Bogenschütze soll immer an der gleichen Stelle stehen.

Schreibe als Erstes die einzelnen Schritte als Text (z.B. als Kommentar).

---

## Testfall 22.1

Der Code ist ausführbar und es kann gespielt werden

---

## Aufgabenbeschreibung 22.2

### Grundgerüst

Erstelle ein grobes Grundgerüst des Programms. Überlege dir welche Funktionen du benötigen wirst.

---

## Tipp 22.2

```java

// Konstanten
float g = 9.81;
// y-Position an dem die Wiese beginnt
// y-Position an dem der Boden beginnt

// Pfeilstartposition
// Pfeil Startposition (x,y)

// Ziel
// Ziel Breite + Höhe


// Globale Variablen setzen
// Geschwindigkeit
// Winkel
// Aktuelle Pfeilposition
// Pfeil Winkel
// Pfeil wurde abgeschossen?
// Flugzeit
// Ziel Position

// Funktion zum (Re-)Initialisieren von globalen Variablen
// Benötigt keinen Eingabewert und gibt auch keinen Wert
// zurück


// Funktion zur Ausgabe von Koordinaten der Wurfparabel zum
// angeforderten Zeitpunkt.
// An die Funktion wird die Geschwindigkeit als Integer-Wert
// sowie der Winkel und den Zeitpunkt je als Fließkommazahl
// gegeben.
// NOTE: Erstmal überspringen

// Funktion zur Berechnung des Steigungswinkels des Pfeils
// (1. Ableitung) als Fließkommazahl zurück
// NOTE: Erstmal überspringen


// Funktion, die die Reaktion auf Tastatureingaben
// verarbeitet. Der keyCode ist in einer globalen
// Variable enthalten.
void keyPressed() {
   // TODO: Auf Tastendrücke reagieren und
   // einen Beispieltext auf der Konsole ausgaben
}

// Funktion zum Erhöhen der Geschwindigkeit ohne
// Ein- oder Ausgabeparameter


// Funktion zum Verringern der Geschwindigkeit ohne
// Ein- oder Ausgabeparameter


// Funktion zum Erhöhen des Winkels ohne
// Ein- oder Ausgabeparameter


// Funktion zum Verringern der Winkels ohne
// Ein- oder Ausgabeparameter


// Funktion zum Aktualisieren der Pfeilposition
// Keine Ein- oder Ausgabeparameter, da die Funktion
// auf den globalen Variablen rechnet.


// Funktion zur simplen Kollisionserkennung
// ohne Ein- und Ausgabeparameter


// Funktion zur Bestimmung, ob die aktuelle Koordinate
// im Kollisionsbereich liegt


// Startpunkt des Hauptprogramms
// Hier wird die implementierte Funktion zu Demonstrations- und
// Testzwecken aufgerufen.
void setup() {
  size(1200, 600);
  // reset();
}


// Funktion, die immer wieder zum (Neu-)Zeichnen des
// Bildschirminhalts aufgerufen wird
void draw() {
  // zunächst Löschen des Bildschirms
  clear();
  // Hintergrundfarbe setzen
  background(255);
  // mit gesetzter Farbe füllen
  fill(0);
  // Textgröße setzen
  textSize(20);
  // zeichne Variablenangaben (Speed, Winkel)


  // Auf Kollision prüfen
  // NOTE: Erstmal überspringen

  // Pfeil aktualisieren

  // Zeichne Wiese


  // Zeichne Boden


  // Zeichne Zielscheibe


  // Zeichne Pfeil
  // NOTE: Erstmal überspringen
}

```

---

## Aufgabenbeschreibung 22.3

Implementiere die `keyPressed`-Funktion.
- Linke Pfeiltaste soll die Geschwindigkeit erhöhen
- Rechte Pfeiltaste soll die Geschwindigkeit verringern
- Oben Pfeiltaste soll den Winkel erhöhen
- Unten Pfeiltaste soll den Winkel verringern
- r-Taste soll alles auf den Ausgangszustand zurücksetzen
- Enter soll den Pfeil abschießen

---

## Testfall 22.3
- Bei jedem der Tastendrücke soll erstmal nur ein Infotext über die Aktion mit `println` ausgeführt werden. Somit kann man überprüfen, ob die richtigen Aktionen durgeführt werden
- Für jede Aktion soll eine Funktion erstellt werden, die den Infotext auf der Konsole ausgibt
- Nutze dazu die Hilfskommentare im Tipp der Aufgabe 22.2

---

## Tipp 22.3

- Sondertasten (Pfeiltasten und Enter) können mit der Variable `keyCode` abgefragt werden
- Enter hat den `keyCode` 10

---

## Aufgabenbeschreibung 22.4

Erstelle globale Variablen für
- AbschussWinkel
- Geschwindigkeit
- Pfeil AbschussPosition X und Y
- Pfeil Position X und Y
- Pfeil Winkel
- Pfeil Flugzeit
- Ziel Position und Größe

---

Anschließend ersetzte die `println`-Ausgaben der Funktionen der vorherigen Aufgabe und passe die Variablen entsprechend der auszuführenden Aktion an.
Ergänze danach die Draw Funktion, sodass die aktuelle Geschwindigkeit und der aktuelle Winkel oben links im Bildschirm angezeigt werden.

---

## Testfall 22.4

- Beim Tastendruck einer Pfeiltaste erhöht oder verringert sich der Winkel oder die Geschwindigkeit
- Die Änderung ist im Fenster sichtbar

---

## Tipp 22.4

- Zum Anzeigen kannst du die Funktion [`text`](https://processing.org/reference/text_.html) verwenden
- Die Textgröße kann mit [`textSize`](https://processing.org/reference/textSize_.html) geändert werden

---

## Aufgabenbeschreibung 22.5

Zeichne das Ziel, den Boden, die Wiese und den Pfeil.
Erstelle eine Funktion reset, die alle Werte auf ihren Ursprung zurück setzt und initialisiert.
Die X-Position des Ziels soll zufällig in der rechten Hälfte des Fensters sein.
Die Reset Funktion wird ausgeführt, wenn die r-Taste gedrückt wird.

---

## Testfall 22.5

Die Elemente werden im Fenster angezeigt und reagieren auf Veränderung, z.B. des Abschusswinkels oder durch Drücken der r-Taste.

---

## Tipp 22.5

- Für die zufällige Position kann die Funktion [random(min, max)](https://processing.org/reference/random_.html) verwendet werden.
- Die Position des Pfeils entspricht der Pfeil Spitze. Um den Pfeil als Linie zu zeichnen wird eine Endposition benötigt. Diese kann mithilfe des Winkels und sin() und cos() berechnet werden. Du kannst dazu den Begriff "Einheitskreis" googlen.

---

## Aufgabenbeschreibung 22.6

- Erstelle eine globale Variable, die anzeigt, ob der Pfeil sich aktuell bewegt oder nicht.
- Beim drücken der Enter Taste soll der Pfeil anfangen, sich zu bewegen.
- Erstelle eine Funktion updateArrow() mit welcher die Pfeilposition aktualisiert wird.
  - Es wird abgefragt, ob sich der Pfeil aktuell bewegt
  - Wenn der Pfeil sich bewegt wird eine Funktion updateTrajectory() aufgerufen, welche die X und Y Position des Pfeils aktualisiert
    - updateTrajectory werden Geschwindigkeit, Winkel und Zeit als Parameter übergeben.
    - Es kann die Berechung aus Aufgabe 21 verwendet werden. 
  - Nach updateTrajectory() wird eine Funktion getDegrees() ausgeführt, wodurch der Flugwinkel des Pfeils angepasst wird.
  - Nach dem aktualisieren des Pfeils soll die Flugzeit um 0.1 erhöht werden.

---

## Testfall 22.6

Nach Abschuss des Pfeils durch die Enter Taste fliegt der Pfeil einen Bogen.

---

## Tipp 22.6

Du kannst folgende Funktion für getDegrees() verwenden.

```java
float getDegrees(int v0, float beta, float t) {
  beta = radians(beta);
  float x1 = v0 * cos(beta);
  float y1 = v0 * sin(beta) - g * t;
  float winkel = atan(y1 / x1);
  return degrees(winkel);
}
```

---

## Aufgabenbeschreibung 22.7

- Erstelle eine Funktion zur Kollisionserkennung.
- Es wird die Position des Pfeils mit dem Ziel und dem Boden verglichen.
- Wenn eine Kollision mit dem Boden oder dem Ziel erkannt wird, wird die Variable, ob sich der Pfeil bewegt auf false gesetzt, sodass der Pfeil gestoppt wird.
- Die Funktion zur Kollisionsprüfung wird in der `draw`-Funktion vor dem Aktualisieren der Pfeilposition aufgerufen.

---

## Testfall 22.7

Landet der Pfeil im Ziel oder auf dem Boden wird er gestoppt und bewegt sich nicht mehr weiter.

Herzlichen Glückwunsch. Das Programm ist nun komplett.

---

## Aufgabenbeschreibung 22.8
### Erweiterung

- Ersetze die Linien und Rechtecke durch richtige Bilder.
- Bilder können mit der `loadImage`-Funktion geladen werden. Mit der `image`-Funktion werden die Bilder dann angezeigt. Im Tipp ist ein Beispiel dafür.
- Die Bild Dateien müssen sich im gleichen Verzeichnis, wie das Programm auf dem Computer befinden, damit diese gefunden werden.
- Verwende Bilder ohne Hintergrund (PNG Dateien)

---

## Tipp 22.8

Bild Beispiel:

```java
PImage bild;

void setup() {
  size(1200, 600);
  bild = loadImage("gespeichertes_bild.png");
}

void draw() {
  // Bild Variable, X, Y, Breite, Höhe
  image(bild, 200, 100, 500, 200);
}
```

---

## Testfall 22.8

Für Pfeil, Ziel und Wiese werden Bilder angezeigt und animiert.

---

# Listen (Arrays)

Problem:
- Nur ein Wert pro Variable
- Bei Funktionen kann nur 1 Wert zurückgegeben werden
- Für zusammenhängende Werte müssten viele einzelne Variablen erstellt werden

Lösung:
* Mit Arrays können mehrere Werte eines Datentyps in einer Variable gespeichert werden
* Es wird nur 1 Variablen Name verwendet
* Über ein Index kann auf einen einzelnen Wert in der Liste zugegriffen werden
  - Index wird über [] angegeben
  - `koordinatenFarbwert[3] = farbWert;`
  - `farbWert = koordinatenFarbwert[5];`
---

## Initialisierung

Die Erstellung von Array Variablen ist etwas ungewöhnlich

```java
int[] koordinatenFarbwert = new int[anzahlElemente];
```

`int[]`- sagt, dass wir einen Listendatentyp für Integer Werte haben möchten. `new int[anzahl]`- erzeugt eine Liste für eine angegebene Anzahl mit Standard Werten. Das ist die maximale Anzahl an Elementen. Mehr Elemente können nicht gespeichert werden.

Alternativ können auch direkt Werte festgelegt werden. Dann entfällt die Zuweisung mit dem `new`.

```java
String[] farben = {"rot", "gelb", "grün"};
```

---

## Index

Als Index können Zahlen oder auch Integer Variablen angegeben werden. Das erleichtert die Abfrage in z.B. Schleifen

```java
for(int index = 0; index < anzahlPixel; index++) {
    koordinatenFarbwert[index] = initialerFarbWert;
}
```

Der Index beginnt immer mit 0 für das erste Element. Somit ist der Index des letzten Elements um 1 kleiner als die Array Größe.

```java
// Index:            0      1       2
String[] farben = {"rot", "gelb", "grün"};

String letzteFarbe = farben[2];
```

---

# Übung 23

## Wochentag

Berechne den Wochentag von einem bestimmten Datum

---

## Aufgabenbeschreibung 23.1

Den Wochentag eines Datums können wir mit folgender Vorschrift berechnen (Beispiel für
den 13.11.2013):
- Nehme die letzten zwei Ziffern der Jahreszahl und addiere den ganzzahligen Anteil eines Viertels davon hinzu.
`Beispiel: 2013 → 13 + 13/4 = 13 + 3 = 16`
- Addiere folgende Werte entsprechend des Monats:
  - Januar: 1
  - Februar: 4
  - März: 4
  - April: 0
  - Mai: 2
  - Juni: 5
  - Juli: 0
  - August: 3
  - September: 6
  - Oktober: 1
  - November: 4
  - Dezember: 6
`Beispiel: November → 4 + 16 = 20`
- Addiere den Tag:
`Beispiel: 13 → 13 + 20 = 33`
- Addiere folgende Zahl für das Jahrhundert:
  - 18xx: 2 
  - 19xx: 0 
  - 20xx: 6 
  - 21xx: 4
`Beispiel: 2013 → 6 + 33 = 39`
- Wenn das Jahr ein Schaltjahr ist, subtrahiere für Januar oder Februar den Wert mit 1.
`Beispiel: 2013 ist kein Schaltjahr.`
- Reduziere den Wert mit Modulo 7. Damit kann auf den Wochentag im folgenden Array zurückgegriffen werden: `{ Sa, So, Mo, Di, Mi, Do, Fr }`
`Beispiel: 39 % 7 = 4 → Mittwoch`

---

## Tipp 23.1

- Die Additionswerte oder die Namen der Wochentage können in einem Array gespeichert werden.
- Das übergebene Datum sollte nur aus Zahlen bestehen (z.B. drei Variablen für Tag, Monat und Jahr)

---

## Tipp 23.2

Du kannst diese Vorlage nutzen:

```java
// Funktion zur Berechnung des Wochentags
// Erhält als Eingabeparameter ganzzahlige Werte für
// den Tag, den Montag und das Jahr
String calcDayOfWeek(int inputDay, int inputMonth, int inputYear) {
  
  float year = float(inputYear) / 100.0;
  int yearFirst = int(year);
  int yearSecond = int((year - float(yearFirst)) * 100.0f);
  
  int dayOfWeek = yearSecond;
  
  // Ganzzahligen Anteil eines Viertels zu dayOfWeek hinzuaddieren
  // Das Ergebnis einer Division mit Integer-Zahlen liefert
  // den ganzzahligen Wert der Division.
  // TODO:...

  // Zuweisung Additionswerte für Monat
  // Werte entsprechend des Monats addieren
  // TODO:...

  // Tag addieren
  // TODO:...
  
  // Zuweisung Jahrzehnt zu Offset
  int centuryAdd = 0;
  int century = yearFirst;
  if(century == 18) {
    centuryAdd = 2;
  }
  if(century == 19) {
    centuryAdd = 0;
  }
  if(century == 20) {
    centuryAdd = 6;
  }
  if(century == 21) {
    centuryAdd = 4;
  }

  // Addiere Offset
  dayOfWeek = dayOfWeek + centuryAdd;
  // Bei Schaltjahr wird für Januar und Februar 1 subtrahiert
  if (checkLeapYear(inputYear)) {
    if (inputMonth == 1 || inputMonth == 2) { // Monat = 1 oder 2?
      dayOfWeek = dayOfWeek - 1;
    }
  }
  
  // Wochentag ergibt sich aus Reduzieren Modulo 7
  // TODO:...
  
  // Array mit Wochentagen
  // TODO:...
  // Gebe Wochentag aus
  
  return "Wochentag aus Array zurückgeben";
}
// Funktion zur Schaltjahrprüfung (aus vorheriger Aufgabe)
boolean checkLeapYear(int yearInput) {
  // Ist Jahreszahl durch 400 teilbar?
  if (yearInput % 400 == 0) {
    return true;
  } else { // sonst prüfe,
    // ob Jahreszahl durch 4, aber nicht durch 100 teilbar ist
    if ((yearInput % 4 == 0) && (yearInput % 100 != 0)) {
      return true;
    }
  }
  // Wenn keine Bedingung zutrifft
  return false;
}
// Startpunkt des Hauptprogramms
// Hier wird die implementierte Funktion zu Demonstrations- und
// Testzwecken aufgerufen.
void setup() {
  String day = calcDayOfWeek(1, 1, 1817);
  println(day);
}
```

---

## Testfall 23.1

- 3.2.2016 → Mittwoch
- 3.11.2016 → Donnerstag
- 1.11.2017 → Mittwoch
- 1.1.1917 → Montag

---

# Übung 24

## Tankfüllung

Wir wollen den Durchschnitt berechnen, wie viele Kilometer wir mit einer Tankfüllung fahren können.

---

## Aufgabenbeschreibung 24.1

Schreibe eine Funktion, die ein Array mit verschiedenen int-Werten übergeben bekommt und daraus die durchschnittliche Anzahl an Kilometern zurückgibt, die wir mit einer Tankfüllung fahren können.

---

## Tipp 24.1

- Summiere alle Kilometer
- Berechne den Mittelwert
- Das Ergebnis ist eine Kommazahl

---

## Testfall 24.1

[123, 134, 120, 122] → 124.75

--- 

# Übung 25

## Rückwärtsausgabe

Wir wollen eine Funktion schreiben, mit der Wörter rückwärts ausgegeben werden.

---

## Aufgabenbeschreibung 25.1

Schreibe eine Funktion, die ein char-Array übergeben bekommt und dieses rückwärts in der Konsole ausgibt.

---

## Tipp 25.1

- Du kannst eine For-Schleife auch von hinten nach vorne durchgeben und den index immer um 1 verringern.

---

## Testfall 25.1

Beispielpalindrome:
- Anna
- Reib nie ein Bier
- Eine Horde bedrohe nie
Weitere Testdaten:
- Hallo → ollaH
- Informatik → kitmarofn

---

# Mehrdimensionale Arrays

- Ein eindimensionales Array ist eine Liste von Werten in "eine Richtung"
- Ein zweidimensionales Array ist eine Liste in "zwei Richtungen" wie z.B. bei einer Tabelle oder einem Schachbrett
- Um ein Feld anzusprechen brauchen wir 2 Koordinaten, die Zeile und die Spalte
- Mehrdimensionale Arrays sind Listen in Listen

---

## Beispiel

```java
int[][] myArray = { {0,1,2,3}, {3,2,1,0}, {3,5,6,1}, {3,8,3,4} };

// oder in Tabellenform
int[][] myArray = {  {0, 1, 2, 3},
                     {3, 2, 1, 0},
                     {3, 5, 6, 1},
                     {3, 8, 3, 4}  };
                     
// Wert in Zeile 2 und Spalte 3
int wert = myArray[2][3];

// Um durch jedes Feld zu loopen werden 2 verschachtelte Schleifen benötigt
for(int zeile = 0; zeile < myArray.length; zeile++) {
    println("Zeile: "+ zeile);
    for(int spalte = 0; spalte < myArray[0].length; spalte++) {
        println("Spalte: "+ spalte);
    }
}
```

---
# Übung 26

## Bildvergrößerung

Digitale Bilder sind durch sogenannte Pixel dargestellt. Jedes Pixel beschreibt einen Farbton an einer bestimmten Stelle. Vereinfacht kann man sich das wie ein großes Array vorstellen, in denen verschiedene Zahlen (die Farbwerte) gespeichert sind.

In dieser Aufgabe werden wir ein Bild aus zwei Farben zeichnen. Eine typische Anwendung in Bildbearbeitungssoftware ist die Vergrößerung. Diese wollen wir hier programmieren.

---

## Aufgabenbeschreibung 26.1

Schreibe eine Funktion `magnify` die ein zweidimensionales Array um den ganzzahligen Faktor `f` vergrößert. Die Werte für `f` sind größer als 1. Das Bild (Array ist quadratisch, also hat die gleiche Anzahl von Zeilen und Spalten).

---

## Tipp 26.1

- Zeichne dir die Vergrößerung einmal auf einem Blatt Papier auf. Es könnte dir deutlich machen, welche Werte vom Eingangsbild an welche Position im Ausgangsbild kommen.
- Für die Vergrößerung brauchst du 4 verschachtelte For-Loops

---

## Tipp 26.2

```java
// Funktion zum Vergrößern eines quadratisches Arrays um den Faktor f
// Eingabe ist ein zweidimensionales Array mit boolean-Werten sowie
// der Faktor, um den das Array vergrößert werden soll
boolean[][] magnify(boolean[][] input, int f) {
  // die aktuelle Größe entspricht der Anzahl an Array-Elementen
  // einer Dimension
  int inputSize = input.length;

  // Berechnen der Ergebnisgröße des Arrays
  TODO: ...

  // Generiere leeren Output-Array in der neuen Größe
  TODO: ...

  // Gehe jedes Element in Input durch und schreibe es in die skalierten
  // Felder im Output
  TODO: ...

  return output;
}

// Funktion, die das Array grafisch im Ausgabefenster darstellt
// Als Eingabe erfolgt das Array.
void drawArray(boolean[][] input) {
  // Array-Größe. Da Array quadratisch sein soll, reicht die Höhe
  // des Arrays aus
  int inputSize = input.length;

  // Höhe und Breite jedes Rechtecks (definiert durch Fenstergröße)
  int rectWidth = width / inputSize;
  int rectHeight = height / inputSize;

  for (int y = 0; y < inputSize; y++) {
    for (int x = 0; x < inputSize; x++) {
      // Setze Farbe nach Array-Inhalt
      // Um einzelne Elemente sichtbar zu machen, ist die Linienfarbe
      // stets das Gegenteil der Füllfarbe
      if (input[y][x] == false) {
        stroke(0);
        fill(255);
      }
      else {
        stroke(255);
        fill(0);
      }
      // Zeichne Rechteck
      // startX,startY: Obere linke Ecke des Rechtecks
      // startX+rectWidth, startY+rectHeight: Untere linke Ecke
      // des Rechtecks
      int startX = x * rectWidth;
      int startY = y * rectHeight;
      rect(startX, startY, startX + rectWidth, startY + rectHeight);
    }
  }
}

// Startpunkt des Hauptprogramms
// Hier wird die implementierte Funktion zu Demonstrations- und
// Testzwecken aufgerufen.
void setup() {
  size(200, 200);
  background(255);
  boolean[][] eingabe = {{true, false}, {false, false}};
  drawArray(magnify(eingabe, 1));
}
```

---

## Testfall 26.1

![w:300 center](https://raw.githubusercontent.com/0xd61/csn-programming/main/assets/aufgabe26_1.png)

---

# Übung 27

## Platztausch

Beim Programmieren muss man oftmals die Reihenfolge der Elemente im Array ändern.

---

## Aufgabenbeschreibung 27.1

Wir wollen eine Funktion schreiben, die die Reihenfolge der Array-Einträge umdreht. Die Elemente „lesen“ sich dann also von rechts nach links, verglichen mit den ursprünglichen Positionen.
Die Funktion soll dabei so implementiert werden, ohne dass ein zweites Array erzeugt wird, in dem das Ergebnis abgelegt wird.

---

## Tipp 27.1

- Welcher Platz muss mit welchem getauscht werden?
- Testausgaben zu den getauschten Plätzen könnten hilfreich sein.

---

## Testfall 27.1

- [0, 1, 2, 3, 4, 5, 6] → [6, 5, 4, 3, 2, 1, 0]
- [0, 1, 2, 3, 4, 5] → [5, 4, 3, 2, 1, 0]

---

# Übung 28

## Lauf Animation

Filme oder Animationen sind nichts anderes als bewegte Bilder. In dieser Übung wollen wir eine solche Animation erstellen.

---

## Aufgabenbeschreibung 28.1

Schreibe ein Programm, dass sechs Bilddateien einliest und diese kontinuierlich der
Reihe nach und immer an der gleichen Position im Ausgabefenster darstellt.
Die Bilddateien kannst du hier herunterladen:

[Download](https://github.com/0xd61/csn-programming/tree/main/assets/laufanimation)

---

## Tipp 28.1

- Es macht Sinn, alle Bilder nur einmal einzulesen und danach diese zum passenden Zeitpunkt abzurufen.
- Processing stellt einen eigenen Datentyp für Bilder zur Verfügung: PImage.
- Arrays können über beliebige Datentypen definiert werden, insbesondere auch mit PImage.
- Zum Einlesen und Anzeigen von Bilddaten existieren spezielle Funktionen in Processing.

---

## Testfall 28.1

- Animation ist ruckelfrei.
- Animation läuft realistisch und nicht zu schnell ab (12 Bilder pro Sekunde).

---

# Strings (Zeichenketten)

* Stringverarbeitung ist wichtig. Z.B. muss in unseren Programmen Text (Strings) in Code umgewandelt werden. Dabei wird jedes Zeichen analysiert, die Befehle erkannt und daraus Maschinencode generiert.
* Stehen immer zwischen ".
* Ist eine Liste von einzelnen Zeichen (Charactern).
* Unterstützt Zusatzfunktionen, damit er verwendet werden kann, wie eine Liste.
* Können gesplitted und zusammgefügt werden.

---

## Beispiel

```java
String text = "Ich will Kekse!";
for(int i=0; i<text.length; i++) {
    print(text.charAt(i));
}
```

```java
String str1 = "CCCP"; 
String str2 = "Rabbit"; 
String ss1 = str1.substring(2);     // Returns "CP"
String ss2 = str2.substring(3);     // Returns "bit"
String ss3 = str2.substring(0, 2);  // Returns "Ra"
println(ss1 + ":" + ss2 + ":" + ss3);  // Prints "CP:bit:Ra"
```

---

# Übung 29

## Kompression von Strings

Kompression ist ein wichtiger Teil unserer digitalen Welt. Es wird versucht überall nur die notwendigsten Daten zu speichern, um den Speicher so gering wie möglich zu halten.
In dieser Übung wollen wir Texte selbst komprimieren.

---

## Aufgabenbeschreibung 29.1

Der Aufbau der zu komprimierenden Strings ist dabei sehr besonders, da diese nur aus den Zeichen 'W' und 'B' bestehen.
Das Kompressionsverfahren zählt alle aufeinanderfolgenden gleichen Zeichen. Anschließend ersetzt es diese durch die numerische Anzahl, gefolgt vom gezählten Zeichen. Beispiele stehen in den Testfällen.

Schreibe einen Stringkompressionsalgorithmus nach dem oben beschriebenen Schema.

---

## Tipp 29.1

- Konstruiere einen leeren String, der die Kompression enthalten soll.
- Bestimme das Zeichen, das als Nächstes gezählt werden soll.
- Zähle die Anzahl der gleichen Zeichen.
- Sollte das vorherige Zeichen anders als das aktuelle Zeichen sein, muss etwas geschehen.

---

## Testfall 29.1

- "WWWWBBBWBBBBBBWW" -> "4W3B1W6B2W"
- "BBBBWWWWWWWWWB" -> "4B9W1B"
- "WBBBBWWWWWWB" -> "1W4B6W1B

---
