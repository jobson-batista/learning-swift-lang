import Foundation

/* TO DO List CLI */
var sair: Bool = false
var tarefas: [String] = [
    "Resolver o bug em Java", "Estudar Swift", "Jogar Gears of War 1", "Sair com a namorada",
]

while !sair {
    print("\u{001B}[2J\u{001B}[H")  // Limpar o console e mover o cursor para o topo
    print("\n------ TO DO List CLI v1.0 -----\n")
    print("\n[1]  Adicionar item")
    print("[2]  Listar tarefas")
    print("[99] Sair\n")
    print("Selecione uma opção: ", terminator: "")

    if let inputMain = readLine() {
        switch inputMain {
        case "1":
            print("Cara, digite logo o nome da terefa: ", terminator: "")
            if let tarefa = readLine(), !tarefa.isEmpty {
                tarefas.append(tarefa)
                print("Adicionado com sucesso!")
                sleep(1)
                print("Voltando para o menu principal...\n")
                sleep(1)
            } else {
                print("Erro ao adicionar a tarefa!\n")
                sleep(1)
            }
        case "2":
            var cont = 0
            print("\n> Lista de Tarefas")
            while cont < tarefas.count {
                print("[\(cont)] \(tarefas[cont])")
                cont += 1
            }
            print("\nSelecione uma tarefa: ", terminator: "")
            if let tarefaPosicao = readLine(), !tarefaPosicao.isEmpty, let num = Int(tarefaPosicao)
            {
                print("\n> Gerenciar a tarefa: \(tarefas[num])")
                print("[1]  Remover tarefa")
                print("[2]  Menu Principal")
                print("[99] Sair\n")
                print("\nSelecione uma opção: ", terminator: "")
                if let opcaoMain2 = readLine() {
                    switch opcaoMain2 {
                    case "1":
                        tarefas.remove(at: Int(num))
                        print("Tarefa Removida com sucesso!")
                        sleep(1)
                        print("Voltando para o menu principal...\n")
                        sleep(1)
                    case "2":
                        print("Voltando para o menu principal...\n")
                        sleep(1)
                    case "99":
                        sair = true
                    default:
                        print("Opção inválida!\n")
                    }
                } else {
                    print("Erro ao remover a tarefa!\n")
                    sleep(1)
                }

            }

        case "99":
            sair = true
        default:
            print("Opção inválida!\n")
        }
        print("Saindo...")
        sleep(2)
    }

}
print("\n-> Não desista dos seus sonhos!\n")
sleep(2)
