version 1.0

struct GlobalVariables {
  String ubuntu_docker
  String gitc_docker
  String gitc_jar_path  
  String ug_vc_docker
  String broad_gatk_docker
  String ug_call_variants_docker
  String ug_make_examples_docker
  String bcftools_docker
  String ug_control_freec_docker
  String ug_gatk_picard_docker
  String monitoring_script
  String perl_docker
  String ref_cache_script
  String star_docker
  String ua_docker
  String trimmer_docker
  String fastqc_docker
  String sorter_docker
}

workflow Globals {
  input {
  GlobalVariables glob ={
        "ubuntu_docker": "gcr.io/cloud-marketplace/google/ubuntu2004",
        "gitc_docker": "us.gcr.io/broad-gotc-prod/genomes-in-the-cloud:2.4.6-1599252698",
        "gitc_jar_path": "/usr/gitc/", 
        "ug_vc_docker": "us.gcr.io/broad-dsde-methods/ugvc:v0.21_e373679",
        "broad_gatk_docker": "us.gcr.io/broad-gatk/gatk:4.5.0.0",
        "ug_call_variants_docker": "ultimagenomics/call_variants:edv_2.1.1_b0ca4ece",
        "ug_make_examples_docker": "ultimagenomics/make_examples:edv_2.1.1_b0ca4ece",
        "bcftools_docker": "us.gcr.io/broad-dsde-methods/bcftools:v1.3",
        "ug_control_freec_docker": "ultimagenomics/ug_control_freec:1679a9",
        "ug_gatk_picard_docker": "ultimagenomics/ug_gatk_picard:0.12.2.1",
        "monitoring_script": "s3://ultimagen-workflow-resources-us-east-1/monitoring.sh",
        "perl_docker": "perl:5.38",
        "ref_cache_script": "s3://ultimagen-workflow-resources-us-east-1/scripts/seq_cache_populate.pl",
        "star_docker": "ultimagenomics/star:2.7.10a",
        "ua_docker": "us-central1-docker.pkg.dev/ganymede-331016/ultimagen/alignment:1.0.1",
        "trimmer_docker": "us-central1-docker.pkg.dev/ganymede-331016/ultimagen/trimmer:1.0.1",
        "fastqc_docker": "quay.io/biocontainers/fastqc:0.11.9--0",
        "sorter_docker": "us-central1-docker.pkg.dev/ganymede-331016/ultimagen/sorter:1.0.1",
}
}

  output {
    GlobalVariables global_dockers = glob
  }
}
