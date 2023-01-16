#!/bin/bash -euo pipefail
multiqc -f  .

cat <<-END_VERSIONS > versions.yml
"NFCORE_TESTPIPELINE:TESTPIPELINE:MULTIQC":
    multiqc: $( multiqc --version | sed -e "s/multiqc, version //g" )
END_VERSIONS
