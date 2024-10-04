#let poster(doc, title_name) = {
  set text(
    font: "Linux Libertine",
    size: 30pt,
  )
  show heading.where(
    level: 1
  ): it => block(width: 100%)[
    #set text(60pt, weight: "regular")
    #it
  ]
  set page(
    paper: "a0",
    flipped: true,
    header: grid(
      columns: (40cm,auto),
      align: (top,center),
      image("resources/relai_logo.png", height: 20cm),
      text(size: 120pt,font:"Times new roman",weight: 900,title_name)
    ),
    footer: grid(
      columns: (50%,25%,10%,5%,10%),
      align: center,
      image("resources/university_logos.png", height: 3cm),
      [],
      [#align(left,text(size:12pt,lorem(20)))],
      image("resources/BMBF_gefordert-vom_englisch.png", height: 3cm),
      image("resources/DAAD-Zuse-Logo_230_400px.jpg", height: 3cm)
    ),
    margin: (x: 0cm, top: 22cm)
  )
  pad(x:5cm,columns(3,doc))
}
#show: doc => poster(doc,"Headline in one or two lines. What will come here?")

= Example subheadline

#lorem(150)
= Example subheadline

#lorem(150)
= Example subheadline

#lorem(150)

= Example subheadline
#lorem(150)
= Example subheadline
#lorem(150)
= Example subheadline
#lorem(150)