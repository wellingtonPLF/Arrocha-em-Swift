//
//  numeroAleatorio.swift
//  ArrochaNumero
//
//  Created by SetsuHa ToAll on 07/11/20.
//  Copyright © 2020 SetsuHa ToAll. All rights reserved.
//

import Foundation

class numeroAleatorio{
    private var inicio: Int
    private var fim: Int
    private var numeroR : Int
    
    init(inicio: Int,fim : Int){
        self.inicio = inicio
        self.fim = fim
        self.numeroR = Int.random(in: self.inicio+1..<self.fim)
    }
    
    func getInicio() -> Int{
        return self.inicio
    }
    
    func getFim() -> Int{
        return self.fim
    }
    
    func getnumber() -> Int{
        return self.numeroR
    }
    
    func dif() -> Int{
        return self.fim - self.inicio
    }
    
    func newRandom(){
        self.numeroR = Int.random(in: self.inicio+1..<self.fim)
    }
    
    func calculo(escolhido: Int){
        if(escolhido < self.numeroR){
            if(escolhido > self.inicio){
                self.inicio = escolhido
            }
            else{
                print("\nFora do Intervalo!\nEscolha um numero dentro do Intervalo!\n")
            }
        }
        else if(escolhido > self.numeroR){
            if(escolhido < self.fim){
                self.fim = escolhido
            }
            else{
                print("\nFora do Intervalo!\nEscolha um numero dentro do Intervalo!\n")
            }
        }
    }
}
