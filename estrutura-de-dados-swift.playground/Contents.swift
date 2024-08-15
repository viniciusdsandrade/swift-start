import UIKit

// Array de inteiros
var numeros: [Int] = [1, 2, 3, 4, 5]

// Array de strings
var nomes: [String] = ["Alice", "Bob", "Charlie"]

// Array vazio de inteiros
var vazio: [Int] = []


// Acessando elementos pelo índice
let primeiroNumero = numeros[0]
let segundoNome = nomes[1]

print("Primeiro número: \(primeiroNumero)")
// Saída: Primeiro número: 1

print("Segundo nome: \(segundoNome)")
// Saída: Segundo nome: Bob

// Adicionando elementos
numeros.append(6)
nomes.append("David")

// Modificando um elemento existente
numeros[2] = 10
nomes[0] = "Ana"

// Removendo elementos
numeros.remove(at: 1)
nomes.removeLast()

print("Números modificados: \(numeros)")
// Saída: Números modificados: [1, 10, 4, 5, 6]

print("Nomes modificados: \(nomes)")
// Saída: Nomes modificados: ["Ana", "Charlie"]


// Iterando com for-in
for numero in numeros {
    print("Número: \(numero)")
}
// Saída:
// Número: 1
// Número: 10
// Número: 4
// Número: 5
// Número: 6

// Iterando com índice
for i in 0..<nomes.count {
    print("Nome \(i + 1): \(nomes[i])")
}
// Saída:
// Nome 1: Ana
// Nome 2: Charlie


// Iterando com for-in
for numero in numeros {
    print("Número: \(numero)")
}
// Saída:
// Número: 1
// Número: 10
// Número: 4
// Número: 5
// Número: 6

// Iterando com índice
for i in 0..<nomes.count {
    print("Nome \(i + 1): \(nomes[i])")
}
// Saída:
// Nome 1: Ana
// Nome 2: Charlie


// Dicionário com chaves String e valores Int
var idades: [String: Int] = ["Alice": 25, "Bob": 30, "Charlie": 35]

// Dicionário vazio
var capitais: [String: String] = [:]


// Acessando um valor pela chave
let idadeBob = idades["Bob"]

print("Idade do Bob: \(idadeBob!)")
// Saída: Idade do Bob: 30


// Adicionando um novo par chave-valor
idades["David"] = 40

// Modificando um valor existente
idades["Alice"] = 26

// Removendo um par chave-valor
idades.removeValue(forKey: "Charlie")

print("Idades modificadas: \(idades)")
// Saída: Idades modificadas: ["Bob": 30, "Alice": 26, "David": 40]

// Iterando sobre as chaves e valores
for (nome, idade) in idades {
    print("\(nome) tem \(idade) anos.")
}
// Saída:
// Bob tem 30 anos.
// Alice tem 26 anos.
// David tem 40 anos.




//--------------------------------------------------------
// Declaração de um conjunto de inteiros
var numerosUnicos: Set<Int> = [1, 2, 3, 4, 5]

// Adicionando um elemento
numerosUnicos.insert(6)

// Tentando adicionar um elemento repetido (não terá efeito)
numerosUnicos.insert(3)

// Removendo um elemento
numerosUnicos.remove(2)

print("Conjunto de números únicos: \(numerosUnicos)")
// Saída: Conjunto de números únicos: [5, 6, 3, 4, 1]


let conjuntoA: Set<Int> = [1, 2, 3, 4]
let conjuntoB: Set<Int> = [3, 4, 5, 6]

// União
let uniao = conjuntoA.union(conjuntoB)
print("União: \(uniao)")
// Saída: União: [6, 2, 4, 5, 3, 1]

// Interseção
let intersecao = conjuntoA.intersection(conjuntoB)
print("Interseção: \(intersecao)")
// Saída: Interseção: [3, 4]

// Diferença
let diferenca = conjuntoA.subtracting(conjuntoB)
print("Diferença: \(diferenca)")
// Saída: Diferença: [2, 1]


// Declarando uma tupla
let pessoa = (nome: "Vinícius", idade: 22)

// Acessando os elementos da tupla
print("Nome: \(pessoa.nome), Idade: \(pessoa.idade)")
// Saída: Nome: Vinícius, Idade: 22

