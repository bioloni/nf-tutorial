#!/bin/bash -euo pipefail
[ ! -f  SAMPLE1_PE_T1_1.fastq.gz ] && ln -s sample1_R1.fastq.gz SAMPLE1_PE_T1_1.fastq.gz
[ ! -f  SAMPLE1_PE_T1_2.fastq.gz ] && ln -s sample1_R2.fastq.gz SAMPLE1_PE_T1_2.fastq.gz
fastqc --quiet --threads 2 SAMPLE1_PE_T1_1.fastq.gz SAMPLE1_PE_T1_2.fastq.gz

cat <<-END_VERSIONS > versions.yml
"NFCORE_TESTPIPELINE:TESTPIPELINE:FASTQC":
    fastqc: $( fastqc --version | sed -e "s/FastQC v//g" )
END_VERSIONS
