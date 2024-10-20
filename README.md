# Projeto: Aplicação de Coletores de Recicláveis

______________________________________________________________________________________________________________________________________________________________________________

## Descrição
Aplicação para conectar catadores de materiais recicláveis com usuários que desejam descartar resíduos recicláveis de forma eficiente e sustentável.

## Funcionalidades Principais

1. Cadastro de Catadores
2. Solicitação de Coleta
3. Sistema de Notificações
4. Geolocalização
5. Histórico de Coletas

## Diagrama de Fluxo

```plaintext
    [Usuário]     [Catador]
        |             |
        |  Solicita   |
        |   Coleta    |
        |------------>|
        |             |
        |  Coleta     |
        |   Aceita    |
        |<------------|
        |             |
        | Notificação |
        |<----------->|
        |             |
        | Histórico   |
        |  Atualiza   |
        |------------>|
        |             |

______________________________________________________________________________________________________________________________________________________________________________


fluxo de trabalho p/ nosso repositório Git:

main: Esta é a branch de produção estável. Qualquer versão aqui está pronta para ser lançada.

develop: Esta é a branch de integração principal onde iremos fazer merges de features e correções antes de liberar para main.

Branches de Desenvolvimento:

Cada desenvolvedor irá criar sua própria branch a partir de develop para trabalhar em novas funcionalidades ou correções.

Nomeie suas branches de forma descritiva, por exemplo: feature/nova-funcionalidade ou fix/corrigir-bug.

Fluxo de Trabalho:

Criar uma Nova Branch:

bash

Copiar
git checkout develop
git pull origin develop
git checkout -b feature/minha-feature
Trabalhar na Nova Branch:

Realize suas alterações e commits regularmente.

bash

Copiar
git add .
git commit -m "Descrição das mudanças"
Enviar suas Alterações:

Envie sua branch para o repositório remoto.

bash

Copiar
git push origin feature/minha-feature
Pull Requests:

Quando terminar de trabalhar na sua branch, crie um pull request (PR) para a branch develop.

Certifique-se de que seu PR seja revisado e aprovado por pelo menos um outro desenvolvedor antes do merge.

Atualização da Branch main:

Depois que todos os pull requests forem mergeados para develop e estiverem estáveis, atualizaremos a branch main com as mudanças.

Realize o merge de develop para main:

bash

Copiar
git checkout main
git pull origin main
git merge develop
git push origin main

______________________________________________________________________________________________________________________________________________________________________________
