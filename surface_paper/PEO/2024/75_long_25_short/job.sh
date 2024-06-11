
#!/bin/bash

source /usr/local/gromacs/bin/GMXRC


gmx_mpi grompp -f min.mdp -c blend.gro -p topol.top -o blend_min.tpr -maxwarn 1
gmx_mpi mdrun -deffnm blend_min -nb gpu -v

gmx_mpi grompp -f preNPT.mdp -c blend0_min.gro -p topol.top -o blend_preNPT.tpr -maxwarn 1
gmx_mpi mdrun -deffnm blend_preNPT -nb gpu -v


gmx_mpi grompp -f NPT.mdp -c blend_preNPT.gro -p topol.top -o blend_NPT.tpr -maxwarn 1
gmx_mpi mdrun -deffnm blend_NPT -nb gpu -v

