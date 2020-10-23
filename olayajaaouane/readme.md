# Contexte général du projet
Le projet suivant s’articule autour du trombinoscope de la promotion 2020-2021 à Paris 8. Il consite à :

* Premièrement, diffuser un formulaire à remplir par les étudiants de chaque promotion. Ce formulaire contient généralement des questions sur le cursus et les compétences de ces étudiants afin d’évaluer leurs prérequis et de bien préciser le degré du besoin d’approfondissement en terme de technologies, les langages de programmation, les outils informatiques…

* Deuxièment, à l’aide d’une interface, on affiche pour chaque étudiant une carte contenant la photo de ce dernier, ses informations personnelles telles que son nom, prénom et la formation qu’il suit, ainsi les informations qu’il a déjà saisies dans le formulaire sous forme des graphs (graphique en secteur dans ce projet).
# fonctionnalités à rajouter au projet 
## envoyer email automatiquement
Cette fonctionnalité permet le proffesseur d'envoyer un email automatiquement une fois il clique sur l'adresse mail affichée sur chaque carte d'étudiant. Pour éviter tout basculement entre un navigateur et la page du trombinoscope.
## Correspondance entre une couleur et un degré du besoin 
Pour chaque couleur afficher dans les graphiques des compétences techniques des étudiants et leurs besoins, on associe une couleur différente. A savoir la création d'un annex des couleurs en correspondance avec la signification.
## gestion des étudiants 
Un boutton pour ajouter un étudiant.
Dans la carte de chaque étudiant, on ajoute des boutton permettant de supprimer et modifier les informations de l'étudiant ou l'étudiant lui même.
# installation
afin d'obtenir tous les projets des étudiants dy master 2 THYP, il faut simplement cloner le projet à l'aide de la commande suivante:
<code>git clone https://github.com/samszo/THYP_20-21.git</code>

# Technologies utilisées

## Bootstrap 
<img src="boott.JPG"></img>

 * version Bootstrap v4.1.3(https://getbootstrap.com/)
 * Copyright 2011-2018 The Bootstrap Authors
 * Copyright 2011-2018 Twitter, Inc.
 * Licensed under MIT (https://github.com/twbs/bootstrap/blob/master/LICENSE)


La v4.1.2 du Bootstrap est utilisée pour résoudre le problème avec la configuration des listes de navigateurs, corriger certains bogues CSS, préparer les plugins JavaScript UMD (Universal Module Description) et améliorer le rendu du contrôle de formulaire.

## Data Driven Documents (known as D3)
<img src="d3.JPG"></img>
### Documents basés sur les données
D3.js est une bibliothèque JavaScript pour manipuler des documents basés sur des données. D3 vous aide à donner vie aux données en utilisant HTML, SVG et CSS. L'accent mis par D3 sur les normes Web vous donne toutes les capacités des navigateurs modernes sans vous attacher à un cadre propriétaire, combinant des composants de visualisation puissants et une approche de la manipulation DOM basée sur les données.
#### introduction sur D3
D3 vous permet de lier des données arbitraires à un modèle d'objet de document (DOM), puis d'appliquer des transformations basées sur les données au document. Par exemple, vous pouvez utiliser D3 pour générer un tableau HTML à partir d'un tableau de nombres. Ou utilisez les mêmes données pour créer un graphique à barres SVG interactif avec des transitions et une interaction fluides.

D3 n'est pas un cadre monolithique qui cherche à fournir toutes les fonctionnalités imaginables. Au lieu de cela, D3 résout le nœud du problème: une manipulation efficace des documents à partir de données. Cela évite la représentation propriétaire et offre une flexibilité extraordinaire, exposant toutes les capacités des normes Web telles que HTML, SVG et CSS. Avec une surcharge minimale, D3 est extrêmement rapide, prenant en charge de grands ensembles de données et des comportements dynamiques pour l'interaction et l'animation. Le style fonctionnel de D3 permet la réutilisation du code à travers une collection diversifiée de modules officiels et développés par la communauté .
### La base de données utilisée
les données sont récupérées à partir du formulaire dans un fichier .csv en ligne ou téléchargeable du URL suivant:
(https://docs.google.com/spreadsheets/d/e/2PACX-1vQHni5Lu--I9WKTWGHOJ3_SBRW47sPTvxxRN6FOaGchhMztr4gm3I5C91EJq1CcGOsmfsOfa2f7PfrF/pub?gid=11903047&single=true&output=csv)


