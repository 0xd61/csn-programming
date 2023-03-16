---
theme: gaia
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
* Schritt fuer Schritt durch den Code gehen

---

# Whitespace und Kommentare

Unsere wichtigste Aufgabe als guter Software Entwickler ist es verstaendlichen Code zu schreiben.

<style scoped>
pre {
   font-size: 0.6rem;
}
</style>

```java
/*
 * Dieses Programm ist ein kleines Beispiel fuer Processing.
 * Es oeffnet ein Fenster, welches eine von einem Ursprungspunkt
 * zu Maus Position eine Line zeichet.
 */

// Setup wird am Anfang des Programms einmal ausgefuehrt
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

# Uebung 1

## Erstes Programm

Schreibe ein Programm, das in der Konsole folgenden Text ausgibt:

```java

Three-Two-One - Takeoff!

```

---

## Testfall 1.1

Kontrolliere, ob die geforderte Ausgabe auf der Konsole ausgegeben wird

---

# Uebung 2

## Beschreibung

In dieser Uebung wollen wir ein Muster in die Konsole schreiben. Dafuer werden bestimmte Zeichen so oft hintereinander und untereinander geschrieben, bis sich daraus die geforderte Form ergibt.

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
Sanduhr: *****   Pizzastueck: **********   Diamant:   **
          ***                  *      *              *  * 
           *                    *   *               *    *
          ***                    * *                 *  * 
         *****                    *                   ** 
```

---

# Uebung 3

## Perlenkette

Wir wollen die folgende Perlenkette programmieren:

