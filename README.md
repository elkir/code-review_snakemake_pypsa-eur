A sample code for the 2022-10-17 AI4ER Code review


# Files to look at
## Before
File [lines to focus on]:  
`Snakefile [359-369]` - rule for running scripts  
`config.yaml [1-20,278-281]` - parameters for the scripts  
`scripts/extract_ml_data.py [102-112]`- code to produce results  

## During the session
`commands-to-run.sh` - commands we will run in the session  

## If curious
`Snakefile` - other rules  
`scripts/solve_network.py [435-452]` - code for more complicated rule

# Setup
``` shell
# go to a suitable directory a and clone the repository
git clone https://github.com/elkir/code-review_snakemake_pypsa-eur

# setup of environment
conda env create --file environment.yaml
# if you have mamba the faster alternative is:
mamba env create --file environment.yaml

conda activate ai4er_code-review_snakemake

```
## Clean-up
```shell
conda deactivate
conda env remove ai4er_code-review_snakemake
```
Go one folder above and remove the whole git folder (**careful with `rm -rf` !!**)
``` shell
cd ..
rm -rf code-review_snakemake_pypsa-eur
```


# Resources
**Snakemake** website:  
[Snakemake - A framework for reproducible data analysis](https://snakemake.github.io/)  
Reference for Snakemake:  
[Snakemake — Snakemake 7.15.2 documentation](https://snakemake.readthedocs.io/en/stable/)


**PyPSA-Eur** project github:  
[PyPSA/pypsa-eur: PyPSA-Eur: An Open Optimisation Model of the European Transmission System](https://github.com/PyPSA/pypsa-eur)  
and the documentation:  
[PyPSA-Eur: An Open Optimisation Model of the European Transmission System — PyPSA-Eur 0.6.1 documentation](https://pypsa-eur.readthedocs.io/en/latest/)
