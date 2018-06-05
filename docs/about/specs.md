# Cluster Specifications

## Software environment

All nodes on the cluster runs [Scyld ClusterWare] 6.6 (Red Hat Enterprise Linux 6.6) by Scyld Software (subsididary of [Penguin Computing]).
The job scheduler is Torque/PBS 4.2.9 which runs together with the Moab workload manager.


## Hardware

### Compute Nodes

Node      |  # Physical Cores |  # Cores |      CPU  |       RAM | Local `/scratch/` | Notes                        | Priority
----------|------------------:|---------:|----------:|----------:|-----------------:|------------------------------|-----------
n0        |                32 |       64 |   2.6 GHz |   512 GiB |           5.2 TiB | InfiniBand (IB), FMA4        | CBI, Taylor Lab
n2        |                24 |       48 |   2.6 GHz |   512 GiB |           2.5 TiB | InfiniBand (IB), FMA4        | (communal)
n3        |                24 |       48 |   2.4 GHz |   384 GiB |           5.2 TiB | InfiniBand (IB), FMA4        | Krummel Lab
n4        |                 6 |       12 |   2.4 GHz |    32 GiB |           1.8 TiB |                              | (communal)
n5        |                 6 |       12 |   2.4 GHz |    32 GiB |           1.8 TiB |                              | (communal)
n7        |                 6 |       12 |   2.3 GHz |    64 GiB |           1.8 TiB |                              | (communal)
n8        |                 6 |       12 |   2.3 GHz |    64 GiB |           1.7 TiB |                              | (communal)
n9        |                 6 |       12 |   2.3 GHz |    64 GiB |           1.8 TiB |                              | (communal)
n10       |                 6 |       12 |   2.3 GHz |    64 GiB |           1.7 TiB |                              | (communal)
n11       |                 6 |       12 |   2.3 GHz |    64 GiB |           1.8 TiB |                              | (communal)
n12       |                24 |       48 |   2.3 GHz |   384 GiB |           1.7 TiB | Tesla M2070 GPU w/ 448 cores | (communal)
n13       |                24 |       48 |   2.3 GHz |   512 GiB |           1.6 TiB | Tesla M2070 GPU w/ 448 cores | (communal)
n14       |                 6 |       12 |   3.5 GHz |   128 GiB |          0.84 TiB | InfiniBand (IB), Intel       | Witte Lab
n15       |                32 |       64 |   2.6 GHz |   256 GiB |           1.7 TiB | InfiniBand (IB), FMA4        | Witte Lab
n16       |                32 |       64 |   2.6 GHz |   512 GiB |          10.7 TiB | InfiniBand (IB), FMA4        | Witte Lab
n17       |                32 |       64 |   2.6 GHz |   512 GiB |           5.2 TiB | InfiniBand (IB), FMA4        | CBI, Taylor Lab
n18       |                32 |       64 |   2.6 GHz |   512 GiB |           5.2 TiB | InfiniBand (IB), FMA4        | Diaz Lab, Costello Lab, Fung Lab, Song Lab
n19       |                32 |       64 |   2.6 GHz |   512 GiB |           5.2 TiB | InfiniBand (IB), FMA4        | Diaz Lab, Costello Lab, Fung Lab, Song Lab
n20       |                32 |       64 |   2.6 GHz |   512 GiB |           5.2 TiB | InfiniBand (IB), FMA4        | Diaz Lab, Costello Lab, Fung Lab, Song Lab
n21       |                32 |       64 |   2.8 GHz |   256 GiB |           5.2 TiB | InfiniBand (IB), FMA4        | Bandyopadhyay Lab
n22       |                24 |       48 |   2.8 GHz |   384 GiB |           5.2 TiB | InfiniBand (IB), FMA4        | Molinaro Lab
n23       |                24 |       48 |   2.8 GHz |   384 GiB |           5.2 TiB | InfiniBand (IB), FMA4        | Molinaro Lab
n24       |                 6 |       12 |   2.4 GHz |    32 GiB |           1.7 TiB |                              | (communal)
n25       |                 6 |       12 |   2.4 GHz |    32 GiB |           1.7 TiB |                              | (communal)
n26       |                 6 |       12 |   2.4 GHz |    32 GiB |           1.7 TiB |                              | (communal)
n27       |                24 |       48 |   1.4 GHz |   384 GiB |           5.2 TiB | InfiniBand (IB), FMA4        | Costello Lab
n28       |                32 |       64 |   2.3 GHz |   512 GiB |           2.6 TiB | InfiniBand (IB), FMA4        | Shannon Lab
n29       |                32 |       64 |   2.1 GHz |   512 GiB |           3.0 TiB | InfiniBand (IB), Intel       | Krummel Lab
n30       |                32 |       64 |   2.1 GHz |   512 GiB |           3.0 TiB | InfiniBand (IB), Intel       | Kriegstein Lab
**Total** |           **586** | **1172** |           |           |                   |                              |

The head node specs: 48 cores (24 physical cores), 2.6 GHz CPU, 512 GiB RAM.  
The [local disk space]({{ '/good-practices/using-local-scratch.html' | relative_url }}) is mounted as `/scratch/`, unique to each node and, and is much faster than any other disk on the cluster.  Files older than 14 days are automatically removed.  
All nodes have AMD processors, except n14, n29, and n30 which have Intel processors.  
Nodes n12 & n13 have Nvidia Tesla M2070 graphics processing units (GPUs) which are [CUDA 2.0 compute compatibility](https://en.wikipedia.org/wiki/CUDA#GPUs_supported).

Source: `pbsnodes`, `cat /proc/cpuinfo` and `grep -F SRCFG /opt/moab/etc/moab.cfg`.


### Login Nodes

The [cluster can be accessed]({{ '/get-started/access-cluster.html' | relative_url }}) via SSH to the login node:

1. {{ site.login.name  }}: `{{ site.login.hostname }}`

The login nodes can only be accessed from within the UCSF network.

### Interactive Nodes

The cluster has interactive nodes for the purpose of validating scripts, prototyping pipelines, compiling software, and more.  Interactive nodes [can be accessed using SSH]({{ '/get-started/interactive-usage.html' | relative_url }}) and only from the login nodes.

Node      | # Physical Cores | # Cores |       CPU |       RAM |  Local `/scratch` |
----------|------------------|---------|----------:|----------:|------------------:|
n6        |                6 |      12 |   2.4 GHz |    64 GiB |           1.8 TiB |


<style>
table {
  margin-top: 2ex;
  margin-bottom: 2ex;
}
tr:last-child { border-top: 2px solid #000; }
</style>

[Scyld ClusterWare]: http://www.penguincomputing.com/solutions/scyld-clusterware/
[Penguin Computing]: https://en.wikipedia.org/wiki/Penguin_Computing


