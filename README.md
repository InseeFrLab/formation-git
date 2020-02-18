# collaboratif

Dépôt servant à la conception du cours `Travail Collaboratif sous R`. Pour accéder à la dernière version compilée, rendez-vous [ici](http://formationsd2e.pages.innovation.insee.eu/collaboratif/).






# Plan succinct de la formation

1. **Partie 1: Introduction au travail collaboratif**

    + Rstudio
    + Git
    + Markdown


2. **Partie 2: Développement collaboratif**

    + Debugger
    + Fonctions
    + Packages



# Références utiles:

* Les chapitres du livre [Efficient R Programming](https://csgillespie.github.io/efficientR/) relatifs à la programmation (style, *workflow*...)
* Le livre [R packages](http://r-pkgs.had.co.nz/), dans son ensemble
* Les éléments du livre [Advanced R](https://adv-r.hadley.nz/) liés à la programmation fonctionnelle
* [Un cours](https://mikoontz.github.io/data-carpentry-week/index.html) qui couvre quelques problématiques

Sur l'intégration continue:

* Ce livre sur la [reproducibilité des Rmd et CI](https://vickysteeves.gitlab.io/repro-papers/r-markdown-in-reproducible-research.html)
* [Ce post de blog](https://blog.methodsconsultants.com/posts/developing-r-packages-with-usethis-and-gitlab-ci-part-ii/)

# Guide pour contribuer à l'édition des supports

Pour proposer des mises-à-jour des supports, vous pouvez:

* `forker` le dépôt
* éditer le projet
* proposer les modifications avec une *merge request*



# Génération des supports

## Cloner le repository

Le repo étant privé une solution relativement simple pour travailler est de se créer un token privé (`private_token`) sur GitLab avec droit en écriture (aller sur son profil GitLab, puis _Settings_ et _Access Tokens_, donner un nom, cocher _write_repository_ puis cliquer sur _Create personal access token_).  
Pour cloner le repository, utiliser l'url `https://oauth2:private_token@gitlab.com/linogaliana/collaboratif.git`

