# Typst template for CityUHK PhD thesis
- This template is used as git submodule, it will be published to `Typst Universe` later on.

- This template is still under development, which is developed from the Typst template for ZJU [https://github.com/Shuenhoy/modern-zju-thesis],
the LaTeX template [https://github.com/huwan/CityU_Thesis] and
the regulations governing the Format of Theses and Sample of the Front Cover/Spine/Title Page of a Thesis (Appendixes 13 and 14 of the [Guidebook for Research Degree Studies](https://www.sgs.cityu.edu.hk/student/rpg/studentGuideBook)).


- This template requires two type of fonts: `PMingLiU.ttf` and `Times New Roman`, pls download them by yourself.

## Usage
```sh
git clone git@github.com:Lucas-Wye/typst-CityUHK-thesis.git

```
Create files `main.typ`, `ref.bib`, `content.typ`, the files structure is:
```
main.typ
content.typ
ref.bib
typst-CityUHK-thesis/
``` 
`ref.bib` is the same as the reference papers in LaTeX and `content.typ` is the content of your thesis.

`main.typ` file is shown as follows:
```typst
#import "modern-cityu-thesis/lib.typ": graduate-general
#import graduate-general: *

#let info = (
  univ-en: "CITY UNIVERSITY OF HONG KONG",
  univ-zh: "香港城市大學",
  title: ("", ""),
  title-en: ("", ""),
  author: "",
  author-en: "",
  surname: "",
  firstname: "",
  department: "Department of Electrical Engineering",
  department-zh: "電機工程系",
  degree: "PhD",
  submit-date: "二零二五年五月",
  submit-date-en: "May, 2025",
  supervisor: ("", ""),
  superdep: ("Department of Electrical Engineering", ""),
  superunvi: ("City University of Hong Kong", ""),
)

#let doc = graduate-general(info: info, twoside: true)
#show: doc.style

#show: frontmatter

#doc.pages.cover
<mzt:no-header-footer>

#let individual = doc.pages.individual

#individual("Abstract")[]

#doc.pages.panel-exam
#individual("Acknowledgements")[]

#doc.pages.outline
#doc.pages.figure-outline
#doc.pages.table-outline

#show: mainmatter

#include "content.typ"

#individual("References", outlined: true)[
  #bibliography("ref.bib", style: "ieee", title: none)
]

#individual("Appendix", outlined: true)[
  #appendix(level: 1)[
    == One <app1>
    @app1
    == Two

  ]
]

#individual("Publications", outlined: true)[
]
```

## Compile command
```sh
typst compile --font-dir your_fonts_dir main.typ out_main.pdf
```

## License
- MIT License
