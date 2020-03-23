# Travail collaboratif avec R

Les supports de formation sont accessibles [à cette adresse](https://linogaliana.gitlab.io/collaboratif). Le dépôt peut être cloné et pré-visualisé en local avec la commande

```r
bookdown::render_book('./index.Rmd', output_dir = 'public')
```

Une image comprenant les packages utilisés dans ce support est également mise à disposition sur la plateforme innovation. Elle est accessible [au travers de ce lien](https://onyxia.beta.innovation.insee.eu/my-lab/catalogue/inno/rstudio/deploiement?git.enable=true&rstudio.shiny=false&rstudio.image_docker=git-registry.stable.innovation.insee.eu/formationsd2e/collaboratif:master&advanced.sudo=false&onyxia.friendly_name=collaboratif). Cette image peut être utilisée en formation ou bien pour générer le support de formation.

# Plan de la formation

1. **Partie 1: Introduction au travail collaboratif**
    + Rstudio
    + Git
    + R Markdown
2. **Partie 2: Développement collaboratif**
    + Fonctions
    + Packages


# Contribuer à l'édition des supports

Les supports sont automatiquement déployés sur cette [page](http://formationsd2e.pages.innovation.insee.eu/collaboratif/) via l'intégration continue de `Gitlab`. Le fichier qui contrôle le *pipeline* est `.gitlab-ci-innov.yml` (resp. `.gitlab-ci.yml`) sur le `Gitlab` interne de l'Insee (resp. sur le `Gitlab` d'internet). Les fichiers propres à chaque chapitre sont des `Rmd` qui sont compilés via [bookdown](https://bookdown.org/yihui/bookdown/). 

Pour contribuer aux supports de formation, vous pouvez vous référez au [guide pour contribuer aux supports](CONTRIBUTING.md). 

