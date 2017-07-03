
<!--
WARNING: do _not_ update this file; it is automatically generated from modules.md.rsp and will be overwritten.
-->

<div class="alert alert-warning" role="alert">
Environment modules are currently in beta - to enable them, see Configuration / <a href="{{ '/configuration/lmod.html' | relative_url }}">Enable Software Modules</a>.
</div>

# Software

To use one or more of the below software modules, use `module load <name>` or `module load <name>/<version>`.  Here are a few examples:
```sh
module load bowtie2
module load bowtie2/2.2.6
module load python r bwa
```

These software modules are available from different _module repositories_, each providing several modules (more details below).  The available repositories are:

<table>
<tr>
  <th>repository</th>
  <th>description</th>
 </tr>
 <tr>
  <td>
  <strong>CBC</strong><br>
  
  </td>
  <td>
  <strong><p>Module Repository by CBC (Computational Biology Core)</p>
</strong><br>
  <p>Repository of modules shared by the Computational Biology Core (<a href="http://cbc.ucsf.edu">http://cbc.ucsf.edu</a>). When loading this module, your <code>MODULEPATH</code> will be extended and you will get access to a large number of additional modules. When unloading the module, the changes to <code>MODULEPATH</code> will be undone. Note that any modules from the CBC repository still loaded when you unload this repository module, will remain in your list of loaded modules but will be inactivate (i.e. behave as they never were loaded) until you reload this repository module again.</p>
<br>
  URL: <p><a href="http://cbc.ucsf.edu/">http://cbc.ucsf.edu/</a></p>
<br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>Personal</strong><br>
  
  </td>
  <td>
  <strong><p>Modules in ~/modulefiles/</p>
</strong><br>
  <p>Personal modules in <code>~/modulefiles/</code>.  For instance, module definition file <code>~/modulefiles/foo/1.0.lua</code> provides module foo/1.0, which can be loaded using <code>module load foo/1.0</code>.</p>
<br>
  </td>
 </tr>
</table>
<br>

To get access to one or more of these module repositories and see what modules they provide (see below), load them as regular modules, e.g.
```sh
module load CBC
module avail
```

_Technical details_: Loading a module repository will append its folder to the `$MODULEPATH`.  Unloading it will undo any changes.  For instance, `module load CBC` appends `$MODULEPATH_ROOT/CBC` to your `$MODULEPATH`.



## Module Repository 'CBC'

Maintained by: [Computational Biology Core](http://cbc.ucsf.edu)

<table>
<tr>
  <th>module &amp; versions</th>
  <th>description</th>
 </tr>
 <tr>
  <td>
  <strong>anaconda</strong><br>
  
  </td>
  <td>
  <strong><p>Anaconda Package Manager w/ CBC-shared installations</p>
</strong><br>
  <p>Open Data Science Platform powered by Python</p>
<br>
  URL: <p><a href="https://www.continuum.io/anaconda-overview">https://www.continuum.io/anaconda-overview</a></p>
<br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>anaconda-python</strong><br>
  2.7.13
  </td>
  <td>
  <strong><p>Anaconda: The Python Programming Language</p>
</strong><br>
  <p>The Python programming language (by Anaconda)</p>
<br>
  URL: <p><a href="https://www.python.org/">https://www.python.org/</a></p>
<br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>bamutil</strong><br>
  1.0.14
  </td>
  <td>
  <strong><p>BamUtil - programs for working on SAM/BAM files</p>
</strong><br>
  <p>bamUtil is a repository that contains several programs that perform operations on SAM/BAM files. All of these programs are built into a single executable, bam.</p>
<br>
  URL: <p><a href="http://genome.sph.umich.edu/wiki/BamUtil">http://genome.sph.umich.edu/wiki/BamUtil</a></p>
<br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>bcftools</strong><br>
  1.2, 1.3.1, 1.4
  </td>
  <td>
  <strong><p>BCFtools: utilities for variant calling and manipulating VCFs and BCFs</p>
</strong><br>
  <p>BCFtools is a set of utilities that manipulate variant calls in the Variant Call Format (VCF) and its binary counterpart BCF. All commands work transparently with both VCFs and BCFs, both uncompressed and BGZF-compressed.</p>
<br>
  URL: <p><a href="https://samtools.github.io/bcftools/bcftools.html">https://samtools.github.io/bcftools/bcftools.html</a></p>
<br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>bedops</strong><br>
  1.2.2c
  </td>
  <td>
  <strong><p>BEDOPS: the fast, highly scalable and easily-parallelizable genome analysis toolkit</p>
</strong><br>
  <p>BEDOPS is an open-source command-line toolkit that performs highly efficient and scalable Boolean and other set operations, statistical calculations, archiving, conversion and other management of genomic data of arbitrary scale. Tasks can be easily split by chromosome for distributing whole-genome analyses across a computational cluster.</p>
<br>
  URL: <p><a href="https://bedops.readthedocs.io/">https://bedops.readthedocs.io/</a></p>
<br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>bedtools2</strong><br>
  2.13.4, 2.15.0, 2.16.2, 2.26.0
  </td>
  <td>
  <strong><p>Bedtools2</p>
</strong><br>
  <p>Collectively, the bedtools utilities are a swiss-army knife of tools for a wide-range of genomics analysis tasks. The most widely-used tools enable genome arithmetic: that is, set theory on the genome. For example, bedtools allows one to intersect, merge, count, complement, and shuffle genomic intervals from multiple files in widely-used genomic file formats such as BAM, BED, GFF/GTF, VCF.</p>
<br>
  URL: <p><a href="https://github.com/arq5x/bedtools2/">https://github.com/arq5x/bedtools2/</a></p>
<br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>blast</strong><br>
  2.2.26
  </td>
  <td>
  <strong><p>BLAST: Basic Local Alignment Search Tool</p>
</strong><br>
  <p>BLAST finds regions of similarity between biological sequences. The program compares nucleotide or protein	sequences to sequence databases and calculates the statistical significance.</p>
<br>
  URL: <p><a href="https://blast.ncbi.nlm.nih.gov/Blast.cgi">https://blast.ncbi.nlm.nih.gov/Blast.cgi</a></p>
<br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>bowtie2</strong><br>
  2.0.0-beta6, 2.1.0, 2.2.6, 2.2.9
  </td>
  <td>
  <strong><p>Bowtie2</p>
</strong><br>
  <p>Bowtie 2 is an ultrafast and memory-efficient tool for aligning sequencing reads to long reference sequences.</p>
<br>
  URL: <p><a href="http://bowtie-bio.sourceforge.net/bowtie2/index.shtml">http://bowtie-bio.sourceforge.net/bowtie2/index.shtml</a></p>
<br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>bwa</strong><br>
  0.5.10, 0.6.1, 0.7.12, 0.7.5a
  </td>
  <td>
  <strong><p>Burrows-Wheeler Aligner (BWA)</p>
</strong><br>
  <p>Burrows-Wheeler Aligner (BWA) is a software package for mapping low-divergent sequences against a large reference genome, such as the human genome.</p>
<br>
  URL: <p><a href="http://bio-bwa.sourceforge.net/">http://bio-bwa.sourceforge.net/</a></p>
<br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>cbc-bin</strong><br>
  0.1.0
  </td>
  <td>
  <strong><p>CBC-shared Scripts and Binaries</p>
</strong><br>
  <p>Utility scripts and binaries of the UCSF CBC group.</p>
<br>
  URL: <p><a href="https://cbc.ucsf.edu/">https://cbc.ucsf.edu/</a></p>
<br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>cbc-devel</strong><br>
  0.1.0
  </td>
  <td>
  <strong><p>CBC-shared Developer's Environment</p>
</strong><br>
  <p>Setup for building and installing software inline with the CBC-shared setup.</p>
<br>
  URL: <p><a href="https://cbc.ucsf.edu/">https://cbc.ucsf.edu/</a></p>
<br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>cbc-shared</strong><br>
  0.1.0, 0.1.1, 0.1.2
  </td>
  <td>
  <strong><p>CBC-shared Software: Default Set</p>
</strong><br>
  <p>When loaded, this module loads the default set of CBC-shared software.</p>
<br>
  URL: <p><a href="https://github.com/UCSF-TI/TIPCC/wiki/Software-shared-by-CBC">https://github.com/UCSF-TI/TIPCC/wiki/Software-shared-by-CBC</a></p>
<br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>control-freec</strong><br>
  2.5, 7.2-3
  </td>
  <td>
  <strong><p>Control FREEC: Control-FREE Copy Number and Genotype Caller</p>
</strong><br>
  <p>Prediction of copy numbers and allelic content using deep-sequencing data.</p>
<br>
  URL: <p><a href="http://boevalab.com/FREEC/">http://boevalab.com/FREEC/</a></p>
<br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>cufflinks</strong><br>
  1.0.3, 1.3.0
  </td>
  <td>
  <strong><p>Cufflinks: Transcriptome assembly and differential expression analysis for RNA-Seq</p>
</strong><br>
  <p>Cufflinks assembles transcripts, estimates their abundances, and tests for differential expression and regulation in RNA-Seq samples. It accepts aligned RNA-Seq reads and assembles the alignments into a parsimonious set of transcripts. Cufflinks then estimates the relative abundances of these transcripts based on how many reads support each one, taking into account biases in library preparation protocols.</p>
<br>
  URL: <p><a href="http://cole-trapnell-lab.github.io/cufflinks/">http://cole-trapnell-lab.github.io/cufflinks/</a></p>
<br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>fastqc</strong><br>
  0.10.1, 0.11.2
  </td>
  <td>
  <strong><p>FastQC</p>
</strong><br>
  <p>A quality control tool for high throughput sequence data.</p>
<br>
  URL: <p><a href="http://www.bioinformatics.babraham.ac.uk/projects/fastqc/">http://www.bioinformatics.babraham.ac.uk/projects/fastqc/</a></p>
<br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>fiji</strong><br>
  2.0.0-rc-54
  </td>
  <td>
  <strong><p>Fiji - an Image Processing Package</p>
</strong><br>
  <p>Fiji is a &quot;batteries-included&quot; distribution of ImageJ, bundling a lot of plugins which facilitate scientific image analysis.</p>
<br>
  URL: <p><a href="https://imagej.net/Fiji/Downloads">https://imagej.net/Fiji/Downloads</a></p>
<br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>gdc-client</strong><br>
  1.0.1
  </td>
  <td>
  <strong><p>GDC Data Transfer Tool</p>
</strong><br>
  <p>The GDC provides a standard client-based mechanism in support of high performance data downloads and submission.</p>
<br>
  URL: <p><a href="https://gdc.cancer.gov/access-data/gdc-data-transfer-tool">https://gdc.cancer.gov/access-data/gdc-data-transfer-tool</a></p>
<br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>genetorrent</strong><br>
  3.0.2, 3.8.5a-94
  </td>
  <td>
  <strong><p>GeneTorrent</p>
</strong><br>
  <p>GeneTorrent is a set of executables for accessing data in the Cancer Genomics Hub (CGHub), a secure repository for storing, cataloging, and accessing cancer genome sequences, alignments, and mutation information from the Cancer Genome Atlas (TCGA) consortium and related projects.</p>
<br>
  URL: <p><a href="https://hpc.nih.gov/apps/GeneTorrent.html">https://hpc.nih.gov/apps/GeneTorrent.html</a></p>
<br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>git</strong><br>
  2.1.1, 2.1.3
  </td>
  <td>
  <strong><p>Git - Distributed Version Control System</p>
</strong><br>
  <p>Git is a free and open source distributed version control system designed to handle everything from small to very large projects with speed and efficiency.</p>
<br>
  URL: <p><a href="https://git-scm.com/">https://git-scm.com/</a></p>
<br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>gitflow</strong><br>
  0.4.2
  </td>
  <td>
  <strong><p>Git extension Git Flow</p>
</strong><br>
  <p>A collection of Git extensions to provide high-level repository operations for Vincent Driessen's branching model.</p>
<br>
  URL: <p><a href="https://github.com/nvie/gitflow">https://github.com/nvie/gitflow</a></p>
<br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>htop</strong><br>
  1.0.3
  </td>
  <td>
  <strong><p>htop - an interactive process viewer for Unix</p>
</strong><br>
  <p>htop is an interactive process viewer for Unix systems. It is a text-mode application (for console or X terminals) and requires ncurses.</p>
<br>
  URL: <p><a href="http://hisham.hm/htop/">http://hisham.hm/htop/</a></p>
<br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>htseq</strong><br>
  0.5.4p3, 0.6.1
  </td>
  <td>
  <strong><p>HTSeq: Analysing high-throughput sequencing data with Python</p>
</strong><br>
  <p>HTSeq is a Python package that provides infrastructure to process data from high-throughput sequencing assays.</p>
<br>
  URL: <p><a href="http://www-huber.embl.de/users/anders/HTSeq/">http://www-huber.embl.de/users/anders/HTSeq/</a></p>
<br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>htslib</strong><br>
  1.3.2
  </td>
  <td>
  <strong><p>Samtools</p>
</strong><br>
  <p>Samtools is a suite of programs for interacting with high-throughput sequencing data. It consists of three separate repositories: Samtools, BCFtools, and HTSlib.</p>
<br>
  URL: <p><a href="http://www.htslib.org/">http://www.htslib.org/</a></p>
<br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>igv</strong><br>
  2.1.2, 2.3.31, 2.3.68, 2.3.92
  </td>
  <td>
  <strong><p>IGV: The Integrative Genomics Viewer</p>
</strong><br>
  <p>The Integrative Genomics Viewer (IGV) is a high-performance visualization tool for interactive exploration of large, integrated genomic datasets. It supports a wide variety of data types, including array-based and next-generation sequence data, and genomic annotations.</p>
<br>
  URL: <p><a href="https://software.broadinstitute.org/software/igv/">https://software.broadinstitute.org/software/igv/</a></p>
<br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>igvtools</strong><br>
  2.3.68, 2.3.91
  </td>
  <td>
  <strong><p>IGVTools</p>
</strong><br>
  <p>The igvtools utility provides a set of tools for pre-processing data files.</p>
<br>
  URL: <p><a href="https://software.broadinstitute.org/software/igv/igvtools">https://software.broadinstitute.org/software/igv/igvtools</a></p>
<br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>jdk</strong><br>
  1.6.0, 1.7.0, 1.8.0
  </td>
  <td>
  <strong><p>Java Development Kit (JDK)</p>
</strong><br>
  <p>The Java programming language</p>
<br>
  URL: <p><a href="https://www.java.com/">https://www.java.com/</a></p>
<br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>lua</strong><br>
  5.1.4, 5.3.3
  </td>
  <td>
  <strong><p>The Lua Programming Language</p>
</strong><br>
  <p>The Lua programming language</p>
<br>
  URL: <p><a href="https://www.lua.org/">https://www.lua.org/</a></p>
<br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>luarocks</strong><br>
  2.4.2
  </td>
  <td>
  <strong><p>LuaRocks - the Lua package manager</p>
</strong><br>
  <p>LuaRocks is the package manager for Lua modules.</p>
<br>
  URL: <p><a href="https://luarocks.org/">https://luarocks.org/</a></p>
<br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>matlab</strong><br>
  R2010b, R2012a
  </td>
  <td>
  <strong><p>The Matlab Programming Language</p>
</strong><br>
  <p>The Matlab programming language</p>
<br>
  URL: <p><a href="https://www.mathworks.com/products/matlab.html">https://www.mathworks.com/products/matlab.html</a></p>
<br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>pandoc</strong><br>
  1.19.2-0
  </td>
  <td>
  <strong><p>Pandoc - a universal document converter</p>
</strong><br>
  <p>Pandoc is a Haskell library for converting from one markup format to another, and a command-line tool that uses this library.</p>
<br>
  URL: <p><a href="http://pandoc.org/">http://pandoc.org/</a></p>
<br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>pip</strong><br>
  9.0.1
  </td>
  <td>
  <strong><p>pip - The PyPA recommended tool for installing Python packages</p>
</strong><br>
  <p>The PyPA recommended tool for installing Python packages.</p>
<br>
  URL: <p><a href="https://pypi.python.org/pypi/pip">https://pypi.python.org/pypi/pip</a></p>
<br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>python</strong><br>
  2.7.3, 2.7.4, 2.7.9
  </td>
  <td>
  <strong><p>The Python Programming Language</p>
</strong><br>
  <p>The Python programming language</p>
<br>
  URL: <p><a href="https://www.python.org/">https://www.python.org/</a></p>
<br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>r</strong><br>
  2.11.0, 2.11.1, 2.12.2, 2.13.1, 2.13.2, 2.14.0, 2.15.0, 2.15.1, 2.15.2, 2.15.3, 3.0.0, 3.0.1, 3.0.2, 3.0.3, 3.1.0, 3.1.1, 3.1.2, 3.1.3, 3.2.0, 3.2.1, 3.2.2, 3.2.3, 3.2.4, 3.2.5, 3.3.0, 3.3.1, 3.3.2, 3.3.3, 3.3.3patched, 3.4.0, 3.4.0devel, 3.4.0patched, 3.4.1, 3.5.0devel, devel, oldrel, patched, release
  </td>
  <td>
  <strong><p>The R Programming Language</p>
</strong><br>
  <p>The R programming language</p>
<br>
  URL: <p><a href="https://www.r-project.org/">https://www.r-project.org/</a></p>
<br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>r-extras</strong><br>
  0.1.0
  </td>
  <td>
  <strong><p>R Extras: Additional software, libraries and include paths needed to build some R / Bioconductor packages</p>
</strong><br>
  <p>Additional software, libraries and include paths needed to build some R / Bioconductor packages</p>
<br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>s3cmd</strong><br>
  1.5.0-alpha3
  </td>
  <td>
  <strong><p>Amazon S3 Tools: Command Line S3 Client Software and S3 Backup</p>
</strong><br>
  <p>ommand Line S3 Client and Backup for Linux and Mac</p>
<br>
  URL: <p><a href="http://s3tools.org/s3cmd">http://s3tools.org/s3cmd</a></p>
<br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>samtools</strong><br>
  0.1.12a, 0.1.17, 0.1.18, 0.1.19, 0.1.19-patched, 1.2, 1.3.1
  </td>
  <td>
  <strong><p>Samtools</p>
</strong><br>
  <p>Samtools is a suite of programs for interacting with high-throughput sequencing data. It consists of three separate repositories.</p>
<br>
  URL: <p><a href="http://www.htslib.org/">http://www.htslib.org/</a></p>
<br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>snpeff</strong><br>
  2_0_2
  </td>
  <td>
  <strong><p>SnpEff</p>
</strong><br>
  <p>Genetic variant annotation and effect prediction toolbox.</p>
<br>
  URL: <p><a href="http://snpeff.sourceforge.net/">http://snpeff.sourceforge.net/</a></p>
<br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>snvmix2</strong><br>
  0.11.8-r3
  </td>
  <td>
  <strong><p>SNVMix2 - Detecting Single Nucleotide Variants from Next Generation Sequencing Data</p>
</strong><br>
  <p>SNVMix is designed to detect single nucleotide variants from next generation sequencing data. SNVMix is a post-alignment tool.</p>
<br>
  URL: <p><a href="http://compbio.bccrc.ca/software/snvmix/">http://compbio.bccrc.ca/software/snvmix/</a></p>
<br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>sratoolkit</strong><br>
  2.3.4-2, 2.4.1, 2.5.7, 2.8.2-1
  </td>
  <td>
  <strong><p>SRA Toolkit</p>
</strong><br>
  <p>The SRA Toolkit and SDK from NCBI is a collection of tools and libraries for using data in the INSDC Sequence Read Archives.</p>
<br>
  URL: <p><a href="http://ncbi.github.io/sra-tools/">http://ncbi.github.io/sra-tools/</a></p>
<br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>tophat</strong><br>
  1.3.0, 1.3.1, 1.4.0, 2.0.10, 2.0.3, 2.0.9, 2.1.0, 2.1.1
  </td>
  <td>
  <strong><p>TopHat</p>
</strong><br>
  <p>TopHat is a fast splice junction mapper for RNA-Seq reads. It aligns RNA-Seq reads to mammalian-sized genomes using the ultra high-throughput short read aligner Bowtie, and then analyzes the mapping results to identify splice junctions between exons.</p>
<br>
  URL: <p><a href="https://ccb.jhu.edu/software/tophat/index.shtml">https://ccb.jhu.edu/software/tophat/index.shtml</a></p>
<br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>udocker</strong><br>
  1.0.0
  </td>
  <td>
  <strong><p>udocker</p>
</strong><br>
  <p>A basic user tool to execute simple containers in batch or interactive systems without root privileges.</p>
<br>
  URL: <p><a href="https://github.com/indigo-dc/udocker">https://github.com/indigo-dc/udocker</a></p>
<br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>valgrind</strong><br>
  3.10.0, 3.8.1
  </td>
  <td>
  <strong><p>Valgrind - a programming tool for memory debugging, memory leak detection, and profiling</p>
</strong><br>
  <p>Valgrind is a programming tool for memory debugging, memory leak detection, and profiling.</p>
<br>
  URL: <p><a href="http://www.valgrind.org/">http://www.valgrind.org/</a></p>
<br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>varscan</strong><br>
  2.2.3, 2.3.9
  </td>
  <td>
  <strong><p>VarScan</p>
</strong><br>
  <p>Variant detection in massively parallel sequencing data</p>
<br>
  URL: <p><a href="http://dkoboldt.github.io/varscan/">http://dkoboldt.github.io/varscan/</a></p>
<br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>vcftools</strong><br>
  0.1.13
  </td>
  <td>
  <strong><p>VCFtools</p>
</strong><br>
  <p>VCFtools is a program package designed for working with VCF files, such as those generated by the 1000 Genomes Project. The aim of VCFtools is to provide easily accessible methods for working with complex genetic variation data in the form of VCF files.</p>
<br>
  URL: <p><a href="https://vcftools.github.io/">https://vcftools.github.io/</a></p>
<br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>wordspy</strong><br>
  1.5
  </td>
  <td>
  <strong><p>WordSpy</p>
</strong><br>
  <p>A steganalysis-based approach to comprehensive identification and characterization of functional regulatory elements.</p>
<br>
  URL: <p><a href="http://cic.cs.wustl.edu/wordspy/dltemp.htm">http://cic.cs.wustl.edu/wordspy/dltemp.htm</a></p>
<br>
  </td>
 </tr>
</table>


<br>
<br>
<br>
_The above information was automatically generated on 2017-07-03 16:21:05._
