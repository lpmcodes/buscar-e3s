# buscar-e3s

Script em PowerShell que vasculha uma pasta (local ou de rede) e todas as subpastas em busca de arquivos `.e3s`.

## O que ele faz

- Procura arquivos `.e3s` recursivamente.
- Mostra na tela o caminho completo, o tamanho e a data de modificação.
- Exibe o total de arquivos encontrados.
- Salva a lista de caminhos em `lista_e3s.txt` no Desktop do usuário.

## Requisitos

- Windows com PowerShell 5.1 ou superior.
- Permissão de leitura na pasta que será vasculhada.

## Como usar

1. Baixe o arquivo `buscar-e3s.ps1` e salve onde preferir (por exemplo, no Desktop).
2. Abra o PowerShell (não o CMD).
3. Libere a execução de scripts apenas para a janela atual:

   ```powershell
   Set-ExecutionPolicy -Scope Process Bypass
   ```

4. Execute o script informando a pasta:

   ```powershell
   .\buscar-e3s.ps1 -pasta '\\servidor\pasta\subpasta'
   ```

   Se não informar `-pasta`, o script pergunta o caminho ao ser executado.

## Exemplos

Pasta de rede:

```powershell
.\buscar-e3s.ps1 -pasta '\\servidor\compartilhamento$\Projetos\Diagramas'
```

Pasta local:

```powershell
.\buscar-e3s.ps1 -pasta 'C:\Projetos'
```

## Dicas

- Use **aspas simples** no caminho. Com aspas duplas, o PowerShell interpreta o `$` como variável.
- Caminhos de rede (`\\servidor\...`) funcionam no PowerShell, mas não no CMD com `cd`.
- Em pastas de rede grandes, a busca pode demorar. Aguarde o prompt voltar.
- Pastas sem permissão de acesso são ignoradas sem exibir erro.

## Saída

```
FullName                              Length LastWriteTime
--------                              ------ -------------
\\servidor\...\diagrama01.e3s         204800 01/10/2026 10:30:00

Total encontrado: 1
Lista salva em: C:\Users\usuario\Desktop\lista_e3s.txt
```
