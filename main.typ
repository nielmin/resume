#import "src/cv.typ": *

#set page(
  "us-letter",
  margin: (x: 0.5in, y: 0.5in)
)

#set text(
  font: "Inter",
  size: 11pt
)

#title(yaml("data/about.yaml"))

#certs(yaml("data/certs.yaml"))

#edu(yaml("data/edu.yaml"))

- Cumulative GPA: 3.73/4.0
- Dean's List & Honor Roll

#work(yaml("data/work.yaml"))

- Built a PowerBI dashboard using HERD and IPEDS data with Python pandas and numpy libraries.
- Responsible for the disposal and recording of sensitive financial documents pertaining to UTSA grants and scholarships.
- Organized university documents to easily accessible to coworkers.

#proj(yaml("data/projects.yaml"))


#skills()

- *Programming Languages*: Go, Python, C, HTML/CSS, Bash
- *Technologies*: Git, UNIX, Docker/Podman, Caddy, NGINX, Traefik
- *Virtualization*: QEMU/KVM, Proxmox, LXC
- *Networking*: NFS, Samba/CIFS, DNS