// Desconstruindo uma tupla
let (nome, idade) = pessoa
print("Nome: \(nome), Idade: \(idade)")
// Saída: Nome: Vinícius, Idade: 22


// Função que retorna uma tupla
func calcularAreaEPerimetro(largura: Double, altura: Double) -> (area: Double, perimetro: Double) {
    let area = largura * altura
    let perimetro = 2 * (largura + altura)
    return (area, perimetro)
}

// Usando a função
let resultados = calcularAreaEPerimetro(largura: 5.0, altura: 3.0)
print("Área: \(resultados.area), Perímetro: \(resultados.perimetro)")
// Saída: Área: 15.0, Perímetro: 16.0


var stack: [Int] = []

// Adicionando elementos à pilha
stack.append(10)
stack.append(20)
stack.append(30)

// Removendo o último elemento (topo da pilha)
let topo = stack.popLast()
print("Topo da pilha: \(topo!)")
// Saída: Topo da pilha: 30

print("Pilha atual: \(stack)")
// Saída: Pilha atual: [10, 20]


var queue: [String] = []

// Adicionando elementos à fila
queue.append("Primeiro")
queue.append("Segundo")
queue.append("Terceiro")

// Removendo o primeiro elemento (frente da fila)
let primeiro = queue.removeFirst()
print("Primeiro na fila: \(primeiro)")
// Saída: Primeiro na fila: Primeiro

print("Fila atual: \(queue)")
// Saída: Fila atual: ["Segundo", "Terceiro"]


// Declaração de enum básica
enum DiaDaSemana {
    case segunda
    case terça
    case quarta
    case quinta
    case sexta
    case sábado
    case domingo
}

// Usando o enum
let hoje: DiaDaSemana = .sexta
print("Hoje é: \(hoje)")
// Saída: Hoje é: sexta


// Declaração de enum com valores associados
enum ResultadoTeste {
    case aprovado
    case reprovado(mensagem: String)
}

// Usando o enum com valores associados
let res: ResultadoTeste = .reprovado(mensagem: "Nota insuficiente")

switch res {
case .aprovado:
    print("Você foi aprovado!")
case .reprovado(let mensagem):
    print("Você foi reprovado. Motivo: \(mensagem)")
}
// Saída: Você foi reprovado. Motivo: Nota insuficiente


// Declaração de enum com métodos
enum OperacaoMatematica {
    case soma
    case subtração
    case multiplicação
    case divisão

    func calcular(_ a: Double, _ b: Double) -> Double {
        switch self {
        case .soma:
            return a + b
        case .subtração:
            return a - b
        case .multiplicação:
            return a * b
        case .divisão:
            return b != 0 ? a / b : Double.nan // Evita divisão por zero
        }
    }
}

// Usando o enum com método
let operacao = OperacaoMatematica.multiplicação
let resultado = operacao.calcular(4, 5)
print("Resultado: \(resultado)")
// Saída: Resultado: 20.0

// Declarando um optional
var name: String? = "Vinícius"

// Verificando se o optional contém um valor
if let nomeDesembrulhado = name {
    print("Nome: \(nomeDesembrulhado)")
} else {
    print("Nome não está disponível.")
}
// Saída: Nome: Vinícius


// Usando if let
func imprimirIdade(_ idade: Int?) {
    if let idadeDesembrulhada = idade {
        print("Idade: \(idadeDesembrulhada)")
    } else {
        print("Idade não fornecida.")
    }
}

imprimirIdade(25)  // Saída: Idade: 25
imprimirIdade(nil) // Saída: Idade não fornecida.


// Usando guard let
func verificarIdade(_ idade: Int?) {
    guard let idadeDesembrulhada = idade else {
        print("Idade não fornecida.")
        return
    }
    print("Idade: \(idadeDesembrulhada)")
}

verificarIdade(30)  // Saída: Idade: 30
verificarIdade(nil) // Saída: Idade não fornecida.


// Definindo uma estrutura com optional
struct Pessoa {
    var nome: String?
}

// Criando uma instância de Pessoa
let person = Pessoa(nome: "Ana")

// Usando encadeamento opcional
let comprimentoNome = person.nome?.count
print("Comprimento do nome: \(comprimentoNome ?? 0)")
// Saída: Comprimento do nome: 3
