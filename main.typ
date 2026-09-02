#import "src/cv.typ": *

#set page(
  "us-letter",
  margin: (x: 0.5in, y: 0.5in)
)

#set text(
  font: "Inter",
  size: 11pt
)

#show heading: set block(
  above: 0.8em,
  below: 0.5em,
)

#title(yaml("data/about.yaml"))

#work(yaml("data/work.yaml"))

- Built a PowerBI dashboard using HERD and IPEDS data with Python pandas and numpy libraries.
- Responsible for the disposal and recording of sensitive financial documents pertaining to UTSA grants and scholarships.
- Organized university documents to be easily accessible to coworkers.

#edu(yaml("data/edu.yaml"))

- Cumulative GPA: 3.7/4.0
- Dean's List & Honor Roll

#proj(yaml("data/projects.yaml"))

#certs(yaml("data/certs.yaml"))

#skills()
- *Programming Languages*: Go, Python, C, HTML/CSS, Bash
- *Technologies*: Git, UNIX, Docker/Podman, Caddy, NGINX, Traefik
- *Virtualization*: QEMU/KVM, Proxmox, LXC
- *Networking*: NFS, Samba/CIFS, DNS
