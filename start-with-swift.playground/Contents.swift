import UIKit

var greeting = "Hello, playground"

// Função para dividir dois números inteiros
func divide(_ numero1: Int, _ numero2: Int) -> Double {
    return Double(numero1) / Double(numero2)
}

// Função para formatar um valor Double com até 4 casas decimais
func formatarComQuatroCasasDecimais(_ valor: Double) -> String {
    return String(format: "%.4f", valor)
}

// Função para verificar se uma idade corresponde a um adulto
func isAdulto(_ idade: Int) -> Bool {
    return idade >= 18
}

// Atribuição direta de valores
let numero1 = 10
let numero2 = 3
let idade = 22

// Utilização das funções com valores atribuídos diretamente
let resultado = divide(numero1, numero2)
print("Resultado da divisão: \(formatarComQuatroCasasDecimais(resultado))")

if isAdulto(idade) {
    print("Você é adulto.")
} else {
    print("Você não é adulto.")
}

