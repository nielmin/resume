#import "@preview/basic-resume:0.2.8": *

// Put your personal information here, replacing mine
#let name = "Daniel Hwang"
#let location = "San Antonio, TX"
#let email = "danhwa13@gmail.com"
#let github = "github.com/nielmin"
// #let linkedin = "linkedin.com/in/stuxf"
#let phone = "+1 (210) 636-8489"
//#let personal-site = "stuxf.dev"

#show: resume.with(
  author: name,
  // All the lines below are optional. 
  // For example, if you want to to hide your phone number:
  // feel free to comment those lines out and they will not show.
  location: location,
  email: email,
  github: github,
  // linkedin: linkedin,
  phone: phone,
  // personal-site: personal-site,
  accent-color: "#26428b",
  font: "New Computer Modern",
  paper: "us-letter",
  author-position: left,
  personal-info-position: left,
)

/*
* Lines that start with == are formatted into section headings
* You can use the specific formatting functions if needed
* The following formatting functions are listed below
* #edu(dates: "", degree: "", gpa: "", institution: "", location: "")
* #work(company: "", dates: "", location: "", title: "")
* #project(dates: "", name: "", role: "", url: "")
* #extracurriculars(activity: "", dates: "")
* There are also the following generic functions that don't apply any formatting
* #generic-two-by-two(top-left: "", top-right: "", bottom-left: "", bottom-right: "")
* #generic-one-by-two(left: "", right: "")
*/
== Education

#edu(
  institution: "University of Texas at San Antonio",
  location: "San Antonio, TX",
  dates: dates-helper(start-date: "Aug 2021", end-date: "August 2024"),
  degree: "Bachelor's of Science, Computer Science",
)
- Cumulative GPA: 3.73\/4.0 | Dean's List, Honor Roll

== Work Experience

#work(
  title: "Student Assistant",
  location: "San Antonio, TX",
  company: "Graduate School & Research Building, UTSA",
  dates: dates-helper(start-date: "August 2021", end-date: "May 2023"),
)
- Built a PowerBI dashboard using HERD and IPEDS data with Python `pandas` and `numpy` libraries. 
- Responsible for the disposal and recording of sensitive financial documents pertaining to UTSA grants and scholarships.
- Organized university documents to easily accessible to coworkers. 

== Projects

#project(
  name: "gryt",
  url: "github.com/nielmin/gryt",
)
- A simple CLI app that converts a YouTube channel URL to an RSS feed.

#project(
  name: "NixOS Configuration",
  url: "github.com/nielmin/nixos-config",
)
- Personal NixOS configuration for my desktop, laptop, and servers.
- Infrastructure as Code (IaC) to declaratively reproduce my personal machines and dotfiles using the `nix` language and `home-manager`.

#project(
  name: "Fedora CoreOS",
  url: "github.com/nielmin/fcos",
)
- A set of butane files that deploy either a Caddy or Traefik reverse proxy.
- Automatic compliation of ignition files using GitHub Actions to bootstrap a CoreOS installer.

#project(
  name: "Personal website",
  url: "github.com/nielmin/nielmin.github.io",
)
- A personal blog using `11ty`, a static site generator.

#project(
  name: "dotfiles",
  url: "github.com/nielmin/dotfiles",
)
- Personal configurations for my development tools such as neovim, emacs, bash, tmux, etc..

== Skills

- *Programming Languages*: Go, Python, C, HTML/CSS, Bash
- *Technologies*: Git, UNIX, Docker, Caddy, NGINX
- *Virtualization*: QEMU/KVM, Proxmox, LXC
- *Networking*: NFS, Samba/CIFS, DNS
