#import "src/cv.typ": *

#set page(
  "us-letter",
  margin: (x: 0.5in, y: 0.5in)
)

#set text(
  font: "lato",
  size: 11pt
)

#set list(marker: [-])

#show heading: set block(
  above: 0.8em,
  below: 0.5em,
)

#title(yaml("data/about.yaml"))

#work(yaml("data/work.yaml"))

#edu(yaml("data/edu.yaml"))

// #proj(yaml("data/projects.yaml"))

#certs(yaml("data/certs.yaml"))

#skills(yaml("data/skills.yaml"), "office")
