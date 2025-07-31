Gerenciador de Tarefas em Swift

Um aplicativo de linha de comando desenvolvido em Swift para gerenciar tarefas. Permite adicionar, remover, listar e alterar tarefas de forma interativa através de um menu.

Uso:





Siga o menu interativo para gerenciar suas tarefas:





1: Adicionar uma nova tarefa.



2: Remover uma tarefa existente.



3: Listar todas as tarefas.



4: Alterar uma tarefa por um novo texto.



5: Sair do programa.

Funcionalidades





Adicionar Tarefas: Insira novas tarefas digitando o texto desejado.



Remover Tarefas: Exclua uma tarefa específica pelo número.



Listar Tarefas: Veja todas as tarefas com números de identificação.



Alterar Tarefas: Substitua uma tarefa existente por um novo texto.



Validação de Entrada: O programa trata entradas inválidas (ex.: números fora do intervalo) sem travar.

Exemplo de Uso

Ao executar o programa, você verá o seguinte menu:

Qual opção você quer utilizar?
1. Adicionar tarefa
2. Remover tarefa
3. Mostrar tarefas
4. Alterar tarefas
5. Sair

Exemplo de interação:





Digite 1 e adicione tarefas como "Comprar leite" e "Estudar Swift".



Digite 3 para listar:

#1. Comprar leite
#2. Estudar Swift



Digite 4, selecione a tarefa 1 e substitua por "Fazer compras".



Liste novamente para ver a atualização:

#1. Fazer compras
#2. Estudar Swift



Digite 5 para sair.

Tecnologias





Linguagem: Swift



Estruturas de Dados: Arrays para armazenar tarefas



Funcionalidades: Manipulação de entrada/saída via linha de comando

Status do Projeto

Concluído, com validações robustas para entradas de usuário. Futuras melhorias podem incluir:





Persistência de dados (ex.: salvar tarefas em um arquivo).




Licença

MIT License
