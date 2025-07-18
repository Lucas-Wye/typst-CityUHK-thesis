#import "../utils/fonts.typ": thesis_font_size, thesis_font
#import "../utils/twoside.typ": twoside-pagebreak

#let panel-person-grid-fr=(1fr, 2.5fr)
#let panel-grid-fr=(1.8fr, 3.2fr)
#let panel-exam-page(
  info: (:),
  pagetitle,
) = {
  context {
    twoside-pagebreak
    set page(
      margin: (
        // x: 3.27cm,
        x: 3.05cm,
        bottom: 2.5cm,
        top: 2.5cm,
      ),
    )
    set text(font: thesis_font.times)

    align(
      center,
      [
        #show heading: x => {
          info.univ-en + "\n" + x.body
        }
        #show heading: text.with(size: thesis_font_size.small, weight: "bold") 
        #heading(pagetitle, numbering: none, level: 1, outlined: true)
        #v(1em)
      ],
    )

    set grid(
      row-gutter: 10.5pt,
      column-gutter: 7pt,
      rows: 5pt,
    )
    // set align(center)

    let block_width = 100%
    block(
      width: block_width,
      [
        #set text(size: thesis_font_size.tiny)
        #grid(
          columns: panel-person-grid-fr,
          align: (start, left),
          [*Surname:*], info.surname,
          [*First Name:*], info.firstname,
          [*Degree:*], info.degree,
          [*College/Department:*], info.department,
        )
      ],
    )
    v(10pt)
    block(
      width: block_width,
      [
        #set text(weight: "bold")
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
        #set text(size: thesis_font_size.tiny, weight: "bold")
        #grid(
          columns: (auto),
          align: (start),
          "Supervisor(s):",
        )
      ],
    )
    block(
      width: block_width,
      [
        #set text(size: thesis_font_size.tiny, font: thesis_font.times)
        #grid(
          columns: panel-grid-fr,
          align: (start, left),
          info.supervisor.at(0), info.superdep.at(0),
          [], info.superunvi.at(0),
        )
      ],
    )
    v(10pt)
    block(
      width: block_width,
      [
        #set text(size: thesis_font_size.tiny, weight: "bold")
        #grid(
          columns: (auto),
          align: (start),
          "External Supervisor(s):",
        )
      ],
    )
    block(
      width: block_width,
      [
        #set text(size: thesis_font_size.tiny, font: thesis_font.times)
        #grid(
          columns: panel-grid-fr,
          align: (start, left),
          info.supervisor.at(1), info.superdep.at(1),
          [], info.superunvi.at(1),
        )
      ],
    )

    v(10pt)
    block(
      width: block_width,
      [
        #set text(size: thesis_font_size.tiny, weight: "bold")
        #grid(
          columns: (auto),
          align: (start),
          "Qualifying Panel Member(s):",
        )
      ],
    )
    block(
      width: block_width,
      [
        #set text(size: thesis_font_size.tiny, font: thesis_font.times)
        #grid(
          columns: panel-grid-fr,
          align: (start, left),
          info.panels.at(0), info.paneldep.at(0),
          [], info.panelunvi.at(0),
          info.panels.at(1), info.paneldep.at(1),
          [], info.panelunvi.at(1),
        )
      ],
    )

    v(10pt)
    block(
      width: block_width,
      [
        #set text(size: thesis_font_size.tiny, weight: "bold")
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
          columns: panel-grid-fr,
          align: (start, left),
          info.examiner.at(0), info.examinerdep.at(0),
          [], info.examinerunvi.at(0),
          info.examiner.at(1), info.examinerdep.at(1),
          [], info.examinerunvi.at(1),
          info.examiner.at(2), info.examinerdep.at(2),
          [], info.examinerunvi.at(2),
          info.examiner.at(3), info.examinerdep.at(3),
          [], info.examinerunvi.at(3),
          info.examiner.at(4), info.examinerdep.at(4),
          [], info.examinerunvi.at(4),
          info.examiner.at(5), info.examinerdep.at(5),
          [], info.examinerunvi.at(5),
          info.examiner.at(6), info.examinerdep.at(6),
          [], info.examinerunvi.at(6),
        )
      ],
    )
  }
}
