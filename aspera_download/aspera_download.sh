#!/bin/bash
cat sample_fastq.txt | while read line; do
    echo "Downloading: $line"
    echo "ascp -i ~/project/RNAseq/asperaweb_id_dsa.openssh -QT -l 300m -P33001 era-fasp@  ./bioSample/PRJNA335937/"
    echo "ascp -i ~/project/RNAseq/asperaweb_id_dsa.openssh -QT -l 300m -P33001 era-fasp@$line  ./bioSample/bioproject/"
    ascp -i ~/project/RNAseq/asperaweb_id_dsa.openssh -QT -l 300m -P33001 era-fasp@$line  ./bioSample/PRJNA1098710/
done