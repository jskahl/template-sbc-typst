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
    x: 3.0cm,
  ),
)

#set text(
  size: 12pt,
  font: "Times New Roman", // it needs a .ttf in this directory (if you are in the Typst web app) to work or else you will need the Times font installed in your system.
)

#set par(
  justify: true,
  spacing: 6pt,
)


#align(center)[
  #text(size: 16pt)[
    *Instructions for Authors of SBC Conferences
      \
      Papers and Abstracts*
  ]]

#v(12pt)

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

// Insert the emails
#let emails = ("danielh@ifc.edu.br", "edu.forget@ifc.edu.br", "josekahl@ifc.edu.br")

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
