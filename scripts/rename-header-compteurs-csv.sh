# suppression caratère de l'UTF8 with BOM
sed -i '1s/^\xEF\xBB\xBF//' public/compteurs.csv

sed -i "s/ident/id_compteur/" public/compteurs.csv
sed -i "s/comptage_1h/sum_counts/" public/compteurs.csv
# ajout d'une colonne pour que la date ne soit pas la première et soit correctemment traitée par le js
# sed -i "s/^/p;/" public/compteurs.csv
sed -i "s/datedebut;/date;/" public/compteurs.csv