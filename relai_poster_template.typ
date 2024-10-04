#let poster(doc, title_name) = {
  set text(
    font: "Linux Libertine",
    size: 40pt,
  )
  show heading.where(
    level: 1
  ): it => block(width: 100%)[
    #set text(80pt, weight: "regular")
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
      columns: (70%,30%),
      align: (center,right),
      image("resources/university_logos.png", height: 5cm),
      image("resources/daad_logos.png", height: 5cm)
    ),
    margin: (x: 0cm, top: 22cm)
  )
  pad(x:5cm,columns(3,doc))
}
#show: doc => poster(doc,"Headline in one or two lines. What will come here?")

= Example

This is an example textasd