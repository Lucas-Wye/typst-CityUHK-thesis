#let numbering_section(c, b)={
  return numbering(c.numbering,..counter(heading).at(c.location())) + " " + b
}

#let near-section = context {
  let headings_after = query(selector(heading.where(level: 2)).after(here()))
  let headings_before = query(selector(heading.where(level: 2)).before(here()))

  if headings_after.len() == 0 {
    return
  }

  let heading = headings_after.first()
  if heading.location().page() > here().page() {
    if headings_before.len() == 0 {
      return
    }
    numbering_section(headings_before.last(), headings_before.last().body)
  } else {

    numbering_section(heading, heading.body)
  }
}
