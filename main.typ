#import "@preview/basic-resume:0.2.8": *

// Put your personal information here, replacing mine
#let name = "Daniel Hwang"
#let location = "San Antonio, TX"
#let email = "contact@danhwa.com"
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
- Relevant Coursework: Data Structures, Cloud Computing, Web Technologies, Software Engineering, Database Systems  

== Work Experience

#work(
  title: "Subatomic Shepherd and Caffeine Connoisseur",
  location: "Atomville, CA",
  company: "Microscopic Circus, Schrodinger's University",
  dates: dates-helper(start-date: "May 2024", end-date: "Present"),
)
- more bullet points go here

// ... more headers and stuff below
