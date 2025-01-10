# Como fazer seu primeiro Deploy com Segurança!
Construir uma pipeline utilizando uma ferramenta de segurança e Docker, é como seguir uma receita de bolo.
Primeiramente, você tem que ter o Docker instalado, e também todas dependências da sua aplicação que irá subir instaladas. Nesse caso, eu baixei do site oficial o NodeJS. 
Depois que você tem tudo instalado (caso não estiver instalado, não se preocupe, pois você vai saber quando começar a rodar aplicações e construir imagens), crie um repositório no GitHub, clone para seu computador, e abra o Bash na pasta.
Eu comecei com o docker build -t lacrei-saude-api . O Docker, se você seguir como uma receita de bolo um script, irá funcionar, mas terá que ter atenção com possíveis falhas de segurança, por isso seu tutorial tem que se preocupar com isso.
Faça o Docker build -t lacrei-saude-api .
Isso construirá uma imagem Docker.
Depois para rodar o container, utilize Docker run -p 3000:3000 lacrei-saude-api.
![image](https://github.com/user-attachments/assets/6621f1ca-3d39-4f48-adcf-6f21bc8201ba)

Feito isso, vá no GitHub Actions construir suas pipelines. Você poderia ter feito tudo de uma vez, mas eu quis testar as imagens Docker na minha máquina pois eu não havia feito a não ser sendo com o Terraform. 
Configure o YAML. O YAML é uma lista de instruções que será seguida na Pipeline e faremos as três 
Build - você constrói a imagem.
Scan - você checa por vulnerabilidades.
Deploy - você faz o deploy da sua aplicação.
A instalação do OWASP ZAP pode ser um pouco complicada, pois pode ter conflito de versões na pipeline com a do GitHub, então tenha atenção que você vai digitar os dados corretamente. Eu já tinha lidado com o scan de três imagens na criação de outra ferramenta, AquaSecurity, então tinha ideia de como seria. 
Lembre-se de configurar seus Secrets do GitHub nas configurações (eu já tinha feito outros deploys anteriormente, então já tinha aprendido como fazer isso).
Faça o teste no GitHub Actions e veja se deu tudo certo. Se não deu certo, tente até acertar (foi o que eu fiz!)
![image](https://github.com/user-attachments/assets/225a0584-cee5-4e09-b73d-62a4bd1dd8c8)




# Erros encontrados e dificuldades superadas: o Node não havia sido incluído no caminho Path, então sofri com a falha disso na hora de rodar o container, e tive que instalar novamente. Na hora de fazer o arquivo package.json, algumas dependências estavam faltando e utilizando o npm install, instalei a dependência express que fez o servidor estar ativo. Na hora de fazer a pipeline, tive que lidar com alguns erros, porém fui atualizando até acertar, normalmente eram erros de versão do OWASP ou do GitHub Actions, e de configuração do package.json.

# Experiências pessoais e considerações positivas:
Eu tinha experiência em criar pipelines no GitLab somente, mas não tive problema no GitHub Actions. Eu não conhecia a OWASP ZAP, porém implantei uma pipeline com uma ferramenta de segurança chamada AquaSecurity, que fazia a mesma coisa no meu TCC de Bootcamp. Eu havia rodado na minha máquina o Terraform, e a construção de imagens Docker era feita normalmente por ele, essa foi minha primeira vez com Bash.
