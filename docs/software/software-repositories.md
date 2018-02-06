
<!--
WARNING: do _not_ update this file; it is automatically generated from modules.md.rsp and will be overwritten.
-->

# Software Repositories and their Software

Below is a list of all available Software Repositories, which each provides a set of software tools that can be accessed using `module load <repos>` and then `module load <software>`.  For further instructions on how to use software modules, see the page on [Software Modules].


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
  <strong>Module Repository by Computational Biology and Informatics (CBI - formerly CBC)</strong><br>
  Repository of modules shared by Computational Biology and Informatics (<a href="http://cbi.ucsf.edu/">http://cbi.ucsf.edu/</a>) which was named Computational Biology Core (CBC) until 2017. When loading this module, you will get access to a large number of software modules.  When unloading the module, any software modules from this CBC repository still loaded when you unload this repository module, will remain in your list of loaded modules but will be inactivate (i.e. behave as they never were loaded) until you reload this repository module again.  Example: <code>module load CBC</code> and then <code>module avail</code>.<br>
  URL: <a href="http://cbi.ucsf.edu/">http://cbi.ucsf.edu/</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>Personal</strong><br>
  
  </td>
  <td>
  <strong>Modules in ~/modulefiles/</strong><br>
  Personal modules in <code>~/modulefiles/</code> (created if missing).  For instance, module definition file <code>~/modulefiles/foo/1.0.lua</code> provides module foo/1.0, which can be loaded using <code>module load foo/1.0</code>.  For example of module files, see the many modules under /home/shared/cbc/apps/modulefiles/CBC/.<br>
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

Maintained by: [Computational Biology and Informatics (CBI - formerly CBC)](http://cbi.ucsf.edu/)

<table>
<tr>
  <th>module &amp; versions</th>
  <th>description</th>
 </tr>
 <tr>
  <td>
  <strong>ack</strong><br>
  <em>2.22</em>
  </td>
  <td>
  <strong>ack: A Tool Like Grep, Optimized for Programmers</strong><br>
  Designed for programmers with large heterogeneous trees of source code, 'ack' is written purely in portable Perl 5 and takes advantage of the power of Perl's regular expressions. Examples: <code>ack --version</code> and <code>ack --man</code><br>
  URL: <a href="https://beyondgrep.com/">https://beyondgrep.com/</a>, <a href="https://beyondgrep.com/feature-comparison/">https://beyondgrep.com/feature-comparison/</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>anaconda</strong><br>
  
  </td>
  <td>
  <strong>[DEPRECATED] Anaconda Package Manager w/ CBC-shared installations</strong><br>
  Open Data Science Platform powered by Python<br>
  URL: <a href="https://www.continuum.io/anaconda-overview">https://www.continuum.io/anaconda-overview</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>anaconda-python</strong><br>
  <em>2.7.13</em>
  </td>
  <td>
  <strong>[DEPRECATED] Anaconda: The Python Programming Language</strong><br>
  The Python programming language (by Anaconda)<br>
  URL: <a href="https://www.python.org/">https://www.python.org/</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>asciidoc</strong><br>
  <em>8.6.8</em>
  </td>
  <td>
  <strong>AsciiDoc: Text Based Document Generation</strong><br>
  AsciiDoc is a text document format for writing notes, documentation, articles, books, ebooks, slideshows, web pages, man pages and blogs. AsciiDoc files can be translated to many formats including HTML, PDF, EPUB, man page. Examples: <code>asciidoc.py --version</code><br>
  URL: <a href="http://asciidoc.org/">http://asciidoc.org/</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>asciigenome</strong><br>
  <em>1.11.0</em>
  </td>
  <td>
  <strong>ASCIIGenome: Text Only Genome Viewer</strong><br>
  ASCIIGenome is a genome browser based on command line interface and designed for running from console terminals. Since ASCIIGenome does not require a graphical interface it is particularly useful for quickly visualizing genomic data on remote servers while offering flexibility similar to popular GUI viewers like IGV.  Example: <code>ASCIIGenome --help</code>.<br>
  URL: <a href="https://github.com/dariober/ASCIIGenome">https://github.com/dariober/ASCIIGenome</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>autoconf</strong><br>
  <em>2.69</em>
  </td>
  <td>
  <strong>autoconf: Tool for Producing Configure Scripts for Building, Installing and Packaging Software</strong><br>
  Autoconf is an extensible package of M4 macros that produce shell scripts to automatically configure software source code packages. These scripts can adapt the packages to many kinds of UNIX-like systems without manual user intervention. Autoconf creates a configuration script for a package from a template file that lists the operating system features that the package can use, in the form of M4 macro calls. Example: <code>autoconf --version</code>.<br>
  URL: <a href="https://www.gnu.org/software/autoconf/autoconf.html">https://www.gnu.org/software/autoconf/autoconf.html</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>automake</strong><br>
  <em>1.15</em>
  </td>
  <td>
  <strong>automake: Tool for Automatically Generating GNU-compliant Makefile.in Files</strong><br>
  Automake is a tool for automatically generating Makefile.in files compliant with the GNU Coding Standards. Example: <code>automake --version</code>.<br>
  URL: <a href="https://www.gnu.org/software/automake/">https://www.gnu.org/software/automake/</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>bamutil</strong><br>
  <em>1.0.14</em>
  </td>
  <td>
  <strong>BamUtil: Programs for Working on SAM/BAM Files</strong><br>
  bamUtil is a repository that contains several programs that perform operations on SAM/BAM files. All of these programs are built into a single executable, <code>bam</code>. Example: <code>bam help</code>.<br>
  URL: <a href="http://genome.sph.umich.edu/wiki/BamUtil">http://genome.sph.umich.edu/wiki/BamUtil</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>bcftools</strong><br>
  1.2, 1.3.1, 1.4, <em>1.6</em>
  </td>
  <td>
  <strong>BCFtools: Utilities for Variant Calling and Manipulating VCFs and BCFs</strong><br>
  BCFtools is a set of utilities that manipulate variant calls in the Variant Call Format (VCF) and its binary counterpart BCF. All commands work transparently with both VCFs and BCFs, both uncompressed and BGZF-compressed.  Example: <code>bcftools --version</code><br>
  URL: <a href="https://samtools.github.io/bcftools/bcftools.html">https://samtools.github.io/bcftools/bcftools.html</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>bcl2fastq</strong><br>
  2.17.1, <em>2.20.0</em>
  </td>
  <td>
  <strong>bcl2fastq: Illumina Conversion Software</strong><br>
  bcl2fastq Conversion Software both demultiplexes data and converts BCL files generated by Illumina sequencing systems to standard FASTQ file formats for downstream analysis.  Example: <code>bcl2fastq --version</code><br>
  URL: <a href="https://support.illumina.com/sequencing/sequencing_software/bcl2fastq-conversion-software.html">https://support.illumina.com/sequencing/sequencing_software/bcl2fastq-conversion-software.html</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>bedops</strong><br>
  1.2.2c, <em>2.4.30</em>
  </td>
  <td>
  <strong>BEDOPS: The Fast, Highly Scalable and Easily-Parallelizable Genome Analysis Toolkit</strong><br>
  BEDOPS is an open-source command-line toolkit that performs highly efficient and scalable Boolean and other set operations, statistical calculations, archiving, conversion and other management of genomic data of arbitrary scale. Tasks can be easily split by chromosome for distributing whole-genome analyses across a computational cluster.  Example: <code>bedops --version</code><br>
  URL: <a href="https://bedops.readthedocs.io/">https://bedops.readthedocs.io/</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>bedtools2</strong><br>
  2.13.4, 2.15.0, 2.16.2, <em>2.26.0</em>
  </td>
  <td>
  <strong>Bedtools2: The Swiss Army Knife for Genome Arithmetic</strong><br>
  Collectively, the bedtools utilities are a swiss-army knife of tools for a wide-range of genomics analysis tasks. The most widely-used tools enable genome arithmetic: that is, set theory on the genome. For example, bedtools allows one to intersect, merge, count, complement, and shuffle genomic intervals from multiple files in widely-used genomic file formats such as BAM, BED, GFF/GTF, VCF. Example: <code>bedtools --version</code>.<br>
  URL: <a href="https://github.com/arq5x/bedtools2/">https://github.com/arq5x/bedtools2/</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>binutils</strong><br>
  <em>2.29</em>
  </td>
  <td>
  <strong>binutils: GNU Binutils</strong><br>
  The GNU Binutils are a collection of binary tools. The main ones are: <code>ld</code> (the GNU linker) and <code>as</code> (the GNU assembler). Example: <code>ld -v</code>.<br>
  URL: <a href="https://www.gnu.org/software/binutils/">https://www.gnu.org/software/binutils/</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>blast</strong><br>
  2.2.26, <em>2.7.1</em>
  </td>
  <td>
  <strong>BLAST: Basic Local Alignment Search Tool</strong><br>
  BLAST finds regions of similarity between biological sequences. The program compares nucleotide or protein	sequences to sequence databases and calculates the statistical significance. Example: <code>blastx -version</code><br>
  URL: <a href="https://blast.ncbi.nlm.nih.gov/Blast.cgi">https://blast.ncbi.nlm.nih.gov/Blast.cgi</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>blat</strong><br>
  34, <em>36</em>
  </td>
  <td>
  <strong>BLAT: Fast Sequence Search Command Line Tool</strong><br>
  BLAT - client and server combined into a single program, first building the index, then using the index, and then exiting. Example: <code>blat</code><br>
  URL: <a href="http://genome.ucsc.edu/goldenPath/help/blatSpec.html">http://genome.ucsc.edu/goldenPath/help/blatSpec.html</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>bowtie2</strong><br>
  2.0.0-beta6, 2.1.0, 2.2.6, 2.2.9, <em>2.3.3.1</em>
  </td>
  <td>
  <strong>Bowtie 2: A Fast and Sensitive Gapped Read Aligner</strong><br>
  Bowtie 2 is an ultrafast and memory-efficient tool for aligning sequencing reads to long reference sequences.  Example: <code>bowtie2 --version</code><br>
  URL: <a href="http://bowtie-bio.sourceforge.net/bowtie2/index.shtml">http://bowtie-bio.sourceforge.net/bowtie2/index.shtml</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>bwa</strong><br>
  0.5.10, 0.6.1, 0.7.5a, 0.7.12, <em>0.7.17</em>
  </td>
  <td>
  <strong>BWA: Burrows-Wheeler Aligner</strong><br>
  Burrows-Wheeler Aligner (BWA) is a software package for mapping low-divergent sequences against a large reference genome, such as the human genome. Example: <code>bwa</code>.<br>
  URL: <a href="http://bio-bwa.sourceforge.net/">http://bio-bwa.sourceforge.net/</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>byobu</strong><br>
  <em>5.124</em>
  </td>
  <td>
  <strong>byobu: Elegant Enhancement of the Otherwise Functional, Plain, Practical GNU Screen</strong><br>
  Byobu is an elegant enhancement of the otherwise functional, plain, practical GNU Screen. Byobu includes an enhanced profile, configuration utilities, and system status notifications for the GNU screen window manager as well as the Tmux terminal multiplexer. Example: <code>byobu --version</code><br>
  URL: <a href="http://byobu.org">http://byobu.org</a>, <a href="https://github.com/dustinkirkland/byobu">https://github.com/dustinkirkland/byobu</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>bzip2</strong><br>
  <em>1.0.6</em>
  </td>
  <td>
  <strong>bzip2: High-quality, Open-source Data Compressor</strong><br>
  bzip2 is a free and open-source file compression program that uses the Burrows–Wheeler algorithm. It only compresses single files and is not a file archiver. It typically compresses files to within 10% to 15% of the best available techniques (the PPM family of statistical compressors), whilst being around twice as fast at compression and six times faster at decompression. Example: <code>bzip2 --help</code> and <code>bzcat file.txt.bz2</code>.<br>
  URL: <a href="http://www.bzip.org/">http://www.bzip.org/</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>cbc-bin</strong><br>
  0.1.0, <em>0.1.1</em>
  </td>
  <td>
  <strong>CBC-shared Scripts and Binaries</strong><br>
  Utility scripts and binaries shared by UCSF CBI (formerly CBC).<br>
  URL: <a href="http://cbi.ucsf.edu/">http://cbi.ucsf.edu/</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>cbc-devel</strong><br>
  0.1.0, <em>0.1.1</em>
  </td>
  <td>
  <strong>CBC-shared Developer's Environment</strong><br>
  Setup for building and installing software inline with the CBI-shared setup (formerly CBC-shared setup).<br>
  URL: <a href="http://cbi.ucsf.edu/">http://cbi.ucsf.edu/</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>cbc-shared</strong><br>
  0.1.0, 0.1.1, 0.1.2, 0.1.3, 0.1.4, 0.1.5, 0.2.0, <em>0.2.1</em>
  </td>
  <td>
  <strong>CBC-shared Software: Default Set</strong><br>
  When loaded, this module loads the default set of CBC-shared software.  See <code>module show cbc-shared</code> for details.<br>
  URL: <a href="https://ucsf-ti.github.io/tipcc-web/software/software-repositories.html">https://ucsf-ti.github.io/tipcc-web/software/software-repositories.html</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>cellranger</strong><br>
  <em>1.3.1</em>
  </td>
  <td>
  <strong>Cell Ranger: 10x Genomics Pipeline for Single-Cell Data Analysis</strong><br>
  Cell Ranger is a set of analysis pipelines that process Chromium Single Cell 3' RNA-seq output to align reads, generate gene-cell matrices and perform clustering and gene expression analysis.  Example: <code>cellranger</code><br>
  URL: <a href="https://support.10xgenomics.com/single-cell-gene-expression/software/pipelines/latest/what-is-cell-ranger">https://support.10xgenomics.com/single-cell-gene-expression/software/pipelines/latest/what-is-cell-ranger</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>cmake</strong><br>
  <em>3.10.2</em>
  </td>
  <td>
  <strong>CMake: Open-source, Cross-platform Family of Tools Designed to Build, Test and Package Software</strong><br>
  CMake is cross-platform free and open-source software for managing the build process of software using a compiler-independent method. It supports directory hierarchies and applications that depend on multiple libraries. Example: <code>cmake --version</code>.<br>
  URL: <a href="https://cmake.org/">https://cmake.org/</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>control-freec</strong><br>
  2.5, <em>7.2-3</em>
  </td>
  <td>
  <strong>Control FREEC: Control-FREE Copy Number and Genotype Caller</strong><br>
  Prediction of copy numbers and allelic content using deep-sequencing data. Example: <code>freec</code>.<br>
  URL: <a href="http://boevalab.com/FREEC/">http://boevalab.com/FREEC/</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>cufflinks</strong><br>
  1.0.3, 1.3.0, <em>2.2.1</em>
  </td>
  <td>
  <strong>Cufflinks: Transcriptome Assembly and Differential Expression Analysis for RNA-Seq</strong><br>
  Cufflinks assembles transcripts, estimates their abundances, and tests for differential expression and regulation in RNA-Seq samples. It accepts aligned RNA-Seq reads and assembles the alignments into a parsimonious set of transcripts. Cufflinks then estimates the relative abundances of these transcripts based on how many reads support each one, taking into account biases in library preparation protocols. Example: <code>cufflinks</code>.<br>
  URL: <a href="http://cole-trapnell-lab.github.io/cufflinks/">http://cole-trapnell-lab.github.io/cufflinks/</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>curl</strong><br>
  <em>7.58.0</em>
  </td>
  <td>
  <strong>curl: Command Line Tool and Library for Transferring Data with URLs</strong><br>
  cURL is a computer software project providing a library and command-line tool for transferring data using various protocols. The cURL project produces two products, libcurl and cURL. It was first released in 1997. The name originally stood for &quot;see URL&quot;.  Example: <code>curl --help</code>.<br>
  URL: <a href="https://curl.haxx.se/">https://curl.haxx.se/</a>, <a href="https://github.com/curl/curl">https://github.com/curl/curl</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>egademoclient</strong><br>
  <em>2.2.2_0</em>
  </td>
  <td>
  <strong>EgaDemoClient: The European Genome-phenome Archive (EGA) Download Client</strong><br>
  The EgaDemoClient application can be used as an interactive shell or direct command line client.  Both methods provide similar functionality, but you may only use the FUSE layer option from the command line. Example: <code>EgaDemoClient --help</code> alias for <code>java -jar $EGADEMOCLIENT_HOME/EgaDemoClient.jar --help</code>.<br>
  URL: <a href="https://www.ebi.ac.uk/ega/about/your_EGA_account/download_streaming_client">https://www.ebi.ac.uk/ega/about/your_EGA_account/download_streaming_client</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>emacs</strong><br>
  24.5, <em>25.3</em>
  </td>
  <td>
  <strong>GNU Emacs: An Extensible, Customizable, Free/Libre Text Editor</strong><br>
  At its core is an interpreter for Emacs Lisp, a dialect of the Lisp programming language with extensions to support text editing. Example: <code>emacs --version</code> and <code>emacs -nw</code>.<br>
  URL: <a href="https://www.gnu.org/software/emacs/">https://www.gnu.org/software/emacs/</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>fastqc</strong><br>
  0.10.1, <em>0.11.2</em>
  </td>
  <td>
  <strong>FastQC: A Quality Control Tool for High Throughput Sequence Data</strong><br>
  A quality control tool for high throughput sequence data. Example: <code>fastqc --version</code>.<br>
  URL: <a href="http://www.bioinformatics.babraham.ac.uk/projects/fastqc/">http://www.bioinformatics.babraham.ac.uk/projects/fastqc/</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>fiji</strong><br>
  <em>2.0.0-rc-54</em>
  </td>
  <td>
  <strong>Fiji: an Image Processing Package</strong><br>
  Fiji is a &quot;batteries-included&quot; distribution of ImageJ, bundling a lot of plugins which facilitate scientific image analysis. Example: <code>ImageJ-linux64 --help</code>.<br>
  URL: <a href="https://imagej.net/Fiji/Downloads">https://imagej.net/Fiji/Downloads</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>gatk</strong><br>
  1.6.2, 3.0.0, 3.4.46, 3.6.0, 3.7.0, 3.8.0, <em>4.0.0.0</em>
  </td>
  <td>
  <strong>Genome Analysis Toolkit (GATK): Variant Discovery in High-Throughput Sequencing Data</strong><br>
  Developed in the Data Sciences Platform at the Broad Institute, the toolkit offers a wide variety of tools with a primary focus on variant discovery and genotyping. Its powerful processing engine and high-performance computing features make it capable of taking on projects of any size.  Example: <code>gatk --help</code> and <code>gatk --list</code>.<br>
  URL: <a href="https://software.broadinstitute.org/gatk/">https://software.broadinstitute.org/gatk/</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>gdc-client</strong><br>
  <em>1.0.1</em>
  </td>
  <td>
  <strong>GDC Data Transfer Tool: NCI Genome Data Commons Data Transfer Tools</strong><br>
  The GDC Data Transfer Tool Client provides a command-line interface supporting both GDC data downloads and submissions. Example: <code>gdc-client --version</code>.<br>
  URL: <a href="https://gdc.cancer.gov/access-data/gdc-data-transfer-tool">https://gdc.cancer.gov/access-data/gdc-data-transfer-tool</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>genetorrent</strong><br>
  3.0.2, <em>3.8.5a-94</em>
  </td>
  <td>
  <strong>GeneTorrent: Tools for Accessing Data in the Cancer Genomics Hub (CGHub)</strong><br>
  GeneTorrent is a set of executables for accessing data in the Cancer Genomics Hub (CGHub), a secure repository for storing, cataloging, and accessing cancer genome sequences, alignments, and mutation information from the Cancer Genome Atlas (TCGA) consortium and related projects. Example: <code>cgquery --help</code>.<br>
  URL: <a href="https://hpc.nih.gov/apps/GeneTorrent.html">https://hpc.nih.gov/apps/GeneTorrent.html</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>git</strong><br>
  2.1.1, 2.1.3, <em>2.16.1</em>
  </td>
  <td>
  <strong>Git: Distributed Version Control System</strong><br>
  Git is a free and open source distributed version control system designed to handle everything from small to very large projects with speed and efficiency. Example: <code>git --version</code>.<br>
  URL: <a href="https://git-scm.com/">https://git-scm.com/</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>git-flow</strong><br>
  0.4.2, <em>1.11.0</em>
  </td>
  <td>
  <strong>git-flow: Git Extension Git Flow</strong><br>
  A collection of Git extensions to provide high-level repository operations for Vincent Driessen's branching model. Example: <code>git flow</code>.<br>
  URL: <a href="https://github.com/petervanderdoes/gitflow-avh">https://github.com/petervanderdoes/gitflow-avh</a>, <a href="https://github.com/nvie/gitflow">https://github.com/nvie/gitflow</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>git-lfs</strong><br>
  <em>2.3.4</em>
  </td>
  <td>
  <strong>Git LFS: An Open Source Git Extension for Versioning Large Files</strong><br>
  Git Large File Storage (LFS) replaces large files such as audio samples, videos, datasets, and graphics with text pointers inside Git, while storing the file contents on a remote server like GitHub.com or GitHub Enterprise. Example: <code>git lfs</code>.<br>
  URL: <a href="https://git-lfs.github.com/">https://git-lfs.github.com/</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>go</strong><br>
  1.8.3, <em>1.9.2</em>
  </td>
  <td>
  <strong>Go: The Go Programming Language</strong><br>
  Go is a cross-platform open-source programming language that makes it easy to build simple, reliable, and efficient software. Example: <code>go version</code><br>
  URL: <a href="https://golang.org/">https://golang.org/</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>hisat2</strong><br>
  <em>2.1.0</em>
  </td>
  <td>
  <strong>HISAT2: Graph-based Alignment of Next Generation Sequencing Reads to a Population of Genomes</strong><br>
  HISAT2 is a fast and sensitive alignment program for mapping next-generation sequencing reads (both DNA and RNA) to a population of human genomes (as well as to a single reference genome). Based on an extension of BWT for graphs [Sirén et al. 2014], we designed and implemented a graph FM index (GFM), an original approach and its first implementation to the best of our knowledge. In addition to using one global GFM index that represents a population of human genomes, HISAT2 uses a large set of small GFM indexes that collectively cover the whole genome (each index representing a genomic region of 56 Kbp, with 55,000 indexes needed to cover the human population). These small indexes (called local indexes), combined with several alignment strategies, enable rapid and accurate alignment of sequencing reads. This new indexing scheme is called a Hierarchical Graph FM index (HGFM).  Example: <code>hisat2 --version</code>.<br>
  URL: <a href="https://ccb.jhu.edu/software/hisat2/">https://ccb.jhu.edu/software/hisat2/</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>htop</strong><br>
  1.0.3, <em>2.0.2</em>
  </td>
  <td>
  <strong>htop: An Interactive Process Viewer for Unix</strong><br>
  <code>htop</code> is an interactive process viewer for Unix systems. It is a text-mode application (for console or X terminals) and requires ncurses. Example: <code>htop</code><br>
  URL: <a href="http://hisham.hm/htop/">http://hisham.hm/htop/</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>htseq</strong><br>
  0.5.4p3, <em>0.6.1</em>
  </td>
  <td>
  <strong>HTSeq: Analysing high-throughput sequencing data with Python</strong><br>
  HTSeq is a Python package that provides infrastructure to process data from high-throughput sequencing assays. Example: <code>htseq-count</code> and <code>htseq-qa</code>.<br>
  URL: <a href="http://www-huber.embl.de/users/anders/HTSeq/">http://www-huber.embl.de/users/anders/HTSeq/</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>htslib</strong><br>
  1.3.2, <em>1.6</em>
  </td>
  <td>
  <strong>HTSlib: C Library for High-Throughput Sequencing Data Formats</strong><br>
  HTSlib is an implementation of a unified C library for accessing common file formats, such as SAM, CRAM and VCF, used for high-throughput sequencing data, and is the core library used by samtools and bcftools. HTSlib also provides the bgzip, htsfile, and tabix utilities.  Example: <code>bgzip --version</code>, <code>htsfile --version</code>, and <code>tabix --version</code>.<br>
  URL: <a href="http://www.htslib.org/">http://www.htslib.org/</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>igv</strong><br>
  2.1.2, 2.3.31, 2.3.68, 2.3.92, <em>2.4.0</em>
  </td>
  <td>
  <strong>IGV: The Integrative Genomics Viewer</strong><br>
  The Integrative Genomics Viewer (IGV) is a high-performance visualization tool for interactive exploration of large, integrated genomic datasets. It supports a wide variety of data types, including array-based and next-generation sequence data, and genomic annotations. Example: <code>igv</code>.<br>
  URL: <a href="https://software.broadinstitute.org/software/igv/">https://software.broadinstitute.org/software/igv/</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>igvtools</strong><br>
  2.3.68, 2.3.91, <em>2.3.98</em>
  </td>
  <td>
  <strong>IGVTools: Tools for Pre-processing HT-Seq Data Files</strong><br>
  The igvtools utility provides a set of tools for pre-processing data files. Example: <code>igvtools help</code>.<br>
  URL: <a href="https://software.broadinstitute.org/software/igv/igvtools">https://software.broadinstitute.org/software/igv/igvtools</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>jags</strong><br>
  <em>4.3.0</em>
  </td>
  <td>
  <strong>JAGS: Just Another Gibbs Sampler</strong><br>
  JAGS is Just Another Gibbs Sampler.  It is a program for analysis of Bayesian hierarchical models using Markov Chain Monte Carlo (MCMC) simulation  not wholly unlike BUGS.. Example: <code>jags</code> and <code>man jags</code>.<br>
  URL: <a href="http://mcmc-jags.sourceforge.net/">http://mcmc-jags.sourceforge.net/</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>jdk</strong><br>
  1.6.0, 1.7.0, 1.8.0, 6, 7, <em>8</em>
  </td>
  <td>
  <strong>JDK: Java Development Kit</strong><br>
  The Java programming language. Examples: <code>java -version</code> and <code>javac -version</code>.<br>
  URL: <a href="https://www.java.com/">https://www.java.com/</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>libevent</strong><br>
  <em>2.1.8</em>
  </td>
  <td>
  <strong>libevent: An Event Notification Library</strong><br>
  The libevent API provides a mechanism to execute a callback function when a specific event occurs on a file descriptor or after a timeout has been reached. Furthermore, libevent also support callbacks due to signals or regular timeouts. Example: <code>event_rpcgen.py</code>.<br>
  URL: <a href="http://libevent.org/">http://libevent.org/</a>, <a href="https://github.com/libevent/libevent">https://github.com/libevent/libevent</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>links</strong><br>
  <em>2.14</em>
  </td>
  <td>
  <strong>Links: A Lynx-like Alternative Character Mode WWW Browser</strong><br>
  Links runs in text mode (mouse optional) on UN*X console, ssh/telnet virtual terminal, vt100 terminal, xterm, and virtually any other text terminal. Mouse is supported for GPM, xterm, and OS/2. Links supports colors on terminal. Example: <code>links https://www.google.com/</code>.<br>
  URL: <a href="http://links.twibright.com/features.php">http://links.twibright.com/features.php</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>lua</strong><br>
  5.1.4, 5.3.3, <em>5.3.4</em>
  </td>
  <td>
  <strong>Lua: The Lua Programming Language</strong><br>
  The Lua programming language. Example: <code>lua -v</code>.<br>
  URL: <a href="https://www.lua.org/">https://www.lua.org/</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>luarocks</strong><br>
  <em>2.4.2</em>
  </td>
  <td>
  <strong>LuaRocks: The Lua Package Manager</strong><br>
  LuaRocks is the package manager for Lua modules. Example: <code>luarocks --help</code>.<br>
  URL: <a href="https://luarocks.org/">https://luarocks.org/</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>matlab</strong><br>
  7.11.0.584, <em>7.14.0.739</em>
  </td>
  <td>
  <strong>MATLAB: The MATLAB Programming Language</strong><br>
  MATLAB (MATrix LABoratory) is a multi-paradigm numerical computing environment. Example: <code>matlab -nosplash -nodisplay -r 'quit'</code>.<br>
  URL: <a href="https://www.mathworks.com/products/matlab.html">https://www.mathworks.com/products/matlab.html</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>mysql</strong><br>
  <em>5.1.73</em>
  </td>
  <td>
  <strong>MySQL: An Open-source Relational Database Management System (RDBMS)</strong><br>
  MySQL is an open-source relational database management system (RDBMS). Example: <code>mysql --version</code><br>
  URL: <a href="https://www.mysql.com/">https://www.mysql.com/</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>nextflow</strong><br>
  <em>0.26.0.4715</em>
  </td>
  <td>
  <strong>Nextflow: Data-driven Computational Pipelines</strong><br>
  Nextflow enables scalable and reproducible scientific workflows using software containers. It allows the adaptation of pipelines written in the most common scripting languages. Its fluent DSL simplifies the implementation and the deployment of complex parallel and reactive workflows on clouds and clusters. Example: <code>nextflow -version</code>.<br>
  URL: <a href="https://www.nextflow.io/">https://www.nextflow.io/</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>pandoc</strong><br>
  1.19.2-0, <em>2.0.3</em>
  </td>
  <td>
  <strong>Pandoc: A Universal Document Converter</strong><br>
  Pandoc is a Haskell library for converting from one markup format to another, and a command-line tool that uses this library. Example: <code>pandoc --version</code>.<br>
  URL: <a href="http://pandoc.org/">http://pandoc.org/</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>pcre</strong><br>
  8.35, 8.36, <em>8.41</em>
  </td>
  <td>
  <strong>PCRE: Perl Compatible Regular Expressions</strong><br>
  The PCRE library is a set of functions that implement regular expression pattern matching using the same syntax and semantics as Perl 5. PCRE has its own native API, as well as a set of wrapper functions that correspond to the POSIX regular expression API. Example: <code>pcregrep --help</code> and <code>pcre-config --version</code>.<br>
  URL: <a href="http://pcre.org/">http://pcre.org/</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>picard</strong><br>
  1.39, 1.51, 1.64, 1.67, <em>2.17.1</em>
  </td>
  <td>
  <strong>Picard: Command-line tools for Manipulating High-throughput Sequencing Data and Formats</strong><br>
  Picard is a set of command line tools for manipulating high-throughput sequencing (HTS) data and formats such as SAM/BAM/CRAM and VCF.  Example: <code>java -jar $PICARD -h</code><br>
  URL: <a href="http://broadinstitute.github.io/picard/">http://broadinstitute.github.io/picard/</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>plink</strong><br>
  1.90b5.2, <em>1.07</em>
  </td>
  <td>
  <strong>PLINK: Whole Genome Association Analysis Toolset</strong><br>
  PLINK is a free, open-source whole genome association analysis toolset, designed to perform a range of basic, large-scale analyses in a computationally efficient manner. The focus of PLINK is purely on analysis of genotype/phenotype data, so there is no support for steps prior to this (e.g. study design and planning, generating genotype or CNV calls from raw data). Example: <code>plink --help</code>.<br>
  URL: <a href="http://zzz.bwh.harvard.edu/plink/index.shtml">http://zzz.bwh.harvard.edu/plink/index.shtml</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>python</strong><br>
  2.6.5, 2.7.3, 2.7.4, 2.7.10, <em>2.7.9</em>
  </td>
  <td>
  <strong>Python: The Python Programming Language</strong><br>
  Python is a programming language that lets you work quickly and integrate systems more effectively.  Example: <code>python --version</code> and <code>pip install --user {module}</code>.<br>
  URL: <a href="https://www.python.org/">https://www.python.org/</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>r</strong><br>
  devel, oldrel, patched, release, 2.7.0, 2.8.0, 2.10.0, 2.11.0, 2.11.1, 2.12.2, 2.13.0, 2.13.1, 2.13.2, 2.14.0, 2.15.0, 2.15.1, 2.15.2, 2.15.3, 3.0.0, 3.0.1, 3.0.2, 3.0.3, 3.1.0, 3.1.1, 3.1.2, 3.1.3, 3.2.0, 3.2.1, 3.2.2, 3.2.3, 3.2.4, 3.2.5, 3.3.0, 3.3.1, 3.3.2, 3.3.3, 3.4.0, 3.4.1, 3.4.2, 3.4.3patched, 3.5.0devel, <em>3.4.3</em>
  </td>
  <td>
  <strong>R: The R Programming Language</strong><br>
  The R programming language. Example: <code>R --version</code> and <code>Rscript --version</code>.<br>
  URL: <a href="https://www.r-project.org/">https://www.r-project.org/</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>ruby</strong><br>
  <em>2.2.0p0</em>
  </td>
  <td>
  <strong>Ruby: The Ruby Programming Language</strong><br>
  Ruby is a dynamic, reflective, object-oriented, general-purpose programming language. It was designed and developed in the mid-1990s by Yukihiro 'Matz' Matsumoto in Japan.  Example: <code>ruby --version</code><br>
  URL: <a href="https://www.ruby-lang.org/en/">https://www.ruby-lang.org/en/</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>s3cmd</strong><br>
  <em>1.5.0-alpha3</em>
  </td>
  <td>
  <strong>Amazon S3 Tools: Command Line S3 Client Software and S3 Backup</strong><br>
  ommand Line S3 Client and Backup for Linux and Mac. Example: <code>s3cmd --help</code>.<br>
  URL: <a href="http://s3tools.org/s3cmd">http://s3tools.org/s3cmd</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>samtools</strong><br>
  0.1.12a, 0.1.17, 0.1.18, 0.1.19-patched, 0.1.19, 1.2, 1.3.1, <em>1.6</em>
  </td>
  <td>
  <strong>SAMtools: Tools (written in C using htslib) for Manipulating Next-Generation Sequencing Data</strong><br>
  SAMtools is a suite of programs for interacting with high-throughput sequencing data.  Example: <code>samtools --version</code>.<br>
  URL: <a href="http://www.htslib.org/">http://www.htslib.org/</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>shellcheck</strong><br>
  <em>0.4.6</em>
  </td>
  <td>
  <strong>ShellCheck: A Shell Script Static Analysis Tool</strong><br>
  ShellCheck finds bugs in your shell scripts.  Example: <code>shellcheck --version</code> and <code>shellcheck -x ~/.bashrc</code>.<br>
  URL: <a href="https://www.shellcheck.net/">https://www.shellcheck.net/</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>snpeff</strong><br>
  <em>2.0.2</em>
  </td>
  <td>
  <strong>SnpEff: Genetic Variant Annotation and Effect Prediction Toolbox</strong><br>
  SnpEff is a variant annotation and effect prediction tool. It annotates and predicts the effects of variants on genes (such as amino acid changes). Example: <code>java -jar $SNPEFF -help</code>.<br>
  URL: <a href="http://snpeff.sourceforge.net/">http://snpeff.sourceforge.net/</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>snvmix2</strong><br>
  <em>0.11.8-r3</em>
  </td>
  <td>
  <strong>SNVMix2: Detecting Single Nucleotide Variants from Next Generation Sequencing Data</strong><br>
  SNVMix is designed to detect single nucleotide variants from next generation sequencing data. SNVMix is a post-alignment tool. Example: <code>SNVMix2 -h</code>.<br>
  URL: <a href="http://shahlab.ca/projects/snvmix/">http://shahlab.ca/projects/snvmix/</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>sratoolkit</strong><br>
  2.3.4-2, 2.4.1, 2.5.7, <em>2.8.2-1</em>
  </td>
  <td>
  <strong>SRA Toolkit: Tools and Libraries for Using Data in the INSDC Sequence Read Archives</strong><br>
  The SRA Toolkit and SDK from NCBI is a collection of tools and libraries for using data in the INSDC Sequence Read Archives. Example: <code>fastq-dump --help</code>.<br>
  URL: <a href="http://ncbi.github.io/sra-tools/">http://ncbi.github.io/sra-tools/</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>star</strong><br>
  <em>2.5.3a</em>
  </td>
  <td>
  <strong>STAR: Spliced Transcripts Alignment to a Reference</strong><br>
  STAR (Spliced Transcripts Alignment to a Reference) is a fast NGS read aligner for RNA-seq data. Example: <code>STAR --help</code>.<br>
  URL: <a href="https://github.com/alexdobin/STAR">https://github.com/alexdobin/STAR</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>tmux</strong><br>
  <em>2.6</em>
  </td>
  <td>
  <strong>tmux: A Terminal Multiplexer</strong><br>
  tmux is a terminal multiplexer. It lets you switch easily between several programs in one terminal, detach them (they keep running in the background) and reattach them to a different terminal. And do a lot more.  Example: <code>tmux</code> and <code>man tmux</code>.<br>
  URL: <a href="https://github.com/tmux/tmux/wiki">https://github.com/tmux/tmux/wiki</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>tophat</strong><br>
  1.3.0, 1.3.1, 1.4.0, 2.0.3, 2.0.9, 2.0.10, 2.1.0, <em>2.1.1</em>
  </td>
  <td>
  <strong>TopHat: A Spliced Read Mapper for RNA-Seq</strong><br>
  TopHat is a fast splice junction mapper for RNA-Seq reads. It aligns RNA-Seq reads to mammalian-sized genomes using the ultra high-throughput short read aligner Bowtie, and then analyzes the mapping results to identify splice junctions between exons.  Example: <code>tophat --version</code>.<br>
  URL: <a href="https://ccb.jhu.edu/software/tophat/index.shtml">https://ccb.jhu.edu/software/tophat/index.shtml</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>tree</strong><br>
  <em>1.7.0</em>
  </td>
  <td>
  <strong>tree: List Content of Directories in a Tree-like Format</strong><br>
  Tree is a recursive directory listing command that produces a depth indented listing of files, which is colorized ala dircolors if the <code>LS_COLORS</code> environment variable is set and output is to tty.. Example: <code>tree --help</code>.<br>
  URL: <a href="http://mama.indstate.edu/users/ice/tree/">http://mama.indstate.edu/users/ice/tree/</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>udocker</strong><br>
  1.0.0, <em>1.1.0</em>
  </td>
  <td>
  <strong>udocker: Execute Simple Docker Containers Without Root Privileges</strong><br>
  A basic user tool to execute simple docker containers in user space without requiring root privileges. Enables basic download and execution of docker containers by non-privileged users in Linux systems where docker is not available. It can be used to access and execute the content of docker containers in Linux batch systems and interactive clusters that are managed by other entities such as grid infrastructures or externally managed batch or interactive systems.  The INDIGO udocker does not require any type of privileges nor the deployment of services by system administrators. It can be downloaded and executed entirely by the end user.  udocker is a wrapper around several tools to mimic a subset of the docker capabilities including pulling images and running them with minimal functionality. Example: <code>udocker help</code>.<br>
  URL: <a href="https://github.com/indigo-dc/udocker">https://github.com/indigo-dc/udocker</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>valgrind</strong><br>
  3.10.0, <em>3.8.1</em>
  </td>
  <td>
  <strong>Valgrind: A Programming Tool for Memory Debugging, Memory Leak Detection, and Profiling</strong><br>
  Valgrind is a programming tool for memory debugging, memory leak detection, and profiling. Example: <code>valgrind --help</code>.<br>
  URL: <a href="http://www.valgrind.org/">http://www.valgrind.org/</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>varscan</strong><br>
  2.2.3, 2.3.9, <em>2.4.2</em>
  </td>
  <td>
  <strong>VarScan: Variant Detection in Massively Parallel Sequencing Data</strong><br>
  VarScan is a platform-independent mutation caller for targeted, exome, and whole-genome resequencing data generated on Illumina, SOLiD, Life/PGM, Roche/454, and similar instruments. Example: <code>java -jar $VARSCAN</code>.<br>
  URL: <a href="https://dkoboldt.github.io/varscan/">https://dkoboldt.github.io/varscan/</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>vcf-validator</strong><br>
  <em>0.6</em>
  </td>
  <td>
  <strong>vcf-validator: Validation Suite for Variant Call Format (VCF) Files</strong><br>
  Validator for the Variant Call Format (VCF) implemented using C++11. It includes all the checks from the vcftools suite, and some more that involve lexical, syntactic and semantic analysis of the VCF input. Example: <code>vcf-validator --help</code>.<br>
  URL: <a href="https://github.com/EBIvariation/vcf-validator">https://github.com/EBIvariation/vcf-validator</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>vcftools</strong><br>
  0.1.13, <em>0.1.15</em>
  </td>
  <td>
  <strong>VCFtools: Tools Written in Perl and C++ for Working with VCF files</strong><br>
  VCFtools is a program package designed for working with VCF files, such as those generated by the 1000 Genomes Project. The aim of VCFtools is to provide easily accessible methods for working with complex genetic variation data in the form of VCF files. Example: <code>vcftools --version</code>.<br>
  URL: <a href="https://vcftools.github.io/">https://vcftools.github.io/</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>wordspy</strong><br>
  <em>1.5</em>
  </td>
  <td>
  <strong>WordSpy: A Steganalysis-based, Genome Scale Motif Finding Method</strong><br>
  A steganalysis-based approach to comprehensive identification and characterization of functional regulatory elements. Example: <code>wordspy</code>.<br>
  URL: <a href="http://www.cs.wustl.edu/%7Ezhang/">http://www.cs.wustl.edu/~zhang/</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>xmlto</strong><br>
  <em>0.0.28</em>
  </td>
  <td>
  <strong>xmlto: Converts an XML File into a Specified Format</strong><br>
  'xmlto' converts an XML file (DocBook or XSL-FO) into a specified format (PS, PDF, HTML, man, ASCII, XSL-FO, etc.). It applies an appropriate XSL-T stylesheet and then performs whatever post-processing is necessary. Examples: <code>xmlto --version</code><br>
  URL: <a href="https://directory.fsf.org/wiki/Xmlto">https://directory.fsf.org/wiki/Xmlto</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>xz</strong><br>
  <em>5.2.3</em>
  </td>
  <td>
  <strong>XZ Utils: General-purpose Data Compression Software</strong><br>
  XZ Utils is free general-purpose data compression software with a high compression ratio. XZ Utils were written for POSIX-like systems, but also work on some not-so-POSIX systems. XZ Utils are the successor to LZMA Utils. The core of the XZ Utils compression code is based on LZMA SDK, but it has been modified quite a lot to be suitable for XZ Utils. The primary compression algorithm is currently LZMA2, which is used inside the .xz container format. With typical files, XZ Utils create 30 % smaller output than gzip and 15 % smaller output than bzip2. Example: <code>xz --version</code> and <code>xzcat file.txt.xz</code>.<br>
  URL: <a href="https://tukaani.org/xz/">https://tukaani.org/xz/</a><br>
  </td>
 </tr>
 <tr>
  <td>
  <strong>zlib</strong><br>
  <em>1.2.11</em>
  </td>
  <td>
  <strong>zlib: A Massively Spiffy Yet Delicately Unobtrusive Compression Library</strong><br>
  zlib is designed to be a free, general-purpose, legally unencumbered -- that is, not covered by any patents -- lossless data-compression library for use on virtually any computer hardware and operating system. The zlib data format is itself portable across platforms.  Not related to the Linux zlibc compressing file-I/O library.  Example: No executable; only a library.<br>
  URL: <a href="https://www.zlib.net/">https://www.zlib.net/</a><br>
  </td>
 </tr>
</table>


<br>
<br>
<br>
_The above information was automatically generated on 2018-02-05 19:33:40._

[Software Modules]: {{ '/software/software-modules.html' | relative_url }}

