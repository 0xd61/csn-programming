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

---

# Whitespace und Kommentare

Unsere wichtigste Aufgabe als guter Software Entwickler ist es verständlichen Code zu schreiben.

```java
/*
 * Dieses Programm ist ein kleines Beispiel für Processing.
 * Es öffnet ein Fenster, welches eine von einem Ursprungspunkt
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
