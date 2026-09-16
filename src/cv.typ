#import "@preview/fontawesome:0.6.1": *

#let accent = navy

#let link-accent = blue
#let custom-line = line(length: 100%, stroke: 2pt + accent)

#let title(user) = {
  show link: set text(link-accent)

  grid(
    columns: (2fr, auto),
    gutter: 1em,
    align(left + horizon)[
      #text(22pt, fill: accent, weight: "bold", user.author)
      #linebreak()
      #fa-icon("github") #link(user.github)[GitHub]
      #linebreak()
      #fa-icon("globe") #link(user.site)[Website]
    ],
    align(left + horizon)[
      #fa-icon("location-dot") #text(user.location)
      #linebreak()
      #fa-icon("phone") #text(user.phone)
      #linebreak()
      #fa-icon("envelope") #link("mailto:" + user.email)
    ],
  )
}

#let edu(edu) = {
  [= Education]
  custom-line
  grid(
    columns: (2fr, auto),
    gutter: 1em,
    align(left + horizon)[
      #text(weight: "semibold", 14pt, edu.bachelors.college)
      #linebreak()
      #text(12pt, weight: "medium", style: "italic", edu.bachelors.degree)
    ],
    align(right + horizon)[
      #text(style: "italic", edu.bachelors.years)
      #linebreak()
      #text(edu.bachelors.location)
    ],
  )
  for (i) in edu.bachelors.desc [
    - #i
  ]
}

#let work(work) = {
  [= Work Experience]
  custom-line

  for (key, job) in work [
    #grid(
      columns: (1fr, auto),
      align(left)[
        #text(weight: "semibold", 12pt, job.position) \
        #text(weight: "medium", style: "italic", job.company)
      ],
      align(right)[
        #text(style: "italic", job.years) \
        #text(job.location)
      ],
    )
    #if "description" in job [
      #v(-0.2em)
      #list(..job.description)
    ]
    #v(0.5em)
  ]
}

#let proj(contents) = [
  #show link: set text(link-accent)
  = #contents.name
  #custom-line

  #set par(spacing: 0.64em)
  #for project in contents.projects [
    *#project.name*
    #link("https://" + project.link)[#fa-icon("link")]
    #h(1fr)

    #for item in project.description [
      - #item
    ]
  ]
]

#let certs(contents) = {
  [= Certifications]
  custom-line
  grid(
    columns: (2fr, auto),
    gutter: 1em,
    align(left + horizon)[
      #text(12pt, weight: "medium")[#contents.title]
      #if "abbr" in contents and contents.abbr != "" [
        (#text(12pt, weight: "medium")[#contents.abbr])
      ]
    ],
    align(right + top)[
      #text(style: "italic", contents.issuer)
    ],
  )
  list(
    if "id" in contents and contents.id != "" [CSCO ID: #contents.id],
    if "expires" in contents
      and contents.expires != "" [Expires: #contents.expires],
  )
}

#let skills(data, category) = {
  [= Skills]
  custom-line

  if category == "office" and data.office != "" [
    #for (key, item) in data.office [
      - *#key*: #item.join(", ")
    ]
  ]
}
