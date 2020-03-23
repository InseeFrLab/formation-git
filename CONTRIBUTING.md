# Comment contribuer à la formation

L'objet de ce document est de présenter les différentes
manières de participer à la mise à jour des supports.
Il s'agit d'une adaptation du code des
contributeurs proposé par l'équipe du `tidyverse`.

### Retirer des coquilles

Pour les erreurs grammaticales, orthographiques ou les coquilles,
il est possible de passer directement par l'interface graphique de `gitlab`.
Pour cela, vous pouvez suivre
[cette démarche](https://docs.gitlab.com/ee/user/discussions/#suggest-changes).


### Démarche pour contribuer aux supports

1. Créer une *issue* dans le dépôt officiel et discuter avec le(s) *maintainer(s)* du dépôt. Ceux-ci pourront vous indiquer s'il s'agit d'une modification envisagée et/ou envisageable ;
1. Créer un `fork` du dépôt `Gitlab` (vous pouvez consulter l'[aide de Gitlab](https://docs.gitlab.com/ee/user/project/repository/forking_workflow.html#creating-a-fork) à ce propos) ;
1. Créer une branche dans votre `fork` au nom explicite et l'éditer selon vos envies ;
1. Faire une `Merge Request` de votre dépôt vers le dépôt officiel. Pour faciliter le travailleur du(des)  *maintainer(s)*, associez le à une ou plusieurs *issues* ouvertes. Pour aider les *maintainer(s)* à valider ou non l'intégration de ces modifications dans la branche `master`, n'hésitez pas à utiliser le *chat* associé à la `merge request`. Deux conditions pour que la `merge request` puisse être intégrée au dépôt:
    + Le *pipeline* arrive à terme (petite croix verte !). 
    + Le `fork` est à jour avec les modifications du `master` du dépôt officiel. Il se peut en effet que la branche `master` ait évolué depuis le `fork`. Dans ce cas, il faut mettre à jour le `fork`. On peut suivre la démarche proposée [par cette page](https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/syncing-a-fork) et résumée ci-dessous
    

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
