#import "src/cover-letter.typ": *
#show: cover-letter.with(
  author: "Daniel Hwang",
  location: "San Antonio, Texas",
  contacts: (
  [#link("mailto:danhwa13@gmail.com")[#"danhwa13@gmail.com"]],
  [#link("https://github.com/nielmin")[#"github.com/nielmin"]],
  ),
  date: datetime.today().display(),
  addressee-name: "Labatt's IT Department",
  addressee-institution: "Labatt Food Service",
  addressee-address: "4618 Industry Park Drive",
  addressee-city: "San Antonio",
  addressee-state: "TX",
  addressee-country: "",
  addressee-zip: "78218",
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

I am applying for the position of *Network Engineer* at Labatt.

While I majored in Computer Science at UTSA, I've always had an interest in networking.
This curiosity resulted in a 6-month journey learning about how the Internet works, which then led to me passing the CCNA earlier this year in March.

Not only did I learn about how the different layers of the OSI model communicated with each other, I also acquired some hands-on networking experience, albeit on a small scale: I took responsibility for my family's home network.

I replaced the main router's stock firmware with #link("https://openwrt.org")[OpenWRT], a custom Linux-based operating system for consumer routers, in order to get more granular control.
I then set up a recursive DNS server and adblocker, and forwarded all local traffic through it in order to keep my family safe from various online threats.

But there is only so much I can learn by messing around on my LAN.
I believe that working at Labatt will help me further grow and apply what I learned, while also helping out a larger community and purpose.

I appreciate your time and hope to hear from you soon.
