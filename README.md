# Projeto: Aplicação de Coletores de Recicláveis

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
