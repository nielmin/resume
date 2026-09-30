#let cover-letter(
  author: "",
  location: "",
  contacts: (),
  date: datetime.today().display("[month repr:long] [day], [year]"),
  addressee-name: "",
  addressee-institution: "",
  addressee-department: "",
  addressee-address: "",
  addressee-city: "",
  addressee-state: "",
  addressee-country: "",
  addressee-zip: "",
  font: "New Computer Modern",
  font-size: 11pt,
  lang: "en",
  margin: (
    top: 1cm,
    bottom: 1cm,
    left: 1cm,
    right: 1cm,
  ),
  body,
) = {

  // Sets document metadata
  set document(author: author, title: author)

  // Document-wide formatting, including font and margins
  set text(
    font: font,
    size: font-size,
    lang: lang,
    ligatures: false,  // Disable ligatures for better compatibility and readability
  )

  set page(
    margin: 0.75in,
  )

  show link: set text(
    fill: rgb("#0645AD")
  )
  
  columns(2, gutter: 8pt)[
    // Author
    #align(left)[
      #block(text(weight: 700, 2em, [#smallcaps(author)]))
      #[#contacts.join("  |  ")]

    ]

    #colbreak()

    #align(right)[
      #if location != "" {
        smallcaps[#location]
      }
    ]
  ]

  line(
      length: 100%,
      stroke: 2pt
    )

  // Date
  pad(
    top: 1em,
    bottom: 0.5em,
    align(left)[
      #strong[#date]
    ]
  )

  // addressee Information
  pad(
    bottom: 1em,
    align(left)[
      #strong[#addressee-name] \
      #addressee-institution \
      #if addressee-department != "" {
        addressee-department
        linebreak()
      }
      #addressee-address \
      #{addressee-city + ", " + addressee-state + " " + addressee-zip} \
      #addressee-country
    ]
  )

  // Main body.
  set par(
    justify: true,
  )

  body

  // Signature
  text(
    font: font,
    size: font-size,
    lang: lang,
  )[
    #"" \ \
    #"Sincerely," \
    #strong[#author]
  ]
}
