## Import maps from `qtl` package into `ABHgenotypeR`
To import a map created with the `qtl` or `ASMap` package (e.g. for error correction), export it as a "csvs" and import it with `ABHgenotypeR` again.
```
write.cross(your_map, format="csvs", filestem = "name_of_your_map")
```
If necessary, change the genotype encodings so all genotypes are either "A", "B", "H", or "N". 
The following bash script can be used, which converts "AA" to "A", "AB" to "H" etc.
Additionally, chromosome names must be integers. In `ASMap`, they are called "L.1", "L.2", ...
The script changes "L.1" to "1" as well.
Use of the script from command line (make sure it is executable): `./nameofscript name_of_your_map_gen.csv`.
```
FILE=$1
sed -i 's/AA/A/g' $FILE
sed -i 's/BB/B/g' $FILE
sed -i 's/AB/H/g' $FILE
sed -i 's/L.//g' $FILE
echo "replacement to ABH file complete"
```
Read in the converted file with `ABHgenotypeR` and plot.
```
map1 <- readABHgenotypes("name_of_your_map_gen.csv")
plotGenos(map1abh)
```
With the imported file like this, several functions do not work yet, e.g. `correctStretches`. First, the first row of the $ABHmatrix and the first individual
name need to be taken out (both empty). Additionally, all chromosome names need to be the same, e.g. all "1".

```
map1[["ABHmatrix"]] <- map1[["ABHmatrix"]][-1,] # take out the first row which is just empty
map1$individual_names <- map1$individual_names[-1] # the first individual name was NA, took out
map1$chrom <- rep(1, length(map1$chrom))

corrected <- correctStretches(map1)
```
