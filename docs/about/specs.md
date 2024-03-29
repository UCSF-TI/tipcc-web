# Cluster Specifications

## Software environment

All nodes on the cluster runs [Scyld ClusterWare] 6.6 (Red Hat Enterprise Linux 6.6) by Scyld Software (subsididary of [Penguin Computing]).
The job scheduler is Torque/PBS 4.2.9 which runs together with the Moab workload manager.


## Hardware

### Login Nodes

The [cluster can be accessed]({{ '/get-started/access-cluster.html' | relative_url }}) via SSH to the login node:

1. {{ site.login.name  }}: `{{ site.login.hostname }}`

The login nodes can only be accessed from within the UCSF network.


### Development Nodes

The cluster has development nodes for the purpose of validating scripts, prototyping pipelines, compiling software, and more.  Development nodes [can be accessed using SSH]({{ '/get-started/development-prototyping.html' | relative_url }}) and only from the login nodes.

Node      | # Cores |       CPU |       RAM |  Local `/scratch` |
----------|---------|----------:|----------:|------------------:|
n6        |      12 |   2.4 GHz |    64 GiB |          0.86 TiB |


### Compute Nodes

Node  | # Cores |    CPU  |     RAM | Local `/scratch/` | Notes                        | Priority
------|--------:|--------:|--------:|------------------:|------------------------------|--------------------------------------------
n8    |      12 | 2.3 GHz |  64 GiB |          0.86 TiB |                              | (communal)
n11   |      12 | 2.3 GHz |  64 GiB |           1.8 TiB |                              | (communal)
**Total** | **{{ site.specs.physical_cores }}** | | |   |                              |

The head node specs: 48 cores, 2.6 GHz CPU, 512 GiB RAM.  
The [local disk space]({{ '/good-practices/using-local-scratch.html' | relative_url }}) is mounted as `/scratch/`, unique to each node and, and is much faster than any other disk on the cluster.  Files on local `/scratch` and local `/tmp` older than 35 days are automatically removed.  On interactive node n6, this limit is 14 days. 
All nodes have AMD processors.
The {{ site.specs.communal_nodes }} communal nodes with a total of {{ site.specs.communal_cores }} cores are available to all users. The non-communal nodes are only available to specific groups and their members.

Source: `pbsnodes`, `cat /proc/cpuinfo` and `grep -F SRCFG /opt/moab/etc/moab.cfg`.


### Compute Nodes Migrated to C4

The following TIPCC compute nodes have been, or is in the process of being, migrated to the [C4 cluster](https://ucsf-cbi.github.io/c4/).


Node | # Cores |    CPU  |     RAM | Local `/scratch/` | Notes                       | Priority
-----|--------:|--------:|--------:|-----------------:|------------------------------|---------------------------------------
n0   |      64 | 2.6 GHz | 512 GiB |          5.2 TiB | InfiniBand (IB), FMA4        | CBI, Taylor Lab
n2   |      48 | 2.6 GHz | 512 GiB |          2.5 TiB | InfiniBand (IB), FMA4        | (communal)
n3   |      48 | 2.4 GHz | 384 GiB |          5.2 TiB | InfiniBand (IB), FMA4        | Krummel Lab
n5   |      12 | 2.4 GHz |  32 GiB |          1.8 TiB |                              | (communal)
n7   |      12 | 2.3 GHz |  64 GiB |          1.8 TiB |                              | (communal)
n10  |      12 | 2.3 GHz |  64 GiB |          1.7 TiB |                              | (communal)
n14  |      24 | 3.5 GHz | 128 GiB |         0.84 TiB | InfiniBand (IB), Intel       | Witte Lab
n15  |      64 | 2.6 GHz | 256 GiB |          1.7 TiB | InfiniBand (IB), FMA4        | Witte Lab
n12  |      48 | 2.3 GHz | 384 GiB |          2.0 TiB | Tesla M2070 GPU w/ 448 cores | (communal)
n13  |      48 | 2.3 GHz | 512 GiB |          1.6 TiB | Tesla M2070 GPU w/ 448 cores | (communal)
n16  |      64 | 2.6 GHz | 512 GiB |         10.7 TiB | InfiniBand (IB), FMA4        | Witte Lab
n17  |      64 | 2.6 GHz | 512 GiB |          5.2 TiB | InfiniBand (IB), FMA4        | CBI, Taylor Lab
n18  |      64 | 2.6 GHz | 512 GiB |          5.2 TiB | InfiniBand (IB), FMA4        | Diaz Lab, Costello Lab, Fung Lab, Song Lab
n19  |      64 | 2.6 GHz | 512 GiB |          5.2 TiB | InfiniBand (IB), FMA4        | Diaz Lab, Costello Lab, Fung Lab, Song Lab
n20  |      64 | 2.6 GHz | 512 GiB |          5.2 TiB | InfiniBand (IB), FMA4        | Diaz Lab, Costello Lab, Fung Lab, Song Lab
n21  |      48 | 2.8 GHz | 256 GiB |          5.2 TiB | InfiniBand (IB), FMA4        | Bandyopadhyay Lab
n22  |      48 | 2.8 GHz | 384 GiB |          5.2 TiB | InfiniBand (IB), FMA4        | Molinaro Lab
n23  |      48 | 2.8 GHz | 384 GiB |          5.2 TiB | InfiniBand (IB), FMA4        | Molinaro Lab
n27  |      48 | 1.4 GHz | 384 GiB |          5.2 TiB | InfiniBand (IB), FMA4        | Costello Lab
n28  |      64 | 2.3 GHz | 512 GiB |          2.6 TiB | InfiniBand (IB), FMA4        | Shannon Lab
n29  |      64 | 2.1 GHz | 512 GiB |          2.4 TiB | InfiniBand (IB), FMA4.       | Krummel Lab              
n30* |      64 | 2.1 GHz | 512 GiB |          2.9 TiB | InfiniBand (IB), Intel       | Kriegstein Lab
n31* |      64 | 2.1 GHz | 768 GiB |          4.7 TiB | InfiniBand (IB), Intel       | Ziv Lab
n32* |      64 | 2.1 GHz | 512 GiB |          3.3 TiB | InfiniBand (IB), Intel       | Blelloch Lab
n33* |      64 | 2.1 GHz | 512 GiB |          3.3 TiB | InfiniBand (IB), Intel       | Diaz Lab
n34* |      64 | 2.1 GHz | 512 GiB |          2.t TiB | InfiniBand (IB), Intel       | Krummel Lab    
n35* |      64 | 2.1 GHz | 512 GiB |          2.6 TiB | InfiniBand (IB), Intel       | Shannon Lab
n36* |     128 | 2.1 GHz | 512 GiB |          2.6 TiB | InfiniBand (IB), Intel       | Kim Lab
n37* |      64 | 2.1 GHz | 512 GiB |          2.6 TiB | Intel                        | Bastian Lab
n38* |      64 | 2.1 GHz | 512 GiB |          2.6 TiB | InfiniBand (IB), Intel       | Francis Lab
     |         |         |         |                  |                              |


<style>
table {
  margin-top: 2ex;
  margin-bottom: 2ex;
}
tr:last-child { border-top: 2px solid #000; }
</style>

[Scyld ClusterWare]: https://www.penguincomputing.com/solutions/scyld-clusterware/
[Penguin Computing]: https://en.wikipedia.org/wiki/Penguin_Computing

