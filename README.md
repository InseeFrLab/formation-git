# Mener un projet collaboratif avec `R`: améliorer la coordination avec `Git`

Ce dépôt archive la partie `Git` de la formation __Travail collaboratif avec R__
ayant été conçue à l'Insee. 

Ce dépôt remplace les supports précédemment déployés sur 
[https://linogaliana.gitlab.io/collaboratif/]

## Accéder aux supports

### Sous forme de site web

Formation développée à l'Insee pour découvrir `Git` via `RStudio` et  `Gitlab`

Les supports de formation sont accessibles [à cette adresse](https://linogaliana.gitlab.io/collaboratif).

### Depuis une instance `R` du SSP-Cloud

__TO BE COMPLETED__

### Depuis votre instance `R` de prédilection

Pour cela il faut... utiliser `Git` :

- Via `RStudio`, suivre les recommandations de la formation
- Via `Git Bash`, `git clone https://github.com/InseeFrLab/formation-git.git`

Le dépôt peut ensuite être cloné et pré-visualisé en local avec la commande

```r
bookdown::render_book('./index.Rmd', output_dir = 'public')
```


## Plan de la formation

Plan de la formation à compléter

Les autres chapitres initialement prévus sont présents
sur l'[ancien site web](https://linogaliana.gitlab.io/collaboratif/)

# Contribuer à l'édition des supports

Les supports sont automatiquement déployés sur cette [page](http://formationsd2e.pages.innovation.insee.eu/collaboratif/) via l'intégration continue de `Gitlab`. Le fichier qui contrôle le *pipeline* est `.gitlab-ci-innov.yml` (resp. `.gitlab-ci.yml`) sur le `Gitlab` interne de l'Insee (resp. sur le `Gitlab` d'internet). Les fichiers propres à chaque chapitre sont des `Rmd` qui sont compilés via [bookdown](https://bookdown.org/yihui/bookdown/). 

Pour contribuer aux supports de formation, vous pouvez vous référez au [guide pour contribuer aux supports](CONTRIBUTING.md). 

## Crédits

[Lino Galiana](https://github.com/linogaliana) ;
[Mathias André](https://github.com/mathiasandre) ;
[Romain Lesur](https://github.com/RLesur) ; 
[Annie Moineau](https://github.com/anniemoineau) ;
[Olivier Meslin](https://github.com/oliviermeslin) ; 

Licence `CC BY-NC-SA 4.0`

