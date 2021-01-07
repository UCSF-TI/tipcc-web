# TIPCC - a High-Performance Compute Environment at UCSF

At the UCSF Helen Diller Family Comprehensive Cancer Center we have a large Linux compute cluster that is available to anyone affiliated with the Cancer Center - feel free to [contact us] if you would like to [join] or have questions.

As of January 2021, the cluster has {{ site.specs.nodes }} compute nodes and {{ site.specs.physical_cores }} cores. Each node has up to 512 GiB of RAM and up to 10 TiB of fast local disk space. In addition to ~220 TiB global disk space shared among all users, several research groups have their own storage mounted on the cluster.  For more details, see the [cluster specifications].

We are currently in the process of building a new "C4" cluster up with CentOS 7, a more modern software stack, and a Slurm scheduler.  The goal is to go live with C4 on January 11, 2021.

[contact us]: {{ '/about/contact.html' | relative_url }}
[join]: {{ '/about/join.html' | relative_url }}
[cluster specifications]: {{ '/about/specs.html' | relative_url }}
