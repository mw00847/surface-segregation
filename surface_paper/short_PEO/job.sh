#!/bin/bash

source /usr/local/gromacs/bin/GMXRC

cd PEO_excess

#polyply gen_itp -lib martini2_polymers -o PS250.itp -name PS -seq PS:250
#polyply gen_itp -lib martini2_polymers -o PEO44.itp -name PEO -seq PEO:44

polyply gen_coords -p topol_PEO_excess.top -o PEO_excess.gro -name system -den 1100 -mf 8000;

gmx grompp -f em.mdp -c PEO_excess.gro -p topol_PEO_excess.top -o em.tpr -maxwarn 10

gmx mdrun -ntmpi 1 -ntomp 20 -nb gpu -gpu_id 0 -deffnm em -v

sleep 1m

cd ..

cd PS_excess

#polyply gen_itp -lib martini2_polymers -o PS250.itp -name PS -seq PS:250
#polyply gen_itp -lib martini2_polymers -o PEO44.itp -name PEO -seq PEO:44

polyply gen_coords -p topol_PS_excess.top -o PS_excess.gro -name system -den 1100 -mf 8000

gmx grompp -f em.mdp -c PS_excess.gro -p topol_PS_excess.top -o em.tpr -maxwarn 10

gmx mdrun -ntmpi 1 -ntomp 20 -nb gpu -gpu_id 0 -deffnm em -v

sleep 1m

cd ..


cd equal

#polyply gen_itp -lib martini2_polymers -o PS250.itp -name PS -seq PS:250
#polyply gen_itp -lib martini2_polymers -o PEO44.itp -name PE -seq PEO:44

polyply gen_coords -p equal.top -o equal.gro -name system -den 1100 -mf 8000

gmx grompp -f em.mdp -c equal.gro -p equal.top -o em.tpr -maxwarn 10

gmx mdrun -ntmpi 1 -ntomp 20 -nb gpu -gpu_id 0 -deffnm em -v

sleep 1m
