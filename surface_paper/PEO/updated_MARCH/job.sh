#!/bin/bash

source /usr/local/gromacs/bin/GMXRC

#generate the .top file for various concentrations

for i in $(seq 1 10); do 
  printf 'W %d\nPEOlong %d\nPEOshort %d\n' $((1000)) $((0+i)) $((2+i)) > topol${i}.top
done

sed -i -e '1s;^;#include"martini_v2.0_PEO_PS_CNP.itp"\n#include"PEO_long.itp"\n#include"PEO_short.itp" \n[system]\nname\nPEO blend\n[ molecules ]\nname number\n;' *.top 

#use polyply to generate the .gro file 

polyply gen_coords -p topol.top -o solv.gro -name system -den 1100 -mf 8000;

#energy minimize the system

gmx grompp -f em.mdp -c solv.gro -p topol.top -o solv.tpr -maxwarn 10; 

#run the minimisation 

gmx mdrun -deffnm solv -nb gpu -v; 

#further equilibriate using the npt ensemble

gmx grompp -f npt.mdp -c solv.gro -p topol.top -o solv.tpr -maxwarn 10; 

#run the npt 

gmx mdrun -deffnm solv -nb gpu -v; 

#send email that above runs ok

python3 send_email.py;

# read the bottom of the .gro file to determine the size of the box, file name needs changing 

tail -1 box.gro; 
coord = $(tail -n 1 box.gro);

#print the initial box size 

echo "$coord";

#extend the z axis to 20nm to create the vacum interface 

declare -a colArray=($(echo $coord | tr ',' ' '));

colArray[2]=20.00;

gmx editconf -f box.gro -box "${colArray[@]}" -o tension.gro; 

echo interface created ;

#minimize the new system 

gmx grompp -f em.mdp -c tension.gro -p topol.top -o tension.gro;

gmx mdrun -deffnm tension -nb gpu -v; 

#run the npt ensemble for the interface 

gmx grompp -d npt.mdp -c tension.gro -p topol.top -o tension.gro;

python3 send_email.py
