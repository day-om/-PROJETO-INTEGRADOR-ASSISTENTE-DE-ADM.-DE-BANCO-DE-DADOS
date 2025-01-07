# -Projeto-Integrador-Assistente-de-Administração-de-Banco-de-Dados
Projeto desenvolvido no primeiro módulo do curso técnico em Desenvolvimento de Sistemas
#
**`1. APRESENTAÇÃO (INTRODUÇÃO AO SISTEMA)`**

- `Cliente:` O cliente oferece um serviço de aulas particulares de instrumento musical, aulas de violão, flauta e piano e conta com uma demanda de até 40 aulas semanais por instrumento. Sua equipe é formanda por 3 professores (um de cada instrumento), dois auxiliares administrativos que atendem os clientes oferecendo os pacotes de aula, marcando horários e dias para as aulas. Ele, o administrador, coordena toda a equipe, acompanhando todo o processo. Com o crescimento de alunos em seu estabelecimento, este deseja um sistema que possa organizar melhor o ciclo de tarefas executado por sua equipe.  
- `Desenvolvedor:` O desenvolvedor propõe um sistema que atenda tais necessidades com a possibilidade de cadastro de alunos e professores; controle de ofertas de dias e horários para as aulas; gestão de contrato financeiro com os clientes e de usuários do sistema.
#
**`2. DESCRIÇÃO DO PROJETO (DESCRIÇÃO BÁSICA DO SISTEMA PLANEJADO)`**

O sistema a ser desenvolvido será uma aplicação desktop que permitirá aos usuários cadastrar alunos e professores, consultar horários e dias disponíveis para aulas, registrar pagamentos de aulas e gerenciar informações de usuários do sistema.
#
**`3. DESCRIÇÃO DOS USUÁRIOS (QUEM SERÃO OS USUÁRIOS DO SISTEMA)`**

Os usuários do sistema serão: 
Auxiliares administrativos da empresa (2): que irão cadastrar alunos e professores, consultar horários e dias disponíveis e registrar pagamentos. 
Os professores (3): utilizarão o sistema para consultar as aulas e alunos marcados no seu horário e registrar frequência e desempenho dos alunos. 
O dono da empresa (1): utilizará o sistema para gerenciamento de usuários e controle de contrato financeiro.
#
**`4. NECESSIDADES OBSERVADAS E REGRAS DE NEGÓCIO`**

`NECESSIDADES:`
- Cadastro de alunos e professores;
- Consulta de dias e horários de aula disponíveis;
- Registro de pagamentos;
- Registro de frequência e desempenho dos alunos;
- Gestão de usuários com diferentes níveis de acesso; 
- Gestão de controle financeiro.  

`REGRAS DE NEGÓCIO:`
- Os alunos poderão ser cadastrados em apenas 3 tipos de pacotes: 2 aulas semanais / 3 aulas semanais / 5 aulas semanais;
- Cada aluno só pode receber uma aula por dia;
- As aulas devem ser marcadas com no máximo 24h de antecedência;
- Caso o aluno esteja com débito financeiro, a aula não pode ser marcada.   
#
**`5. REQUISITOS FUNCIONAIS`**

1. Cadastro de administradores do sistema- Permitir registrar nome, função e níveis de acesso;
2. Cadastro de alunos- Permitir registrar nome, idade, pacote de aulas, formas de pagamento, instrumento e nível de conhecimento do instrumento;
3. Cadastro de professores- Permitir registrar nome, instrumento e horários disponíveis;
4. Consulta de aulas - Possibilitar a busca por horários vagos de acordo com o instrumento, registrar aluno em horário escolhido e atualizar status de horários;
5. Gerenciamento financeiro- Possibilitar a busca por relatórios financeiros de alunos e emissão de relatórios de entradas mensais.   
#
**`6. REQUISITOS NÃO FUNCIONAIS`**

- O software será desenvolvido para desktop em sistema Windows;
- Os dados de cada usuário serão protegidos por login e senha;
- O software contará com um banco de dados para armazenamento das informações de cada usuário;
- O software solicitará um backup uma vez ao mês.
#
**`7. TECNOLOGIAS PREVISTAS`**

Linguagem de programação: JAVA

Ferramenta de Desenvolvimento: NetBeans 

Banco de Dados: MySQL 
#
