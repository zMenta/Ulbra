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


Now if we want to implement a behavior of *"write"*:
```dart
class Pencil {
    String color = "Black";
    double length = 6.5;

    void write(){
        print("Writing stuff!");
    }
}
```

## Objects
Now objects, are instances of our classes. In our development cycle we create,modify and delete many objects.

Following our last example in the **Classes** section, we can create an object like this:

```dart
Pencil brandNewPencil = Pencil();
```

And if we want to call our *write* method:
```dart
Pencil brandNewPencil = Pencil();

brandNewPencil.write();
```
Simple right?



But now what we do if we want to create a diverse set of pencils? I'm sure that only having Black colored pencils can be boring.

We can change the values like this:
```dart
Pencil brandNewPencil = Pencil();

brandNewPencil.color = "Red";
```
Now we have created a black pencil, then modified it's color value to red.

## Constructors 
But I'm sure that creating a diverse set of pencils and changing their colors one by one can be tiresome. But luckily Constructors are here to help us!

Constructors are methods that are called when an objects is created.



Looking back at our Pencil class, when creating a constructor is good practice to call the constructor method the same name as the class.
```dart
class Pencil {
    String color;
    double length;

    // I'm a constructor
    Pencil(this.color, this.length);

    void write(){
        print("Writing stuff!");
    }
}
```
Note that we also removed the default values of the *color* and *length* properties.
Also note that we are using the **this** keyword before writing the class properties, using *this*, we can make sure that the property is in the scope of that instance, and not related to any other property or variable with that same name.


Now if we want to create a new Pencil object, we do the following:
```dart
Pencil bluePencil = Pencil("Blue", 6.5);
Pencil redPencil = Pencil("Red", 6.5);
Pencil shortPencil = Pencil("Black", 2.5);
```
