#!/bin/bash -euo pipefail
[ ! -f  SAMPLE3_SE_T1.fastq.gz ] && ln -s sample1_R1.fastq.gz SAMPLE3_SE_T1.fastq.gz
fastqc --quiet --threads 2 SAMPLE3_SE_T1.fastq.gz

cat <<-END_VERSIONS > versions.yml
"NFCORE_TESTPIPELINE:TESTPIPELINE:FASTQC":
    fastqc: $( fastqc --version | sed -e "s/FastQC v//g" )
END_VERSIONS
