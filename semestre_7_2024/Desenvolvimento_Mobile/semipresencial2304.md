# Desenvolvimento de Sistemas Móveis
Prof. Daniel Souza
SEMIPRESENCIAL - 23/03

1. Faça uma pesquisa sobre DART + Programação orientada a objetos, inclua em sua pesquisa trechos de código.

# Contents
## Forewords 
In this document I'll talk briefly about how Object Oriented programming in Dart works and some concepts.
I hope you enjoy your time reading this document.

Also thank you Daniel for being a great teacher that reach out to various students in different skill levels and interests.

## Introduction
Dart is a language that strongly follows the Object Oriented paradigm. Being able to create classes,instances that then becomes objects and with them we build everything that we need to build our software.

## Classes
Classes are what we can call *blueprints*. They define how an **object** is(properties), and how it behaves(methods).
But it's not the object itself, is just the "plan" on how to create them.


Here is how we can define a class in Dart:
```dart
class Pencil {}
```

Here we are creating a *Pencil* class.


If we imagine that this Pencil class has attributes of a color and length, we can declare it like the following:
```dart
class Pencil {
    String color;
    double length;
}
```


Now if we want to implement a behavior of *"Write"*:
```dart
class Pencil {
    String color;
    double length;

    void Write(){
        print("Writing stuff!");
    }
}
```
