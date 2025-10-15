/*
This is a Typst template for SBC Conferences papers,
and is made based on an already existing template,
originally written in LaTeX:
https://www.overleaf.com/latex/templates/sbc-conferences-template/blbxwjwzdngr
*/

#set page(
  paper: "a4",
  margin: (
    top: 3.5cm,
    bottom: 2.5cm,
    right: 3cm,
    left: 3cm,
  ),
)

#set text(
  size: 12pt,
  font: "Times New Roman", // It needs a .ttf in this directory (if you are in the Typst web app) to work or else you will need the Times font installed in your system.
  tracking: -0.2pt,
)

#set par(
  justify: true,
  spacing: 6pt,
)

#set heading(
  numbering: "1.",
)


#align(center)[
  #text(size: 16pt)[
    *Instructions for Authors of SBC Conferences
      \
      Papers and Abstracts*
  ]]

#v(12pt)

// Authors
// Insert here the authors names
#let authors = ("Daniel Hinsching", "Eduardo Forget", "José Eduardo Kahl")

// Script to generate formated names
#let counter = 1
#align(center)[
  #for i in authors {
    text()[
      *#i*#super[#counter]#if (counter != authors.len()) { [*,* ] }
    ]
    counter = counter + 1
  }
]

#v(12pt)

// Adresses
// Insert the adresses
#let adresses = (
  ("Instituto Federal Catarinense – Universidade Federal do Rio Grande do Sul (UFRGS)", "Araquari – SC – Brazil"),
  //("Add your university name here", "Add your university adress here"),
  //("Add your university name here", "Add your university adress here"),
)

// Script to generate formated adresses
#let counter = 1
#align(center)[
  #for (i, j) in adresses {
    text()[
      #super[#counter]#i \ #j
      #v(12pt)
    ]
    counter = counter + 1
  }
]

#v(6pt)

// Emails
// Insert the emails
#let emails = ("daniel@ifc.edu.br", "eduardo@ifc.edu.br", "jose@ifc.edu.br")

// Script to generate formated emails
#let counter = 1
#align(center)[
  #for i in emails {
    text(font: "Courier New", size: 10pt)[
      #i#if (counter != emails.len()) { [, ] }
    ]
    counter = counter + 1
  }
]

#v(6pt)

#align(center, block(width: 21cm - 8.2cm)[
  // Abstract
  #set align(left)
  #text(style: "italic")[
    *Abstract.*
    This meta-paper describes the style to be used in articles and short papers for SBC conferences. For papers in English, you should add just an abstract while for the papers in Portuguese, we also ask for an abstract in Portuguese (``resumo''). In both cases, abstracts should not have more than 10 lines and must be in the first page of the paper.
  ]

  \

  // Resumo
  #text(style: "italic")[
    *Resumo.*
    Este meta-artigo descreve o estilo a ser usado na confecção de artigos e resumos de artigos para publicação nos anais das conferências organizadas pela SBC. É solicitada a escrita de resumo e abstract apenas para os artigos escritos em português. Artigos em inglês deverão apresentar apenas abstract. Nos dois casos, o autor deve tomar cuidado para que o resumo (e o abstract) não ultrapassem 10 linhas cada, sendo que ambos devem estar na primeira página do artigo.
  ]
])
