# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster 
# Instrução obrigatória que indica qual imagem vai ser utilizada como ponto de partida.

WORKDIR /app
# O comando WORKDIR é usado para definir o diretório de trabalho de um container do Docker a qualquer momento.

COPY requirements.txt requirements.txt
# O COPY copia o arquivo requirements.txt do seu local para dentro do container.

RUN pip3 install -r requirements.txt
# Serve para executar comandos no processo de montagem da imagem que estamos construindo.

COPY . .
# Pega todos os arquivos localizados no diretório atual e os copia na imagem

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
# Serve para execupar um comando, porém, diferente do RUN, 
# o CMD executa apenas na criação do container e não no build da imagem.