# Surface segregation of polymer blends

Surface energy is the free energy per unit area of creating an interface with air or vacuum. Surface tension is the force per unit length along the surface opposing the interface of air or vacuum (1). The surface of polymer blends is often different from the bulk material. This in itself provides the opportunity to add functionality at the surface interface for coatings and paints to have properties such as corrosion inhibition, hydrophobicity, conductance and chemical resistance to name just a few.     

Predicting the surface composition is often determined initially by the component with the lowest surface energy (1,2). However the structure (entropic) and functional groups (enthalpic) contributions have shown to contradict the surface energy belief.

# Method

In this work molecular dynamics simulations of polymer blends with different surface energies are compared.  The polymer weight and concentration is varied.  The MARTINI forcefield is used with GROMACS to create a periodic box with two interfaces.  The partial density function in GROMACS is then used to identify the position of the polymer across the box. 

Using the MARTINI forcefield with dextran and PEO as with https://github.com/marrink-lab/polyply_1.0/wiki/Tutorial:-Martini-Polymers, simulation of 500ns produces phase seperated system as below. This work has been repeated from their paper.

![alt text]([https://github.com/[username]/[reponame]/blob/[branch]/image.jpg?raw=true](https://github.com/mw00847/surface-segregation/blob/main/dextran_PEO.png))

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
