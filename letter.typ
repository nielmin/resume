#import "src/cover-letter.typ": *
#show: cover-letter.with(
  author: "Daniel Hwang",
  location: "San Antonio, Texas",
  contacts: (
  [#link("mailto:danhwa13@gmail.com")[#"danhwa13@gmail.com"]],
  "",
  ),
  addressee-name: "",
  addressee-institution: "",
  addressee-department: "",
  addressee-address: "",
  addressee-city: "",
  addressee-state: "",
  addressee-country: "",
  addressee-zip: "",
  font: "Inter",
  font-size: 11pt,
  lang: "en",
  margin: (
    top: 1cm,
    bottom: 1cm,
    left: 1cm,
    right: 1cm,
  ),
)
