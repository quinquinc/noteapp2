# Suivi des collaborateurs en mission et intercontrat

## A quoi ça sert ? 
Le suivi des collaborateurs au sein de l'entreprise se fait sur des fiches Excel pour le moment. L'intérêt serait d'automatiser ça, en rendant le suivi plus facile et en permettant de perdre moins de temps sur la création des fiches chaque semaine.

## Comment utiliser l'application ?
-> Celle-ci est encore en développement, donc des modifications arriveront fréquemment, ainsi l'utilisation de l'application pourrai différer selon la version que vous utilisez.

Au tout début, il faut initialiser votre base de données, pour ceci, un programme python avec un rendu graphique a été développé.
Pour installer tous les modules dont le programme a besoin, rendez-vous dans le dossier ```$/Projet``` et tapez la commande ```pip install .```.

Une fois que tous les modules sont installés, lancer l'application à l'aide de la commande ```python AppPython/Setupwithcol.py``` (toujours depuis le même dossier).
Vous aurez une fenêtre qui va s'ouvrir, pour importer dans la base de données la warwait et la matrice de compétences. Cocher 'all sheets' et importer le fichier 'Wait Room 2023.xlsx', pour la matrice de compétence, vous n'avez besoin de rien cocher, cliquez juste sur le bouton d'import et importez 'Matrice des compBtences(1).xlsx'

Une fois que cette étape est faite, cliquer sur 'Quit', votre base de données est initialisé !

## Tests à réaliser pour vérifier le bon fonctionnement de l’application.

### Les bases :
-	Afficher la base de données (sur toutes les pages)
-	Switch de page (cliquer sur un collaborateur ou tout en haut de la warwait/edit page)
Modification sur la/les semaine.s :
-	Pouvoir changer la semaine (entre le plus et le moins, tester avec 30 par exemple, et appuyez sur ‘entrer’)
-	Pouvoir changer le nombre de semaines
-	Cliquer sur le plus et le moins et que le numéro de semaine soit incrémenté ou décrémenté
### Les recherches :
-	Pouvoir rechercher un collaborateur
-	Pouvoir rechercher par compétence sur la warwait (la matrice s’affichera) </br>
/!\ cela ne marche que sur la warwait, pas sur la page edit. </br>
 -> Essayez : </br>
     &nbsp;&nbsp;&nbsp;&nbsp; °	aws </br>
     &nbsp;&nbsp;&nbsp;&nbsp; °	aws; python; </br>
     &nbsp;&nbsp;&nbsp;&nbsp; °	aws; pyton; anglais; </br>
     &nbsp;&nbsp;&nbsp;&nbsp; ° aws; pyton; anglais; linux; (celui-là ne doit afficher personne, car le maximum de compétences recherchable est 3) </br>
-	Essayer de chercher quelqu’un n’existe pas (jskqdqkml par exemple)
-	Essayer de chercher ‘cloud’ seuls les collaborateurs pour lesquels la compétence Cloud est explicitement écrite seront affichés (c’est une compétence qui n’existe pas sur la matrice, la recherche sera différente de l’autre recherche par compétences.)

### L’édition :
-	Sur la warwait, pouvoir modifier une valeur vide par n’importe quelle valeur disponible, après ça, elle ne pourra plus être changée sur la warwait.
-	Pouvoir changer n’importe quel champ des semaines sur la page edit.
-	Pouvoir cliquer sur le bouton ‘modifier’ et changer les valeurs (Le bouton OK ne sert qu’à retourner sur la page edit pour l’instant, pour bien prendre en compte vos modifications, appuyez sur ‘entrer’ pour chaque champ.)
-	Pouvoir ajouter/supprimer un collaborateur.
-	Tester si l’auto-complétions fonctionne (trouvez une ligne ou aucune valeur n’est renseignée pour les semaines, mettez des valeurs aléatoires au milieu de cette ligne, l’auto-complétions devrai pouvoir compléter à partir de ça.)
-	Uncheck une check-box devrait permettre de cacher un collaborateur sur la warwait.
-	Quand on change une valeurs sur la colonne ‘en_mission’, la modification doit apparaître dans la warwait.

