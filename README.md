# ProjectOpenAcadeyJournal
O projeto a seguir, consiste em um simples app de diário, que foi desenvolvido durante o curso de tópicos avançados em iOS da OpenAcademy. O projeto tem como objetivo contemplar 3 dos principais tópicos apresentados durante as aulas, e aplica-los utilizando SwiftUI e Swift, para IOS 26. 

# Overview

O projeto contém duas principais telas, uma é a "Home", onde é possível adicionar uma nova anotação e visualizar as já adicionadas, e uma tela de criação de anotação, onde é possível definir a data, adicionar um título, o conteúdo que será escrito e uma imagem. 

A maneira que as anotações são demostradas, na página incial, é destacando a data que a anotação foi escrita, ou definida pelo usuário, o título da anotação, o conteúdo e a presença da imagem inserida . 

# Principais Tópicos Contemplados

- <b>App Intents:</b> É possível realizar a criação de uma nova anatação através da utilização do ShortCut. Onde, graças a implementação de App Intents, é possível realizar uma "anotação rápida" (Quick Note), onde possibilita realizar essa ação mesmo que o app não esteja aberto 

- <b>Tasks:</b> Utilizada para o carregamento das imagens de forma assíncrona.

- <b>SwiftData:</b> Utilziado para realizar a persistência dos dados, ou seja, salvar as notas criadas pelo usuário, mesmo que ele saia do App.

- <b>Extension:s</b> Utilizada para realizar a criação de um novo estilo de texto, e para a formatação da maneira em que a data da anotação seria utilizada. 

