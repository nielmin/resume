#import "@preview/fontawesome:0.6.1": *

#let accent = navy

#let link-accent = blue

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
      ]
  )
}

#let edu(edu) = {
  [= #edu.name]
  line(length: 100%, stroke: 2pt + accent)
  grid(
      columns: (2fr, auto),
      gutter: 1em,
      align(left + horizon)[
        #text(weight:"semibold",14pt, edu.college)
        #linebreak()
        #text(12pt, weight:"medium", style: "italic", edu.degree)
      ],
      align(right + horizon)[
        #text(style:"italic", edu.years)
        #linebreak()
        #text(edu.location)
      ]
  )
}

#let work(work) = {
  [= #work.name]
  line(length: 100%, stroke: 2pt + accent)
  grid(
      columns: (2fr, auto),
      gutter: 1em,
      align(left + horizon)[
        #text(weight:"semibold",14pt, work.position)
        #linebreak()
        #text(12pt, weight:"medium", style:"italic", work.company)
      ],
      align(right + horizon)[
        #text(style:"italic",work.years)
        #linebreak()
        #text(work.location)
      ]
  )
}

#let proj(contents) = [
  #show link: set text(link-accent)
  = #contents.name
  #line(length: 100%, stroke: 2pt + accent)

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
  line(length: 100%, stroke: 2pt + accent)
  grid(
      columns: (2fr, auto),
      gutter: 1em,
      align(left + horizon)[
        #text(weight:"semibold",14pt, contents.name)
        #linebreak()
        #text(12pt, weight:"medium", style:"italic", contents.title)
      ],
      align(right + horizon)[
        #linebreak()
        #text(style:"italic",contents.date)
      ]
  )
}

#let skills() = {
  [= Skills]
  line(length: 100%, stroke: 2pt + accent)
}
