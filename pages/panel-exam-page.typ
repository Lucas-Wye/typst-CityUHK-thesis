#import "../utils/fonts.typ": thesis_font_size, thesis_font
#import "../utils/twoside.typ": twoside-pagebreak

#let panel-exam-page(
  info: (:),
  pagetitle,
) = {
  context {
    twoside-pagebreak
    set page(
      margin: (
        x: 3.27cm,
        bottom: 2.5cm,
        top: 2.5cm,
      ),
    )
    set text(font: thesis_font.times)

    align(
      center,
      text(size: thesis_font_size.llarge)[
        #show heading: info.univ-en + "\n" + pagetitle
        #heading(pagetitle, numbering: none, level: 1, outlined: true)
        #v(1em)
      ],
      // TODO: make heading smaller
    )

    set grid(
      row-gutter: 10.5pt,
      column-gutter: 7pt,
      rows: 5pt,
    )
    // set align(center)

    let block_width = 85%
    block(
      width: block_width,
      [
        #set text(size: thesis_font_size.tiny)
        #grid(
          columns: (auto, 1fr),
          align: (start, left),
          "Surname:", info.surname,
          "First Name:", info.firstname,
          "Degree:", info.degree,
          "College/Department:", info.department,
        )
      ],
    )
    v(10pt)
    block(
      width: block_width,
      [
        #grid(
          columns: (auto),
          align: (start),
          "The Qualifying Panel of the above student is composed of:"
        )
      ],
    )

    v(10pt)
    block(
      width: block_width,
      [
        #set text(size: thesis_font_size.tiny, style: "italic")
        #grid(
          columns: (auto),
          align: (start),
          "Supervisor(s)",
        )
      ],
    )
    block(
      width: block_width,
      [
        #set text(size: thesis_font_size.tiny, font: thesis_font.times)
        #grid(
          columns: (auto, 1fr),
          align: (start, left),
          info.supervisor.at(0), info.superdep.at(0),
          [], info.superunvi.at(0),
          info.supervisor.at(1), info.superdep.at(1),
          [], info.superunvi.at(1),
        )
      ],
    )

    v(10pt)
    block(
      width: block_width,
      [
        #set text(size: thesis_font_size.tiny, style: "italic")
        #grid(
          columns: (auto),
          align: (start),
          "Qualifying Panel Member(s)",
        )
      ],
    )
    block(
      width: block_width,
      [
        #set text(size: thesis_font_size.tiny, font: thesis_font.times)
        #grid(
          columns: (auto, 1fr),
          align: (start, left),
          info.supervisor.at(0), info.superdep.at(0),
          [], info.superunvi.at(0),
          info.supervisor.at(1), info.superdep.at(1),
          [], info.superunvi.at(1),
        )
      ],
    )

    v(10pt)
    block(
      width: block_width,
      [
        #set text(size: thesis_font_size.tiny, style: "italic")
        #grid(
          columns: (auto),
          align: (start),
          "This thesis has been examined and approved by the following examiners:",
        )
      ],
    )

    block(
      width: block_width,
      [
        #set text(size: thesis_font_size.tiny, font: thesis_font.times)
        #grid(
          columns: (auto, 1fr),
          align: (start, left),
          info.supervisor.at(0), info.superdep.at(0),
          [], info.superunvi.at(0),
          info.supervisor.at(1), info.superdep.at(1),
          [], info.superunvi.at(1),
        )
      ],
    )
  }
}