![w:550 center](https://raw.githubusercontent.com/0xd61/csn-programming/main/assets/aufgabe3_1.png)

Die Perlenkette besteht aus 5 Kreisen mit schwarzem Rand und weisser Fuellung.

---

## Aufgabenstellung 3.1

Programmiere das angegebene Bild mithilfe der grafischen Grundelemente von Processing.

Du kannst das Template auf der naechsten Folie nutzen.

---

## Tipp 3.1

Schaue dir dazu die Funktionen [size](https://processing.org/reference/size_.html) und [ellipse](https://processing.org/reference/ellipse_.html) in der Referenz an.

```java
// Die Groesse des grafischen Ausgabefensters wird auf 550 Pixel
// in der Breite und 150 Pixel in der Hoehe festgelegt.
size(550, 150);
// Die Perlen werden durch vier Kreise von links nach rechts gezeichnet.
// Zum Zeichnen von Kreisen stellt Processing keine explizite Anweisung
// zur Verfuegung, zum Zeichnen von Ellipsen aber schon. Ellipsen haben
// zwei Durchmesser: einen fuer die Breite und einen fuer die Hoehe der
// Ellipse. Sind beide Durchmesser gleich, ergibt sich ein Kreis.
// Vier Kreise mit 100 Pixel Durchmesser
ellipse(75, 70, 100, 100);
```

---

## Testfall 3.1

Wenn deine Ausgabe (Groesse, Abstand und Farbe) dem Bild auf der Vorgabe entspricht, hast du alles richtig gemacht.

---

# Datentypen und Variablen

* Basis Baustein jeder Programmiersprache
* Platzhalter fuer Daten
* Logische Organisation durch verstaendliche Namen
* Legen fest welche Art von Werten gueltig ist
* Koennen selbst definiert werden

---

## Primitive Datentypen

| Name    | Bezeichung | Beschreibung    | Groesse      | Beispiel |
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
* Muessen definiert und deklariert werden
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

# Uebung 3 (Refactoring)

Ueberarbeite Aufgabe 3 und verwende Variablen fuer mehrfach verwendete Werte.

---

# Uebung 4

## Ghettoblaster

Zeichne den folgenden Ghettoblaster/Radio:

![w:400 center](https://raw.githubusercontent.com/0xd61/csn-programming/main/assets/aufgabe4_1.png)

---

## Aufgabenstellung 4.1

Erstelle ein Programm, welches den Ghettoblaster mit den verschiedenen Basisfunktionen um Linien, Kreise, Rechtecke zu zeichnen, erstellt.

Nutze Variablen fuer gleiche mehrfach verwendete Groessen.

---

## Tipp 4.1

Schaue dir in der Referenz die folgenden Funktionen an:

- [size()](https://processing.org/reference/size_.html)
- [background()](https://processing.org/reference/background_.html)
- [stroke()](https://processing.org/reference/stroke_.html)
- [strokeWeight()](https://processing.org/reference/strokeWeight_.html)
- [strokeCap()](https://processing.org/reference/strokeCap_.html)

Fortsetzung auf der naechsten Folie...

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

Oftmals hilft es, sich das Bild vorher auf ein Blatt Papier aufzumalen und die Groessen festzulegen.

---

## Testfall 4.1

Siehe Aufgabenstellung

---

# Casting von Datentypen

* Konvertieren von einem Datentyp in einen anderen
* Casten von einem Float in einen Integer schneidet das Komma ab
* Casten von einem String in einen Zahlentyp ist (ohne weiteres) nicht moeglich
* Explizites casten erflogt indem der Datentyp in Klammern vor die Variable geschrieben wird
* Impliziertes casten moeglich, solange kein Datenverlust passiert (z.B. int -> float)

---

## Beispiel

```java
int a = 5;
String b = a;        // ERROR!

float c = a; // c entspricht jetzt der Zahl 5.0f
c = c + 0.1;        // c entspricht jetzt der Zahl 5.1f
int d = (int)c;     // d entspricht jetzt der Zahl 5

// Einfaches runden auf eine Ganzzahl kann ueber casting erfolgen 
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

# Uebung 5

Rechnen mit Variablen und Datentypen

## Aufgabenbescheibung 5.1

Schreibe ein Programm, das die bei den Testfaellen stehenden Rechenaufgaben berechnet,
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

# Uebung 6

## Stoffwechselrate berechnen

Die Stoffwechselrate (Grundumsatz G) ist eine Goesse, die den Kalorienverbrauch (Energiemenge) eines Menschen pro Tag bestimmt.
Diese Energiemenge wird benoetigt um den Koeper am Leben zu halten.

---

## Aufgabenbeschreibung 6.1

Schreibe ein Programm, welches den Grundumsatz (Stoffwechselrate) nach der Harris-Benedict-Formel berechnet und die Ergebnisse fuer beide Geschlechter in der Konsole ausgibt.

```
Fuer Maenner:
G = 66,47+13,7*m +5*l-6,8*t

Fuer Frauen:
G = 655,1+9,6*m +1,8*l-4,7*t

l = Groesse in cm
m = Gewicht in kg
t = Alter in Jahren
```

---

## Tipp 6.1

Wenn du nicht weiter kommst, versuche folgendes:
- Speichere die Eingabegroessen als Variablen
- Berechne die Formeln fuer Mann und Frau in unterschiedlichen Variablen
- Schreibe das Ergebnis in die Konsole
- Achte auf den passenden Datentyp

---

## Testfall 6.1

- Gewicht: 58kg, Goesse: 180cm, Alter: 25 Jahre -> Mann: 1591.07 Kalorien pro Tag, Frau: 1418.4 Kalorien pro Tag
- Gewicht: 90kg, Goesse: 160cm, Alter: 45 Jahre -> Mann: 1793.47 Kalorien pro Tag, Frau: 1595.6 Kalorien pro Tag
- Gewicht: 45kg, Goesse: 176cm, Alter: 17 Jahre -> Mann: 1447.37 Kalorien pro Tag, Frau: 1324.0 Kalorien pro Tag

---

# Uebung 7

## Baumstammvolumen berechnen

Nachdem ein Baum gefaellt wurde, moechte der Schreiner wissen, wie viel Holz der Stamm hat. Dazu rechnen wir das Volumen mit der folgenden Formel aus:

![w:300 center](https://raw.githubusercontent.com/0xd61/csn-programming/main/assets/aufgabe7_1.png)

Der Durchmesser (D) ist in Zentimeter und die Laenge (L) in Meter angegeben.

---

## Aufgabenbeschreibung 7.1

Schreibe ein Programm, das nach der vorherigen Formel das Volumen eines Baumstamms berechnet

---

## Tipp 7.1

- Die Kreiszahl PI steht in Processing als Variable PI zur Verfuegung

---

## Testfall 7.1

- 10 Meter lang und 33 cm Durchmesser: 0.70685834
- 15 Meter lang und 32 cm Durchmesser: 1.2063715

---

# Uebung 8

## Koerperoverflaeche

Die Koerperoberflaeche eines Menschen kann nach folgender Formel berechnet werden:

![w:300 center](https://raw.githubusercontent.com/0xd61/csn-programming/main/assets/aufgabe8_1.png)

In der Formel is die Koerpergroesse (h) in cm und das Koerpergewicht (w) in kg angegeben. Das Ergebnis ist die Oberflaeche in m^2. 

---

## Aufgabenbeschreibung 8.1

Schreibe ein Programm, das die Koerperoberflaeche eines Menschen berechnet.

---

## Tipp 8.1

- Um die Wurzel zu berechnet kannst du die Funktion [sqrt()](https://processing.org/reference/sqrt_.html) verwenden.

---

## Testfall 8.1

- 1.80 m und 58 kg -> 1.7029387

---

# Uebung 9

## RGB nach CMYK

Farben beim Computer werden meit in RGB angegeben. Diese bescheiben den Anteil von Rot (R), Gruen (G) und Blau (B) im Zahlenbereich von 0 bis 255.
Beim Drucken wird normalerweise das CMYK-Format verwendet. Dabei handelt es sich um die Farben Cyan (C), Magenta (M), Gelb/Yellow (Y) und Schwarz/Key (K) im Zahlenbereich zwischen 0 und 1.

---

## Aufgabenbeschreibung 9.1

Schreibe ein Programm mit dem Farbwerte von RGB in CMYK mithilfe dieser Formeln umgewandelt werden koennen.

![w:300 center](https://raw.githubusercontent.com/0xd61/csn-programming/main/assets/aufgabe9_1.png)

---

## Tipp 9.1

- Das Maximum einer Zahl kannst du mir der Funktoin [max()](https://processing.org/reference/max_.html) berechnen.

---

## Testfall 9.1

- R: 75, G: 0, B: 130 -> C: 0.42307693, M: 1.0, Y: 0.0, K: 0.49019605

---

# Uebung 10

## Tic-Tac-Toe Spielfeld

In einer spaeteren Aufgabe wollen wir das Spiel Tic-Tac-Toe programmieren. Dafuer wird ein Spielfeld mit 9 Feldern benoetigt.

![w:300 center](https://raw.githubusercontent.com/0xd61/csn-programming/main/assets/aufgabe10_1.png)

---

## Aufgabenbeschreibung 10.1

Schreibe ein Programm, welches ein leeres Spielfeld fuer Tic-Tac-Toe erzeugt und darstellt.
Mache dabei Gebrauch von eigenen Variablen.

---

## Tipp 10.1

- Rechteck oder Linie zeichnen? Beides ist moeglich, aber ein Fall ist einfacher.
- Speichere wiederholende Zahlenwerte in einer Variable.

---

## Testfall 10.1

Siehe Beschreibung.

---

# Kontrollstrukturen

* Ablauf im Programm steuern
* Veraendern die Reihenfolge der ausgefuehrten Anweisungen
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
Achtung `break` nicht vergessen! Ansonsten wird der naechste Block auch ausgefuehrt.

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

## Wiederholungsanweisung (Schleifen)

### [While-Loop](https://processing.org/reference/while.html)

```java
int i = 0;
while(i<10) {
    // Anweisungen, die abgearbeitet werden sollen
    i++;
}

// Endlosschleife
while(true) {
    // Diese schleife wird nie aufhoeren, ausser sie wird mit einem Break beendet
}

```

---

## Wiederholungsanweisung (Schleifen)

### Vorzeitiges Beenden oder Ueberspringen

- Das Keyword [`continue`](https://processing.org/reference/continue.html) beendet den aktuellen Loop-Durchlauf und prueft die Bedingung erneut.
- Das Keyword [`break`](https://processing.org/reference/break.html) beendet den aktuellen Loop-Durchlauf ohne die Bedinung zu pruefen.

---
