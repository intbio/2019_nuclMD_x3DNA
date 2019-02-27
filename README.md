# Using 3DNA to extract data from an MD trajectory

- Trajectories are here
ftp://ftp.ncbi.nih.gov/pub/panch/Nucleosome/MD/NCPm_model
- You'll need to download a big dcd file if you'd like to analyze all the trajectory, I provide a short piece of the trajectory here with 10 frames spaced every 0.1 ns.

## Option 1: Extracting PDB files for your own analysis
- Install VMD
- Run `vmd -e get_pdbs.tcl`
- They will get populated in pdb directory.
- The chain information is lost, but 3DNA should be able to crunch the files.
- Although you might need to change the residue names as follows {'CYT':'DC','GUA':'DG','THY':'DT','ADE':'DA'}

## Option 2: Analyzing via a custom wrapper and VMD compiled with python.
- The dna_param.py - is my wrapper around 3DNA and other programs - it may be called from pure python, may be it will be of help.
- However, I usually use VMD compiled with python support to feed in data to this library.
- The analyzeMD.vmdpy is the script that does the analysis.
- However, setting up VMD with python may be really tricky, so go for it only if you ultimately want to use VMD.

