//
//  main.swift
//  tp
//
//  Created by Maxime Britto on 29/09/2016.
//  Copyright © 2016 mbritto. All rights reserved.
//

import Foundation

//Déclarez vos fonctions en dessous de cette ligne
func exercice1() {
    print("Entrez votre prénom :")
    let valeurSaisie = readText()
    print("Bonjour \(valeurSaisie) !")
}

func exercice2() {
	print("Veuillez saisir une première note :")
	let valeurSaisie1 = readDouble()
	print("Veuillez saisir la deuxième note :")
	let valeurSaisie2 = readDouble()
	print("Veuillez saisir la troisième note :")
	let valeurSaisie3 = readDouble()
	let moyenne = (valeurSaisie1 + valeurSaisie2 + valeurSaisie3) / 3
	print("La moyenne de ces trois notes est de \(moyenne)")
}

func exercice3() {
	print("Veuillez saisir la base du triangle :")
	let valeurBase = readDouble()
	print("Veuillez saisir la hauteur du triangle :")
	let valeurHauteur = readDouble()
	let surface = (valeurBase * valeurHauteur) / 2
	print("La surface du triangle est de \(surface)")
}

func exercice4() {
	print("Veuillez saisir le rayon du cercle :")
	let valeurRayon = readDouble()
	let PI = 3.14159265
	let surface = PI * valeurRayon * valeurRayon
	print("La surface du cercle est de \(surface)")
}

func exercice5() {
	print("Veuillez saisir un entier :")
	let valeurInt = readInt()
	var factorielle:Int = 1
	for i:Int in 1...valeurInt {
		factorielle = factorielle * i
	}
	print("La factorielle de \(valeurInt) est de \(factorielle)")
}

func exercice6() {
	print("Combien de notes avez-vous à saisir :")
	let nbNotes = readInt()
	var somme:Double = 0
	var note:Double
	for _:Int in 1...nbNotes {
		print("Veuillez saisir un note :")
		note = readDouble()
		somme = somme + note
	}
    let moyenne:Double = (somme / Double(nbNotes))
	print("La moyenne des \(nbNotes) est de \(moyenne)")
}

func exercice7() {
	let nbToFind:Int = generateRandomNumber(min:1, max:100)
	var nbTries:Int = 0
	var nbInput:Int = 0
	repeat {
		print("Veuillez saisir un nombre :")
		nbInput = readInt()
		if (nbInput < nbToFind) {
			print("Plus")
		} else if (nbInput > nbToFind) {
			print("Moins")
		}
        nbTries = nbTries + 1
	} while (nbToFind != nbInput)
	print("Nombre trouvé en \(nbTries) coups.")
}

func exercice8() {
	var nbMatchesRemaining:Int = 20
	var currentPlayer:Int = 2
    var nbMatchesSelected:Int = 0
	while (nbMatchesRemaining > 0) {
		if (currentPlayer == 1) {
			currentPlayer = 2
		} else {
			currentPlayer = 1
		}
		repeat {
			print("Joueur \(currentPlayer) veuillez saisir un nombre d'allumettes (de 1 à 3) :")
			nbMatchesSelected = readInt()
		} while (nbMatchesSelected < 1 || nbMatchesSelected > 3)
		nbMatchesRemaining = nbMatchesRemaining - nbMatchesSelected
        print("Il reste \(nbMatchesRemaining) allumettes.")
	}
	print("Le joueur \(currentPlayer) a perdu.")
}

// The first player to play is chosen randomly
// Player 1 is human
// Player 2 is IA
func exercice8IA() {
	var nbMatchesRemaining:Int = 20
	var currentPlayer:Int = generateRandomNumber(min:1, max:2)
    var nbMatchesSelected:Int = 0
	while (nbMatchesRemaining > 0) {
		if (currentPlayer == 1) {
			currentPlayer = 2
		} else {
			currentPlayer = 1
		}
		if (currentPlayer == 1) {
			repeat {
				print("Joueur \(currentPlayer) veuillez saisir un nombre d'allumettes (de 1 à 3) :")
				nbMatchesSelected = readInt()
			} while (nbMatchesSelected < 1 || nbMatchesSelected > 3)
		} else {
if (nbMatchesRemaining == 1) {
	nbMatchesSelected = 1
} else if (nbMatchesRemaining % 4 != 1) {
	nbMatchesSelected = ((nbMatchesRemaining - 1) % 4)
} else {
	nbMatchesSelected = generateRandomNumber(min:1, max:3)
}
			switch nbMatchesRemaining {
				case 1:
					nbMatchesSelected = 1
				case 2, 6, 10, 14, 18:
					nbMatchesSelected = 1
				case 3, 7, 11, 15, 19:
					nbMatchesSelected = 2
				case 4, 8, 12, 16, 20:
					nbMatchesSelected = 3
				default:
					nbMatchesSelected = generateRandomNumber(min:1, max:3)
			}
		}
		nbMatchesRemaining = nbMatchesRemaining - nbMatchesSelected
		print("Il reste \(nbMatchesRemaining) allumettes.")
	}
	print("Le joueur \(currentPlayer) a perdu.")
}

//Commencez vos instructions en dessous de cette ligne
exercice1()
/*
exercice2()
exercice3()
exercice4()
exercice5()
exercice6()
exercice7()
exercice8()
exercice8IA()
*/
