# intro
* build polymer blends with different lengths and chemistries

* extend the z axis of the box with a vacuum either side to simulate an interface

* run simulations and plot the density across the z axis of different components to understand any segregation


# Surface segregation of polymer blends

Surface energy is the free energy per unit area of creating an interface with air or vacuum. Surface tension is the force per unit length along the surface opposing the interface of air or vacuum (1). The surface of polymer blends is often different from the bulk material (1). This in itself provides the opportunity to add functionality at the surface interface for coatings to have properties such as corrosion inhibition, hydrophobicity, conductance and anti cratering. Flow aids are commonly used in small quantities in coatings to improve the wetting and work of adhesion and also enhance the visual effect of the coating (4). These flow aids are often a low weight polyacrylic in comparison to the blend of polymers that make up the binder and topocoat.     

Predicting the surface composition of a polymer blend is often determined by the component with the lowest surface energy (1,2). However the structure (entropic) and functional groups (enthalpic) contributions have shown to contradict the surface energy belief. A prerequisite of segregation is imiscibility in the polymer blend (2), using an extended Flory Huggins parameter it is suggested that ester monomers with a similar backbone structure increase miscibility. 

This work uses molecular dynamics with GROMACS to vary surface tension, molecular weight and concentration of useful polymer blends to further understand the key reasons for surface segregation. Blends of linear homopolymers that vary only with molecular weight produce melts where the lower weight chains are found at the surface (9).

The polyply suite (7), provides a simple process to produce a wide range of polymer systems built using the MARTINI forcefield. As with the tutorial on their github page of dextran and PEO (6), simulation of 500ns of the blend produces a phase seperated system as below. This work has been repeated from their paper (3).

![alt text](https://github.com/mw00847/surface-segregation/blob/main/dextran_PEO.png?raw=True)

A surface-vacuum interface can be created by extending the Z axis of an equilibriated polymer blend box (8). Due to periodic boundary constraints, two interfaces are created.

# Method 


# Results


Polymer blends where created using the Polyply suite.  

(1) Tailoring the Attraction of Polymers toward Surfaces
Gila E. Stein, Travis S. Laws, and Rafael Verduzco
Macromolecules 2019 52 (13), 4787-4802
DOI: 10.1021/acs.macromol.9b00492

(2) Self-stratified bio-based coatings: Formulation and elucidation of critical parameters governing stratification
Charlotte Lemesle a b, Séverine Bellayer a, Sophie Duquesne a, Anne-Sophie Schuller c, Laurent Thomas b, Mathilde Casetta a, Maude Jimenez a
https://doi.org/10.1016/j.apsusc.2020.147687

(3) Martini 3 Coarse-Grained Force Field for Carbohydrates
Fabian Grünewald, Mats H. Punt, Elizabeth E. Jefferys, Petteri A. Vainikka, Melanie König, Valtteri Virtanen, Travis A. Meyer, Weria Pezeshkian, Adam J. Gormley, Maarit Karonen, Mark S. P. Sansom, Paulo C. T. Souza, and Siewert J. Marrink
Journal of Chemical Theory and Computation 2022 18 (12), 7555-7569
DOI: 10.1021/acs.jctc.2c00757
https://pubs.acs.org/doi/epdf/10.1021/acs.jctc.2c00757

(4) Migration and segregation phenomena of a silicone additive in a multilayer organic coating
Steven J.Hinder, Chris Lowe, James T.Maxted, John F.Watts 
Progress in Organic Coatings 
doi:10.1016/j.porgcoat.2005.04.007

(5) A Molecular Dynamics Study on the Miscibility and Morphology of Polyester Blends used in Coil Coatings
Matthew Wearon, Brendan J. Howlin, Chris Lowe, Marie-Laure Abel, John F. Watts 
Progress in Organic Coatings 
https://doi.org/10.1016/j.porgcoat.2022.107065

(6)Tutorial: Martini Polymers 
https://github.com/marrink-lab/polyply_1.0/wiki/Tutorial:-Martini-Polymers

(7) Polyply suite 
https://github.com/marrink-lab/polyply_1.0

(8) Liquid-vapor tension
https://sites.psu.edu/simtech/liquid-vapor-tension/

(9) Entropic segregation of short polymers to the surface of
a polydisperse melt
P. Mahmoudi1 and M.W. Matsen
DOI 10.1140/epje/i2017-11575-7
