mol load psf only_nucl_init.psf
mol addfile only_nucl_init.pdb
mol addfile md.dcd step 1 waitfor all 

set first 0
set last 10
exec mkdir -p pdb

set selection [atomselect top nucleic]
#set selection [atomselect top all]

for {set i $first} {$i <= $last} {incr i 1} {
animate goto $i
$selection writepdb pdb/$i.pdb
}
exit
