import UIKit

var greeting = "Hello, playground"


// Tipos primitivos em Swift
let inteiro: Int = 42
let numeroGrande: Int64 = 9000000000
let positivo: UInt = 42
let pontoFlutuante: Double = 3.14159
let booleano: Bool = true
let caractere: Character = "A"
let texto: String = "Olá, Swift!"
let opcional: Int? = nil // Pode ser nil ou conter um valor inteiro

// Impressão dos valores
print("Inteiro: \(inteiro)")
print("Número Grande: \(numeroGrande)")
print("Positivo: \(positivo)")
print("Ponto Flutuante: \(pontoFlutuante)")
print("Booleano: \(booleano)")
print("Caractere: \(caractere)")
print("Texto: \(texto)")

// Para o opcional, podemos usar a interpolação que lida com nil de forma segura
print("Opcional: \(opcional ?? 0)") // Substitui nil por 0



// Declaração de uma variável com `var`
var mensagem = "Olá, mundo!"
print(mensagem) // Saída: Olá, mundo!

// Modificando o valor da variável
mensagem = "Olá, Swift!"
print(mensagem) // Saída: Olá, Swift!

// Modificando o valor novamente
mensagem = "Estou aprendendo Swift."
print(mensagem) // Saída: Estou aprendendo Swift.


// Declaração de uma constante com `let`
let saudacao = "Olá, mundo!"
print(saudacao) // Saída: Olá, mundo!

// Tentar modificar o valor de `saudacao` resultará em um erro de compilação
// saudacao = "Olá, Swift!" // Erro: Cannot assign to value: 'saudacao' is a 'let' constant

/**
 5. Quando Usar var e Quando Usar let
 Use let quando você sabe que o valor não deve mudar. Isso ajuda a evitar bugs e torna o código mais seguro.
 Use var quando o valor precisa ser atualizado ou modificado ao longo do tempo.
 */

//---------------------------------------------------------
//Operadores aritméticos
let soma = 5 + 3          // Adição
let subtracao = 10 - 4    // Subtração
let multiplicacao = 2 * 6  // Multiplicação
let divisao = 20 / 4      // Divisão
let resto = 9 % 4         // Módulo (resto da divisão)

print("Soma: \(soma)")               // Saída: Soma: 8
print("Subtração: \(subtracao)")     // Saída: Subtração: 6
print("Multiplicação: \(multiplicacao)") // Saída: Multiplicação: 12
print("Divisão: \(divisao)")         // Saída: Divisão: 5
print("Resto: \(resto)")             // Saída: Resto: 1
//---------------------------------------------------------
//Operadores Lógicos
let igual = (5 == 5)            // Igual a
let diferente = (10 != 8)       // Diferente de
let maiorQue = (7 > 3)          // Maior que
let menorQue = (2 < 8)          // Menor que
let maiorOuIgual = (6 >= 6)     // Maior ou igual a
let menorOuIgual = (4 <= 5)     // Menor ou igual a


print("Igual: \(igual)")                 // Saída: Igual: true
print("Diferente: \(diferente)")         // Saída: Diferente: true
print("Maior que: \(maiorQue)")          // Saída: Maior que: true
print("Menor que: \(menorQue)")          // Saída: Menor que: true
print("Maior ou igual: \(maiorOuIgual)") // Saída: Maior ou igual: true
print("Menor ou igual: \(menorOuIgual)") // Saída: Menor ou igual: true
//---------------------------------------------------------
// Operadores Lógicos
let eLogico = (true && false)    // E lógico
let ouLogico = (true || false)   // Ou lógico
let naoLogico = !true            // Não lógico

print("E lógico: \(eLogico)")    // Saída: E lógico: false
print("Ou lógico: \(ouLogico)")  // Saída: Ou lógico: true
print("Não lógico: \(naoLogico)")// Saída: Não lógico: false
//---------------------------------------------------------
//Operadores de Atribuição
var numero = 10                // Atribuição simples
numero += 5                    // Atribuição aditiva (equivalente a numero = numero + 5)
numero -= 3                    // Atribuição subtrativa (equivalente a numero = numero - 3)
numero *= 2                    // Atribuição multiplicativa (equivalente a numero = numero * 2)
numero /= 4                    // Atribuição divisiva (equivalente a numero = numero / 4)
numero %= 3                    // Atribuição modular (equivalente a numero = numero % 3)

