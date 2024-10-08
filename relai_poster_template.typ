#let sponsored_by() = {
  grid(
    columns: (55mm,55mm,55mm),
    rows: (25mm),
    align(
      left,
      text(size: 9.4pt, "relAI is supported by the DAAD programme Konrad Zuse Schools of Excellence in Artificial Intelligence, sponsored by the Federal Ministry of Education and Research."),
    ),
    image("resources/bmbf.jpg", height: 2.5cm),
    image("resources/zuse_schools.jpg", height: 2.5cm),
  )
}

#let X_PAGE_MARGIN = 59.4mm

#let universities() = {
  image(height: 30mm, "resources/university_logos.png")
}
#let poster(doc, title_name) = {
  set text(
    font: ("Maven Pro", "Arial"),
    fallback: true,
    size: 30pt,
  )
  show heading.where(
    level: 1,
  ): it => block(width: 100%)[
    #set text(50pt, weight: "regular")
    #it
  ]
  set page(
    paper: "a1",
    flipped: true,
    header: grid(
      columns: (310mm,auto),
      rows: (150mm),
      align: (top + left,horizon + center),
      image("resources/relai_logo.png", height: 100%),
      text(size: 80pt, weight: "bold", title_name),
    ),
    footer: pad(
      left: X_PAGE_MARGIN,
      grid(
        columns: (50%,50%),
        align: (left,right),
        universities(),
        sponsored_by(),
      ),
    ),
    margin: (left: 0cm, top: 166.66mm, right: X_PAGE_MARGIN),
  )
  pad(left: X_PAGE_MARGIN, columns(3, gutter: 30mm, doc))
}
