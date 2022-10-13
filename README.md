A sample code for the 2022-10-17 AI4ER Code review


## Files to look at

## Setup
``` shell
# go to a suitable directory a and clone the repository
git clone https://github.com/elkir/code-review_snakemake_pypsa-eur

# setup of environment
conda env create --file environment.yaml
# if you have mamba the faster alternative is:
mamba env create --file environment.yaml

conda activate ai4er_code-review_snakemake

```
### Clean-up
```shell
conda deactivate
conda env remove ai4er_code-review_snakemake

# go one folder above and remove the whole folder (careful with rm -rf!!)
cd ..
rm -rf code-review_snakemake_pypsa-eur
```


## Resources
**Snakemake** website:  
[Snakemake - A framework for reproducible data analysis](https://snakemake.github.io/)  
Reference for Snakemake:  
[Snakemake — Snakemake 7.15.2 documentation](https://snakemake.readthedocs.io/en/stable/)


**PyPSA-Eur** project github:  
[PyPSA/pypsa-eur: PyPSA-Eur: An Open Optimisation Model of the European Transmission System](https://github.com/PyPSA/pypsa-eur)  
and the documentation:  
[PyPSA-Eur: An Open Optimisation Model of the European Transmission System — PyPSA-Eur 0.6.1 documentation](https://pypsa-eur.readthedocs.io/en/latest/)
