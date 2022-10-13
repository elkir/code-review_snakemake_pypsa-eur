## Setup

# github clone 
git clone 

# setup of environment
conda env create --file environment.yaml
# if you have mamba the faster alternative is:
mamba env create --file environment.yaml

conda activate ai4er_code-review_snakemake
############################################
####### Things to run during the meeting ###



# See effects of rule with existing inputs 
# (see troubleshooting below if more than one command)
snakemake results/ml/2012/3M/elec_s_37_ec_lcopt_Co2L-3H_inputs.P -n


# Actually run the rule
snakemake results/ml/2012/3M/elec_s_37_ec_lcopt_Co2L-3H_inputs.P --cores 2


# A full set of rules for a different wildcard
snakemake results/networks/2012/3M/elec_s_64m_ec_lcopt_Co2L-3H.nc -n  


### Visualize Graph ###
snakemake results/networks/2012/3M/elec_s_64m_ec_lcopt_Co2L-3H.nc -n --dag | head
# count the number of lines before the line:
# digraph snakemake_dag {
# and put the number into the tail command below

snakemake results/networks/2012/3M/elec_s_64m_ec_lcopt_Co2L-3H.nc -n --dag | tail -n +4 | dot -Tsvg > graph.svg


############## Troubleshooting ##############

# Messed up timestamps require a manual update:
touch results/networks/2012/3M/elec_s_3M_ec_lcopt_Co2L-3H.nc
# or automatic
snakemake --touch --forceall <file>

# Remove created files



#########################################
## Cleanup 
conda deactivate
conda env remove ai4er_code-review_snakemake

cd ..
rm -r code-review_snakemake_pypsa-eur