//: Playground - noun: a place where people can play

// Arrays
var miPrimerArray : [Int] = [2, 17, 23, 46]

miPrimerArray.insert(8, at: 1)

var miSegundoArray = ["hola", "que", "?"]

miSegundoArray.insert("tal", at: 2)

//Eliminar el 46

miPrimerArray.remove(at: 4)
print(miPrimerArray)

//cambiar el numero 23 por el 22

miPrimerArray[3] = 22
print(miPrimerArray)

//Funciones
func hello(){
    print("Hello world")
}
hello()

func param(elParametro:String){
    print(elParametro + "usado")
}

param(elParametro: "muy ")

func multiplicar(numero1: Int, numero2: Int){
    print(numero1 * numero2)
}
multiplicar(numero1: 3, numero2: 3)

func devolverSuma(numero1: Int, numero2: Int) -> Int{
    return numero1 + numero2
}
devolverSuma(numero1: 2, numero2: 12)

//Clases
class Persona {
    var nombre = ""
    var age = 0
}
//Aqui creamos el Objeto de persona
var persona1 = Persona()
persona1.age = 26
persona1.nombre = "Salvador"

func sacarPantallaPersona (persona : Persona){
    print("me llamo \(persona.nombre) y tengo \(persona.age) años")
}
sacarPantallaPersona(persona : persona1)