print("Resultado final: \(numero)") // Saída: Resultado final: 2
//---------------------------------------------------------


let num = 10

if num > 10 {
    print("O número é maior que 10")
} else if num == 10 {
    print("O número é igual a 10")
} else {
    print("O número é menor que 10")
}
// Saída: O número é igual a 10

//switch
let letra = "a"

switch letra {
case "a":
    print("É a letra A")
    fallthrough // Permite que o próximo caso seja executado
case "b":
    print("Pode ser A ou B")
default:
    print("Outra letra")
}
// Saída:
// É a letra A
// Pode ser A ou B

//---------------------------------------------------------
// Estrutura de repetição
let nums = [1, 2, 3, 4, 5]

for numero in nums {
    print(numero)
}
//---------------------------------------------------------
var meuContador = 5

while meuContador > 0 {
    print("Contagem regressiva: \(meuContador)")
    meuContador-=1
}

//---------------------------------------------------------
var numeroSorteado = 0

repeat {
    numeroSorteado = Int.random(in: 1...10)
    print("Número sorteado: \(numeroSorteado)")
} while numeroSorteado != 7
// Saída: Vai continuar sorteando até que o número sorteado seja 7


//---------------------------------------------------------
for i in 1...5 {
    if i == 3 {
        break  // Interrompe o loop quando `i` é igual a 3
    }
    print("Número: \(i)")
}
// Saída:
// Número: 1
// Número: 2
//---------------------------------------------------------
for i in 1...5 {
    if i % 2 == 0 {
        continue  // Pula o resto do loop atual quando `i` é par
    }
    print("Número ímpar: \(i)")
}
// Saída:
// Número ímpar: 1
// Número ímpar: 3
// Número ímpar: 5

//---------------------------------------------------------
// Declaração de uma função simples
func saudacion() {
    print("Olá, bem-vindo ao curso de Swift!")
}

// Chamada da função
saudacion()
// Saída: Olá, bem-vindo ao curso de Swift!
//---------------------------------------------------------
// Função com parâmetros e retorno
func soma(a: Int, b: Int) -> Int {
    return a + b
}

let resultado = soma(a: 5, b: 3)
print("A soma é \(resultado)")
// Saída: A soma é 8


// Função com múltiplos parâmetros
func apresentar(nome: String, idade: Int) {
    print("Meu nome é \(nome) e eu tenho \(idade) anos.")
}

apresentar(nome: "Vinícius", idade: 22)
// Saída: Meu nome é Vinícius e eu tenho 22 anos.


// Função com parâmetro opcional
func saudacaoPersonalizada(nome: String, apelido: String? = nil) {
    if let apelidoNaoNulo = apelido {
        print("Olá \(apelidoNaoNulo), seu nome completo é \(nome).")
    } else {
        print("Olá \(nome), não tenho apelido registrado.")
    }
}

saudacaoPersonalizada(nome: "Vinícius")
// Saída: Olá Vinícius, não tenho apelido registrado.

saudacaoPersonalizada(nome: "Vinícius", apelido: "Vini")
// Saída: Olá Vini, seu nome completo é Vinícius.



// Função que recebe outra função como parâmetro
func executarOperacao(_ operacao: (Int, Int) -> Int, comNumero a: Int, eNumero b: Int) -> Int {
    return operacao(a, b)
}

let multiplicacion = { (a: Int, b: Int) -> Int in
    return a * b
}

let resultadoMultiplicacion = executarOperacao(multiplicacion, comNumero: 4, eNumero: 3)
print("Resultado da multiplicação: \(resultadoMultiplicacion)")
// Saída: Resultado da multiplicação: 12


// Função que retorna outra função
func escolherOperacao(_ tipo: String) -> (Int, Int) -> Int {
    if tipo == "soma" {
        return { (a: Int, b: Int) -> Int in
            return a + b
        }
    } else {
        return { (a: Int, b: Int) -> Int in
            return a * b
        }
    }
}

let operacaoEscolhida = escolherOperacao("soma")
let resultadoOperacao = operacaoEscolhida(10, 20)
print("Resultado da operação escolhida: \(resultadoOperacao)")
// Saída: Resultado da operação escolhida: 30






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
let res = divide(numero1, numero2)
print("Resultado da divisão: \(formatarComQuatroCasasDecimais(res))")

if isAdulto(idade) {
    print("Você é adulto.")
} else {
    print("Você não é adulto.")
}
