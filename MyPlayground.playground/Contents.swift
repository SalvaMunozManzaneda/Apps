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
