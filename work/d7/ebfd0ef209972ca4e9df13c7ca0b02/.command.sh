#!/bin/bash -euo pipefail
[ ! -f  SAMPLE3_SE_T2.fastq.gz ] && ln -s sample2_R1.fastq.gz SAMPLE3_SE_T2.fastq.gz
fastqc --quiet --threads 2 SAMPLE3_SE_T2.fastq.gz

cat <<-END_VERSIONS > versions.yml
"NFCORE_TESTPIPELINE:TESTPIPELINE:FASTQC":
    fastqc: $( fastqc --version | sed -e "s/FastQC v//g" )
END_VERSIONS
