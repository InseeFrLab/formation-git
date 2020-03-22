# collaboratif


Dépôt temporaire servant à la conception du cours `Travail Collaboratif sous R`. Pour accéder à la dernière version compilée, rendez-vous [ici pour les utilisateurs Insee](http://formationsd2e.pages.innovation.insee.eu/collaboratif/) et [ici pour les autres](https://linogaliana.gitlab.io/collaboratif/). Cette formation est associée à un guide des bonnes pratiques disponible [ici](https://linogaliana.gitlab.io/bonnespratiques/). 

Une image comprenant les packages utilisés dans ce support est également mise à disposition sur la plateforme innovation. Elle est accessible [au travers de ce lien](https://onyxia.beta.innovation.insee.eu/my-lab/catalogue/inno/rstudio/deploiement?git.enable=true&rstudio.shiny=false&rstudio.image_docker=git-registry.stable.innovation.insee.eu/formationsd2e/collaboratif:master&advanced.sudo=false&onyxia.friendly_name=collaboratif). Cette image peut être utilisée en formation ou bien pour générer le support de formation.

# Plan succinct de la formation

1. **Partie 1: Introduction au travail collaboratif**

    + Rstudio
    + Git
    + Markdown


2. **Partie 2: Développement collaboratif**

    + Debugger
    + Fonctions
    + Packages


# Contribuer à l'édition des supports

Les supports sont automatiquement déployés sur cette [page](http://formationsd2e.pages.innovation.insee.eu/collaboratif/) via l'intégration continue de `Gitlab`. Le fichier qui contrôle le *pipeline* est `.gitlab-ci-innov.yml` (resp. `.gitlab-ci.yml`) sur le `Gitlab` interne de l'Insee (resp. sur le `Gitlab` d'internet). Les fichiers propres à chaque chapitre sont des `Rmd` qui sont compilés via [bookdown](https://bookdown.org/yihui/bookdown/). 

Pour contribuer aux supports de formation, vous pouvez suivre la démarche suivante:

1. Créer une *issue* dans le dépôt officiel et discuter avec le(s) *maintainer(s)* du dépôt. Ceux-ci pourront vous indiquer s'il s'agit d'une modification envisagée et/ou envisageable ;
1. Créer un `fork` du dépôt `Gitlab` (vous pouvez consulter l'[aide de Gitlab](https://docs.gitlab.com/ee/user/project/repository/forking_workflow.html#creating-a-fork) à ce propos) ;
1. Créer une branche dans votre `fork` au nom explicite et l'éditer selon vos envies ;
1. Faire une `Merge Request` de votre dépôt vers le dépôt officiel. Pour faciliter le travailleur du(des)  *maintainer(s)*, associez le à une ou plusieurs *issues* ouvertes. Pour aider les *maintainer(s)* à valider ou non l'intégration de ces modifications dans la branche `master`, n'hésitez pas à utiliser le *chat* associé à la `merge request`. Deux conditions pour que la `merge request` puisse être intégrée au dépôt:
    + Le *pipeline* arrive à terme (petite croix verte !). 
    + Le `fork` est à jour avec les modifications du `master` du dépôt officiel. Il se peut en effet que la branche `master` ait évolué depuis le `fork`. Dans ce cas, il faut mettre à jour le `fork`. Dans ce cas, on peut suivre la démarche proposée [par cette page](https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/syncing-a-fork) et résumée ci-dessous
    

## Si le `fork` n'est plus à jour

Cela ne concerne les contributeurs que si leur `fork` n'est plus à jour avec la branche `master`. On va supposer que la branche à mettre à jour est `ma-proposition`. Dans votre clone local du dépôt forké, ouvrez `Git Bash`:

Etape 1: On appelle le dépôt officiel `upstream` (celui-ci est en avance par rapport au `fork`). On va récupérer les changements grâce à la commande `git bash`

```shell
git fetch upstream
```

Les `commits` effectués dans la branche `master` du dépôt officiel seront enregistrés dans une branche locale `upstream/master`. On retourne sur la branche `ma-proposition` du dépôt `forké`:

```shell
git checkout master
```

On fusionne la branche en avance (`upstream/master`) avec la branche locale `ma-proposition`. S'il n'y a pas de conflit sur certains fichiers, tout se passera bien car `git` effectuera tout seul la fusion. S'il y a conflit, `git` va passer automatiquement en mode `detached HEAD` pour que vous résolviez les parties conflictuelles. On est dans un *worst case scenario* mais, avec la procédure suivante, le problème peut être réglé sans trop de souffrance. La manière la plus simple de faire est alors de créer une branche temporaire:

```shell
git branch temp
```

Cela crée une nouvelle branche dont le point de départ est `detached HEAD`. Résolvez les conflits grâce aux balises insérées par `Git` dans les fichiers. Suivez la procédure standard (`commits` avec messages explicites). Une fois les conflits résolus, repassez dans la branche `ma-proposition`

```shell
git checkout ma-proposition
```

Et effectuez le `merge` avec la branche temporaire

```shell
git merge temp
```

:smile: votre branche `ma-proposition` est maintenant à jour avec la branche `master` du dépôt officiel et tient compte de vos modifications. Si le *pipeline* aboutit (petite croix verte!), vous pouvez faire la `merge request` :relieved:


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

