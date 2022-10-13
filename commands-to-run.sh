## Setup

# github clone 
git clone 

# setup of environment
conda env create --file environment.yaml
# if you have mamba the faster alternative is:
mamba env create --file environment.yaml

conda activate ai4er_code-review_snakemake
############################################




# See rule with existing inputs
snakemake results/ml/2012/3M/elec_s_37_ec_lcopt_Co2L-3H_inputs.P -n   
# Actually run a rule
snakemake results/ml/2012/3M/elec_s_37_ec_lcopt_Co2L-3H_inputs.P -j all


# A full set of rules foor a different wildcard
snakemake results/networks/2012/3M/elec_s_64m_ec_lcopt_Co2L-3H.nc -n  


### Visualize Graph ###
snakemake results/networks/2012/3M/elec_s_64m_ec_lcopt_Co2L-3H.nc -n --dag | head
# count the number of lines before the line:
# digraph snakemake_dag {
# and put the number into the tail command below

snakemake results/networks/2012/3M/elec_s_64m_ec_lcopt_Co2L-3H.nc -n --dag | tail -n +4 | dot -Tsvg > graph.svg



#########################################
## Cleanup 
conda deactivate
conda env remove ai4er_code-review_snakemake

cd ..
rm -r code-review_snakemake_pypsa-eur