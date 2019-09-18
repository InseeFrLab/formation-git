
<!-- README.md is generated from README.Rmd. Please edit that file -->

# collaboratif

`Repo` servant à la conception du cours `Travail Collaboratif sous R`

Pour télécharger la dernière version du support, [cliquer sur ce
lien](https://gitlab.com/linogaliana/collaboratif/-/jobs/artifacts/master/download?job=article).

# Plan succinct de la formation

1.  **Partie 1: Introduction au travail collaboratif**
    
      - Rstudio
      - Git
      - Markdown

2.  **Partie 2: Développement collaboratif**
    
      - Debugger
      - Fonctions
      - Packages

# Références utiles:

  - Les chapitres du livre [Efficient R
    Programming](https://csgillespie.github.io/efficientR/) relatifs à
    la programmation (style, *workflow*…)
  - Le livre [R packages](http://r-pkgs.had.co.nz/), dans son ensemble
  - Les éléments du livre [Advanced R](https://adv-r.hadley.nz/) liés à
    la programmation fonctionnelle
  - [Un
    cours](https://mikoontz.github.io/data-carpentry-week/index.html)
    qui couvre quelques problématiques

Sur l’intégration continue:

  - Ce livre sur la [reproducibilité des Rmd et
    CI](https://vickysteeves.gitlab.io/repro-papers/r-markdown-in-reproducible-research.html)
  - [Ce post de
    blog](https://blog.methodsconsultants.com/posts/developing-r-packages-with-usethis-and-gitlab-ci-part-ii/)

# Génération des supports

## Cloner le repository

Le repo étant privé une solution relativement simple pour travailler est
de se créer un token privé (`private_token`) sur GitLab avec droit en
écriture (aller sur son profil GitLab, puis *Settings* et *Access
Tokens*, donner un nom, cocher *write\_repository* puis cliquer sur
*Create personal access token*).  
Pour cloner le repository, utiliser l’url
`https://oauth2:private_token@gitlab.com/linogaliana/collaboratif.git`

## Générer l’ensemble des supports

Dans la console de R, exécuter

``` r
source('build.R')
```

ou bien dans RStudio, dans l’onglet *Build*, cliquer sur *Build All*.

## Travailler sur un support et le générer

Une petite manipulation est à effectuer dans RStudio pour générer un
document.

Cliquer sur le menu à droite du bouton *Knit*, sélectionner *Knit
Directory* puis *Project Directory* comme dans cette image

![Knit Project
Directory](https://gitlab.com/linogaliana/collaboratif/uploads/a8cb41e78336460e2292bdae90d5427c/Capture_du_2019-09-18_01-46-19.png)

Ensuite, vous pouvez cliquer sur le bouton *Knit* pour générer le
document.
