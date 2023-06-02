// KOMMENTARE
// Zeilen mit einem // am Anfang sind Kommentare und werden vom
// Programm ignoriert.

// GLOBALE VARIABLEN
// sind überall im Programm verfügbar.
// Sie werden außerhalb einer Funktion deklariert. Variablennamen dürfen nur 1x deklariert werden.
// Deklarieren heißt den Datentyp und Variablennamen festlegen.
int hintergrund = 255;
float x_start_pos = 5.4;
boolean zeichne_weiss = true;

// Setup ist der Einstiegspunkt eines Programms. Nach der Erstellung der Variablen
// ist das das Erste, was im Programm ausgeführt wird.
void setup() {

    // LOKALE VARIABLEN
    // sind nur innerhalb des Blocks (innerhalb der {}) verfügbar, in dem sie erstellt wurden.
    // Sie werden innnerhalb einer Funktion deklariert.
    // Variablennamen dürfen nur 1x innerhalb der Funktion deklariert werden.
    // eine Variable kann aber mehrfach verwendet werden.
    int zahl = 6;
    
    // FUNKTIONSAUFRUFE
    // Nur Funktionen, welche aufgerufen werden, werden ausgeführt.
    // Funktionen können auch andere Funktionen aufrufen (in diesem Fall
    // rufen wir mehrere Funktionen innerhalb der setup-Funktion auf.

    // size(breite, höhe) legt die Fenstergröße fest
    size(400, 400);
    
    // Wenn die Funktion einen Rückgabewert hat, kann dieser in einer
    // Variablen gespeichert werden:
    int erstes_ergebnis = multipliziere_ganzzahlen(3, zahl);
    int zweites_ergebnis = multipliziere_ganzzahlen(erstes_ergebnis, 2);

    // println(text) gibt den angegeben Text auf der Konsole aus und springt in eine neue Zeile.
    // Text kann mit + verknüpft werden.
    println("Das erste Ergebnis ist: " + erstes_ergebnis);

    // print(text) gibt den angegeben Text auf der Konsole aus.
    // Um in eine neue Zeile zu springen muss ein \n angegeben werden
    print("Das zweite Ergebnis ist: " + zweites_ergebnis + "\n");

    // IF-ELSE ABFRAGE (Wenn-Sonst)
    // Bei if (bedingung) wird der nachfolgende Block (alles zwischen {}) ausgeführt,
    // wenn die Bedingung ein Boolean mit dem Wert "true" ist.
    // Der Block nach "else" wird ignoriert.
    if (zeichne_weiss) {
        // Ist eine Variable erstellt, kann ihr ein beliebiger Wert zugewiesen werden (muss dem Datentyp entsprechen).
        // setzt den Wert der globalen Variable auf 255
        hintergrund = 255;
    }
    // Bei else wird der nachfolgende Block ausgeführt, wenn die Bedingung nicht "true" ist.
    else {
        // setzt den Wert der globalen Variable auf 0
        hintergrund = 0;
    }

    // Ändert die Hintergrundfarbe auf den Wert der Variable "hintergrund".
    background(hintergrund);


    // If-Else Abfragen können auch verknüpft werden
    // && -> und
    // || -> oder
    //
    // Es können immer nur Bedinungen abgefragt werden. Bedingungen erhält man mit
    // Vergleichsoperatoren.
    // == -> gleich
    // != -> ungleich
    // <  -> kleiner
    // <= -> kleiner oder gleich
    // >  -> größer
    // >= -> größer oder gleich
    //
    // hier z.B.: Wenn Ergebnis von zahl_ist_groesser_zwei true ist
    //            und das Ergebnis von addiere_kommazahlen gleich 15.0 ist
    //            oder die Variable zahl nicht den Wert 6 hat,
    //            dann wird der Block ausgeführt.
    if ((zahl_ist_groesser_zwei(erstes_ergebnis) && addiere_kommazahlen(4.2, 7.5, 3.3) == 15.0) || zahl != 6) {
        println("Bedingung wurde erfüllt!");

        // If Abfragen können auch verschachtelt werden. Wichtig: Die der Block der "inneren" Abfrage muss vor dem
        // Block der äußeren Abfrage enden.
        if (zahl_ist_groesser_zwei(erstes_ergebnis * -1) == false) {
            println("Innere Bedingung wurde erfüllt!");
        } else {
            println("Innere Bedingung wurde nicht erfüllt!");
        }
    }
}

