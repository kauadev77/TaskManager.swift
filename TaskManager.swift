var tarefas: [String] = []

func add_tarefa() {
    while true {
        print("Qual tarefa você quer adicionar? (Digite a tarefa ou enter para finalizar)")
        guard let tarefa = readLine(), !tarefa.isEmpty else {
            break
        }
        tarefas.append(tarefa)
        print("\nTarefa adicionada\n")
    }
}

func remover_tarefa() {
    if tarefas.isEmpty {
        print("Não existem tarefas")
        return
    }
    print("Qual o número da tarefa que você quer remover? (1 a \(tarefas.count))")
    guard let input = readLine(), let numero = Int(input), numero > 0, numero <= tarefas.count else {
        print("Opção inválida!")
        return
    }
    tarefas.remove(at: numero - 1)
    print("\nTarefa removida.\n")
}

func mostrar_tarefas() {
    if tarefas.isEmpty {
        print("Não existem tarefas")
        return
    }
    for (index, tarefa) in tarefas.enumerated() {
        print("#\(index + 1). \(tarefa)")
    }
}

func alterarTarefas() {
    if tarefas.isEmpty {
        print("Não existem tarefas")
        return
    }
    while true {
        print("Qual tarefa você quer alterar? (Digite o número de 1 a \(tarefas.count) ou enter para finalizar)")
        guard let txt = readLine(), !txt.isEmpty else {
            return
        }
        guard let altera = Int(txt), altera > 0, altera <= tarefas.count else {
            print("Índice inválido! Escolha um número entre 1 e \(tarefas.count).")
            continue
        }
        print("Digite o novo texto para a tarefa:")
        guard let novoTexto = readLine(), !novoTexto.isEmpty else {
            print("Texto inválido! A tarefa não foi alterada.")
            continue
        }
        tarefas[altera - 1] = novoTexto
        print("\nTarefa alterada com sucesso!\n")
    }
}

func mostrar_menu() {
    while true {
        print("\nQual opção você quer utilizar?")
        print("1. Adicionar tarefa")
        print("2. Remover tarefa")
        print("3. Mostrar tarefas")
        print("4. Alterar tarefas")
        print("5. Sair")
        guard let input = readLine(), let numero = Int(input) else {
            print("Opção inválida! Digite um número.")
            continue
        }
        switch numero {
        case 1:
            add_tarefa()
        case 2:
            remover_tarefa()
        case 3:
            mostrar_tarefas()
        case 4:
            alterarTarefas()
        case 5:
            print("Saindo...")
            return
        default:
            print("Opção inválida! Escolha entre 1 e 5.")
        }
    }
}

mostrar_menu()
