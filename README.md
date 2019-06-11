
<!-- README.md is generated from README.Rmd. Please edit that file -->

# collaboratif

`Repo` servant à la conception du cours `Travail Collaboratif sous R`

Références utiles:

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

Utilisation de la commande `git
filter`:

``` r
git filter-branch --index-filter "git rm --cached --ignore-unmatch *.pdf" HEAD
```

permet de retirer tous les fichiers .pdf de l’histoire de git

## Télécharger la dernière version du support

<<<<<<< HEAD
-   Ce livre sur la [reproducibilité des Rmd et CI](https://vickysteeves.gitlab.io/repro-papers/r-markdown-in-reproducible-research.html)
-   [Ce post de blog](https://blog.methodsconsultants.com/posts/developing-r-packages-with-usethis-and-gitlab-ci-part-ii/)

J'ai utilisé `git filter` pour retirer le *beamer* de l'histoire de git. J'ai utilisé la commande `git filter` suivante:

``` r
git filter-branch --index-filter "git rm --cached --ignore-unmatch *.pdf" HEAD
```

permet de retirer tous les fichiers .pdf de l'histoire de git
=======
Pour télécharger la dernière version du support, [cliquer sur ce
lien](https://gitlab.com/linogaliana/collaboratif/-/jobs/artifacts/master/download?job=article).
>>>>>>> lien-artifacts
