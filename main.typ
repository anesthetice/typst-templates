// heavily inspired by : https://github.com/dogeystamp/typst-templates/
// thank you dogeystamp

#let header-size = 22pt
#let regular-size = 12pt

#let font = "IBM Plex Serif"

#let template(
  title: "",
  subtitle: none,
  author: "",
  doc,
) = {
  set document(
    title: title,
    author: author,
  )
  set page(
    paper: "a4",
    margin: (
      top: 2.0cm,
      right: 1.5cm,
      bottom: 2.0cm,
      left: 1.5cm,
    )
  )
  set par(
    justify: true
  )
  set text(
    font: "IBM Plex Serif",
    weight: "regular",
    size: regular-size
  )
  set heading(numbering: "1.", bookmarked: true)
  show heading: header => {
    header
    v(weak: true, 0.75em)
  }
  set figure.caption(position: bottom)
  set figure(gap: 1em)
  show figure.caption: emph
  show figure: fig => {
    show: pad.with(x: 1em, y: 0.6em)
    show image: pad.with(y: 0.5em)
    set image(width: 50%)
    set align(center)
    fig
  }
  set list(indent: 15pt, body-indent: 5pt)
  set enum(indent: 15pt, body-indent: 5pt)

  
  pad(left: -2%, {
      text(size: header-size, weight: 550, title)
      v(10pt, weak: true)
      pad(left: 1.5pt, subtitle)
      align(right,
        rect(
          width: 50%,
          stroke: none,
          {
            author
        })
      )
      v(10pt)
    line(length: 100%, stroke: 1pt + rgb("#555555"))
  })
  v(5%, weak: true)
  doc
}
