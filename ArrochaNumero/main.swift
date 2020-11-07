//
//  main.swift
//  ArrochaNumero
//
//  Created by SetsuHa ToAll on 07/11/20.
//  Copyright © 2020 SetsuHa ToAll. All rights reserved.
//

import Foundation

print("Um numero será sorteado entre 1 e 100, o jogador vence quando o numero sorteado estiver ao lado dos dois ultimos valores que o mesmo escolheu, caso a escolha seja os numeros limites do intevalo ou o numero sorteado, o jogo acaba e o jogador é derrotado.\n")
print("Clique em Enter para começar o jogo: [Enter]")
var x = readLine()

var numero = numeroAleatorio(inicio: 1, fim: 100)
print("Numero Sorteado: \(numero.getnumber())\n/O jogo começou/ ")

while(true){
    print("................................\n Escolha um numero entre (\(numero.getInicio()),\(numero.getFim())):")
    let y = Int(readLine()!)!
    if (y == numero.getInicio() || y == numero.getFim()){
        print("DERROTA!")
        break
    }
    else{
        if(y == numero.getnumber()){
            print("Você escolheu o numero Sorteado!")
            print("DERROTA!")
            break
        }
        else{
            numero.calculo(escolhido: y)
            if(numero.dif() == 2){
                print("Ganhou!")
                break
            }
        }
    }
}

