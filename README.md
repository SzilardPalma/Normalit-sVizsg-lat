# Normalitásvizsgálat

A Github repository az alábbi fájlrendszert tartalmazza:
## 1. Simulation: A Monte Carlo szimulációhoz és a tesztek kieértékeléséhez használt kódok és részeredmények
### 1.1. Matlab replikáló kód: 
  - Normalitástesztek implementációja
  - Replikáló kód
### 1.2. Output xlsx file-ok:
- Szimulált kritikus értékek ('criticalValues.xlsx'). A kritikus értékek 1-10 sorai az n = 10, 20, 30, ..., 100-as elemszámú mintára vonatkoznak. Minden elemszámra m = 100 000 darab $\mathcal{N}(0,1)$ eloszlású mintát szimuláltunk, ami összesen 500 000 minta. Az eredmények az oszlopok szerint az alábbi tesztekhez tartoznak:
    - Shapiro-Wilk teszt
    - Shapiro-Francia teszt
    - Filliben teszt
    - Kolmogorov-Smirnov
    - Anderson-Darling teszt
    - Kuiper teszt
    - Cramér-von Mises teszt
    - D'Agostino-Pearson teszt
    - Jarque-Bera teszt
    - Khí-négyzet teszt
    - Vasicek teszt
  - A tesztekhez tartozó size ('testSize.xlsx'). n = 10, 20, 30, ..., 100-as elemszámú mintára vonatkozóan. Minden elemszámra m = 100 000 darab $\mathcal{N}(0,1)$ eloszlású mintát szimuláltunk. A tesztek oszlop szerinti sorrendje megegyezik a kritikus értékek táblázatával:
    - Shapiro-Wilk teszt
    - Shapiro-Francia teszt
    - Filliben teszt
    - Kolmogorov-Smirnov
    - Anderson-Darling teszt
    - Kuiper teszt
    - Cramér-von Mises teszt
    - D'Agostino-Pearson teszt
    - Jarque-Bera teszt
    - Khí-négyzet teszt
    - Vasicek teszt
#### 1.2.1. Minták
  - Szimulált minták a 20 eloszlásra és a 4 kevert eloszlásra ('d...xlsx')
    - (d1 - d20) file-ok a 20 eloszlást tartalmazzák. 
    - (d21 - d24) file-ok a kevert eloszlásokat tartalmazzák az alábbi sorrendben:
      * d21: 5%-ban kevert, N(0,9) eloszlással
      * d22: 5%-ban kevert, N(3, 1) eloszlással
      * d23: 10%-ban kevert, N(0,9) eloszlással
      * d24: 10%-ban kevert, N(3,1) eloszlással
    - (A 'd...xlsx' file-okban az eloszlások sorrendje a testDistributions.mat és a contaminatedDist, simulatedDistributions Matlab file-ok alapján ellenőrizhető).
  - Szimulált minták alapján képzett négy csoport ('g...xlsx').
#### 1.2.2. Power
  - A tesztek statisztikai ereje az elemszám függvényében eloszlásonként ('p...xlsx' és 'pgroups...xlsx' az 1-4-es csoportok esetén).
    - Az oszlopok az elemszám változását mutatják n = 10, 20, 30, ..., 100-ig.
    - Az sorokban az egyes normalitástesztek találhatóak a kritikus értékek táblázattal egyező sorrendben (1. Shapiro-Wilk teszt, utolsó a Khí-négyzet teszt).
    - (A sorrend a normalityTests.mat file alapján ellenőrizhető.)
  - A tesztek statisztikai ereje az elemszám függvényében eloszláscsoportonként ('pgroup...xlsx').
  
## 2. Plots: az ábrák elkészítéséhez használt kód és a kapott ábrák
### 2.1. Matlab replikáló kód
### 2.2. Heatmap
### 2.3. Eloszláscsportonkénti legjobban teljesítő tesztek statisztikai ereje
### 2.4. Eloszlásonként az összes teszt statisztikai ereje az elemszám függvéynében
