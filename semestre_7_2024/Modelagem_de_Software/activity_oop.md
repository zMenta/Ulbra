# Modelagem de software OOP exercise
- Lucas V. M. Brentano
- 05/03/2024
Using a pseudo language (with a mix of gdscript) to complete the exercises.

## Student
- Definition
class_name Student
var name
var age
var course
var registration

func mostrarInformacoes():
    print(self)

- Usage
var student = Student.new()
student.mostratInformacoes()


## Beach
- Definition
class_name Beach
var name
var locale
var temperature_water
var sand_type

func informacoesPraia():
    print(self)

- Usage
var beach = Beach.new()
beach.informacoesPraia()


## Flights
- Definition
class_name Voona
var air_company
var origin
var destiny
var flight_date
var ticket_price

func InformacoesVoo():
    print(self)

- Usage
var flight = Voona.new()
flight.air_company = "Test"
flight.origin = "A"
flight.destiny = "B"
flight.flight_date = "15th of February 3028"
flight.ticket_price = 8532
flight.InformacoesVoo()
