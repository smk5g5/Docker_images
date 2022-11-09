bsub -oo docker_build_scib_r.%J -G compute-allegra.petti -q general-interactive -Is -a 'docker_build(smk5g5/scib_r)' -- 
