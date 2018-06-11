## Import maps from `qtl` or `ASMap` packages into `ABHgenotypeR`
The python script https://github.com/MichelMoser/GBS2map.git (M. Moser) converts `ASMap` or `qtl` cross objects to a format `ABHgenotypeR` can import. An error is produced if the given map contains a linkage group containing a single marker only.

```
write.cross(your_map, format="csv", filestem = "name_of_your_map")
```
In a Terminal:
```
python3 Rqtl_2_abh.py name_of_your_map.csv name_of_abh_compatible_map.csv
```
To read in the produced file with `ABHgenotypeR`:
```
map <- readABHgenotypes("name_of_abh_compatible_map.csv")
```
The file is ready for use in `ABHgenotypeR` now.

## Import maps from `ABHgenotypeR` to `qtl` or `ASMap`
```
writeABHgenotypes(map, outfile = "name_of_your_map.csv")
```
If the file can not be directly read in to `qtl`/`ASMap`, it needs two small changes: The first value in the first row needs to be changed from "id" to "Genotype" and the second value in the same column needs to be changed from "NA" to "".

| id | marker1 |  marker2 | ... |
|----- |----- |----- |----- |
| NA | 1 | 1 | ... |
| ind1 | B | A | ... |
| ind2 | B | B | ... |
| ... | ... | ... | ... |

| Genotype | marker1 |  marker2 | ... |
|----- |----- |----- |----- |
|  | 1 | 1 | ... |
| ind1 | B | A | ... |
| ind2 | B | B | ... |
| ... | ... | ... | ... |

The file can now be read in with
```
map <- read.cross(format = "csv", file = "name_of_your_map.csv" , ...)
```