// Draw wird direkt nach der Setup Funktion aufgerufen.
// Die draw() Funktion wird periodisch z.B. 24x pro Sekunde aufgerufen.
void draw() {

    background(hintergrund);
  
    int linie_x = 0;
    int linie_y = 0;

    // CASTING
    // Werte können von einem Datentyp in einen anderen umgewandelt werden, indem man den gewünschten Datentyp
    // in Klammern vor die Variable schreibt.
    // Achtung, es können Daten verloren gehen. Z.B. bei der Umwandlung von Kommazahl in Ganzzahl wird
    // alles nach dem Komma abgeschnitten.
    int begin = (int)x_start_pos;
    
    // FOR-SCHLEIFEN
    // werden genutzt, wenn Code mehrfach ausgeführt werden soll.
    // for(startwert; bedingung; veränderung) {
    // ...
    // }
    // Alles innerhalb des Block einer Schleife wird so oft durchgeführt, bis die Bedinung false ist.
    // Am Ende jedes Durchlaufs wird die Veränderung durchgeführt.
    // x++    -> Variable x um 1 erhöhen
    // x += 5 -> Zum aktuellen Wert der Variablen x 5 addieren und das Ergebnis wieder in x speichern
    // x--    -> Variable x um 1 verringern
    // x -= 2 -> Vom aktuellen Wert 2 abziehen und das Ergebnis wieder in x speichern.
    for(int x = 0; x < 10; x++) {
        linie_x = begin + x;
        linie_y = 20;
        x_start_pos = (float)linie_x;

        // Schleifen können verschachtelt werden. Die äußere Schleife wird erst weiter ausgeführt,
        // wenn alle Durchläufe der inneren Schleife fertig sind.
        for (int i = 0; i < 10; i++) {
            // line(x1, y1, x2, y2) zeichnet eine Linie vom Punkt (x1, y1) nach (x2, y2)
            line(linie_x, linie_y, linie_x + i * 10, linie_y + i * 10);
        }        
    }


    // mouseX und mouseY sind globale Variablen, die in denen die aktuelle Maus Position gespeichert ist
    // ellipse(x-Position, y-Position, Breite, Höhe) erstellt einen Kreis
    ellipse(mouseX, mouseY, 20, 20);

    // delay(1000) unterbricht das Programm für 1000 Millisekunden
    delay(1000);
}


// FUNKTIONEN
//
// Wir können unsere eigenen Funktionen erstellen. Sie müssen definiert werden, damit sie aufgerufen werden können.
// Die Definition hat mehrere Teile:
// "Rückgabetyp" "Funktionsname"("optionale Parameter, worüber wir beim Aufruf der Funktion Werte an sie weitergeben können") {
//     ... Code innerhalb der Funktion
// }
// Rückgabetypen können sein:
// void    -> kein Rückgabewert
// int     -> Ganzzahl
// float   -> Kommazahl
// String  -> Text
// boolean -> Bedingungs Wert (true/false)

int multipliziere_ganzzahlen(int a, int b) {
    int ergebnis = a + b;
    // Wenn eine Funktion ein Rückgabetyp hat, der nicht "void" ist, muss es in der Funktion
    // ein "return" geben, über das der ensprechende Wert zurückgegeben wird. Der "Aufrufer" der Funktion
    // kann diesen Wert dann in einer Variable speichern (siehe oben).
    return ergebnis;
}

float addiere_kommazahlen(float erste, float zweite, float dritte) {
    float ergebnis = erste + zweite + dritte;
    return ergebnis;

}

boolean zahl_ist_groesser_zwei(int zahl) {
    boolean ergebnis = zahl > 2;
    return ergebnis;
}
