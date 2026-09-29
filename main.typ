#import "src/cv.typ": *

#let profile = sys.inputs.at("profile", default: "office")

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

#if profile == "tech" [
  #proj(yaml("data/projects.yaml"))
]

#certs(yaml("data/certs.yaml"))

#if profile == "office" [
  #skills(yaml("data/skills.yaml"),"office")
] else [
  #skills(yaml("data/skills.yaml"),"tech")
]
