#toda imagem que nós criamos ela parte de uma outra imagem
# pra partir de uma outra imagem digite o FROM
FROM node

#INDICA QUE O DIRETORIO DE TRABALHO NO CONTAINER É ESTE AO LADO DO COMANDO WORKDIR
WORKDIR /usr/src/app

#COPY realiza a copia do q vc tem no seu projeto para uma area do seu container
#vc pode digitar como COPY package.json /usr/src/app ou apenas COPY package.json .
#coloando apenas o . ponto ele ja sabe q é no workdir
COPY package.json .

#COMANDO PARA RODAR ALGO NO CONTAINER NESTA PASTA DE WORKDIR
RUN yarn

#COMANDO COPY . . INFORMA PARA O DOCKER COPIAR TUDO Q TEM AQUI PARA O WORKDIR
COPY . .

#EXPOSE INFORMA QUAL PORTA VC VAI EXPOR ESTE SERVIÇO NO CASO COMO ESTA 3003 O SEU SERVER, PONHA A MESMA
EXPOSE 3003

#CMD É O COMANDO QUE ESTARTA A APLICAÇÃO 
CMD  ["yarn", "start"]
