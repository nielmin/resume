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
  title: "Student Assistant",
  location: "San Antonio, TX",
  company: "Graduate School & Research Building, UTSA",
  dates: dates-helper(start-date: "August 2021", end-date: "May 2023"),
)
- Built a PowerBI dashboard using HERD and IPEDS data with Python `pandas` and `numpy` libraries. 
- Responsible for the disposal and recording of sensitive financial documents pertaining to UTSA grants and scholarships.
- Helped organize university documents to easily accessible to coworkers. 

#work(
  title: "Dishwasher",
  location: "San Antonio, TX",
  company: "Las Palapas, San Antonio, TX",
  dates: dates-helper(start-date: "June 2021", end-date: "July 2021"),
)
- Oversaw the cleanliness of incoming dishes, silverware, and kitchen equipment.
- Responsible for the general state of the kitchen near closing time, such as taking out the trash and mopping the floor.

#work(
  title: "Editor/Proofreader",
  location: "San Antonio, TX",
  company: "Freelance, Remote",
  dates: dates-helper(start-date: "June 2020", end-date: "August 2020"),
)
- Commissioned by a family member to review their dissertation for grammatical and structural errors.
