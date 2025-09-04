"
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
X  HIV-1 Dynamics in the Squeak Workspace                       X
X  Author: Felix Rodrigues Gulias - 2025 - Sao Paulo - Brazil   X
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
"

"
Bibliography: Alan S. Perelson, Avidan U. Neumann, Martin Markowitz John M. Leonardy, and David D. Ho. HIV-1 Dynamics In Vivo: Virion Clearance Rate,
Infected Cell Lifespan, and Viral Generation Time. SFI WORKING PAPER: 1996-02-004. Santa Fe Institute. USA.
"

|hivrna hrp tt pp vv k delta n c |     "Declaration of variables"

"
DATA:
Productively infected cells have a lifespan of 2.2 days.
Plasma virions have a mean lifespan of 0.3 days.
HIV-1 production was 10.3 * 10 raisedTo: 9 virions per day.
HIV-1 life cycle in vivo is 1.2 days.
Release new generation of viral particles in 2.6 days.
Decay observed was a composite of two separate effects: clearance of free virions from plasma and loss of virus-producing cells.
"

"VARIABLES"
"========================================================"
hivrna := 130000. "HIV-1 RNA of the patient"
hrp := ((hivrna*5000)/2). "HRP protocol of Gulias,FR."

tt := 2*(10 raisedTo:9). "Target cells"
pp := 10.3*(10 raisedTo:9). "Productively infected cells"
vv := hrp. "Concentration of viral particles in plasma"
k := 0.0125. "Frequency of infected cells produced"
delta := 0.7. "delta is the rate of loss of infected"
n := 250. "n is the number of new virions produced per infected cell during its lifetime"
c := 4.4642857142857142857142857142857. "c is the rate constant for viral clearance"
"========================================================"

"CALCULATION"
"=================================="
target := (k*vv*tt)-(delta*pp). "Target cells calculation"
infected := (n*delta*pp)-(c*vv). "Infected cells calculation"
"=================================="

"WINDOW WITH RESULTS EXPLAINED"
"================================================"
Transcript closeAllViews.
Transcript openLabel: 'RESULT'; cr;
show: 'Author: Felix Rodrigues Gulias MD - São Paulo - 2025 - Brazil ';
cr;
cr;
show: 'HIV-1 RNA: '; show: (hivrna asString), ' copies/ml';
cr;
cr;
show: 'HRP: '; show: (hrp asString), ' copies/day';
cr;
cr;
show: 'The uninfected cells density: '; show:(target asString), '  (', ((tt/target)*100) asString, ' %)';
cr;
cr;
show: 'Viral density: '; show:(infected asString), '  (', (((infected/target))*100) asString, ' %)';
cr;
cr.
"================================================"
