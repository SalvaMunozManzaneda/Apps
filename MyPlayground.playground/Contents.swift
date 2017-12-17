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

//Optional

//se usa para poder dejar una variable a nulo, y tiene que llevar de que tipo es. (int string double bool..)
var age : Int? = nil

//puedes pasar un string a int
var stringAge = "26"

var ageInt = Int(stringAge) //aqui lo envuelves como un int que era string "wrapping"
print(ageInt)//esto es un opcional, si le pasas un numero funciona, si le pasas al string una palabra le guarda un nil.
print(ageInt!)//el simbolo de exclamacion sirve para quitarle el opcional y dejarlo como variable normal (int string...) "unwrapping"

//un nil no puede mostrarse por pantalla, hay que "desenvolverlo" (!)
var gominolaFav : String? = nil

if gominolaFav != nil {//si es distinto de nil, se puede mostrar
    print(gominolaFav!)
}
//otra opcion
if let favorita = gominolaFav { //solo guardas en favorita si es algo "desenvuelto", si es opcional no se guarda (le faltaria pasarlo a "unwrapping" (!)
    print(favorita)
}

//Clases y Herencia
//clase
class Animal {
    var name = ""
    var age = 0
}

class Dog : Animal {//dog hereda los atributos de animal.
    var colorPelo = "blanco con manchas"
}

var miPerro = Dog()
miPerro.age = 12//atributo de Animal()
miPerro.colorPelo = "marron" //atributo de Dog()

var animalAleatorio : Animal = Dog() //asi no funcionaria, solo le daria atributos de animal
let unAnimal = animalAleatorio as! Dog //aqui "forzamos" a que sea un Dog() (Animal aleatorio ya es de la clase Animal() y unAnimal es animalAleatorio "forzado" a Dog()

class Monkey : Animal {
    var hands = true
}

if let otroAnimal = animalAleatorio as? Dog {//Entramos dentro del if si animalAleatorio funciona como Dog(), si cambiaramos a Monkey() no funcionaria, ya que arriba decimos que es un Dog()
    print(otroAnimal.colorPelo)
}








