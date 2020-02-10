# 1. Initier un package -------------------------------------
# Étapes à ne faire qu'une seule fois

# 1.a. Choisir un nom
nom <- "monpetitpaquet"
available::available(nom, browse = FALSE)

# 1.b. Créer un projet RStudio de type "package"
usethis::create_package(file.path("~", nom))

# 1.c. Renseigner les méta-données du package
# Titre du package
desc::desc_set(
  Title = "Mon Premier Paquet"
)
# Désigner les auteurs, contributeurs et 
# les détenteurs des droits de propriété intellectuelle
desc::desc_set_authors(c(
  person(
    "Mon prénom", 
    "Mon nom", 
    role = c("aut", "cre"), 
    email = "monprenom.monnom@insee.fr"
  ),
  person(
    family = "Institut national de la statistique et des études économiques", 
    role = "cph"
  )
))
# Décrire ce que fait le package
desc::desc_set(
  Description = "J'ai créé ce package pour apprendre. Ne l'installez pas il ne fait rien d'intéressant pour l'instant."
)
# Choisir une licence 
usethis::use_mit_license(
  name = "Institut national de la statistique et des études économiques (Insee)"
)
# Si la documentation du package est en français
desc::desc_set(Language = "fr")

# 2. Configurer les outils de développement -----------------
# Étapes à ne faire qu'une seule fois

# 2.a. Créer un dépôt vide dans GitLab
# il est possible d'automatiser cette étape, voir le support de formation

# 2.b. Utiliser git dans le projet RStudio
usethis::use_git()

# 2.c. Créer le lien entre le dépôt GitLab 
# et le projet RStudio
repo_url <- "https://gitlab.com/RLesur/monpetitpaquet.git"
usethis::use_git_remote(url = repo_url)
git2r::push(name = "origin", 
            refspec = "refs/heads/master", 
            set_upstream = TRUE
)

# 2.d. Utiliser testthat pour les tests
usethis::use_testthat()

# 2.e. Utiliser l'intégration continue de GitLab
usethis::use_gitlab_ci()

# 2.f. Pour utiliser markdown dans la documentation
usethis::use_roxygen_md()
roxygen2md::roxygen2md()

# 3. Développer un package ----------------------------------
# 3.a. Inclure du code, le documenter et le tester
# Pour chaque fonction du package :
usethis::use_r("mafonction")
usethis::use_test("mafonction")
# écrire le code de la fonction
# documenter la fonction
# Actualiser le NAMESPACE et la documentation
devtools::document()
# écrire les tests
# exécuter les tests
devtools::test()

# 3.b. Si besoin, déclarer une dépendance
usethis::use_package("dplyr", min_version = "0.8")
# pour utiliser %>% dans un package
usethis::use_pipe()

# 3.c. Astuce qui peut aider durant le développement
# Charger l'ensemble des fonctions de son package
devtools::load_all()

# 3.d. Assurer la conformité du package
# Réaliser le contrôle de conformité
devtools::check()

# 4. Installer le package -----------------------------------
# 4.a. Sur sa machine
devtools::install()

# 4.b. Générer le fichier compressé
devtools::build()

# 5. Documenter un package ----------------------------------
# 5.a. Créer un README (obligatoire)
usethis::use_readme_rmd() # ou bien usethis::use_readme_md()

# 5.b. Créer une vignette (fortement recommandé)
usethis::use_vignette(nom)
# Ecrire au moins une vignette qui explique 
# comment on utilise le package
# Pour construire les vignettes
devtools::build_vignettes()

# 6. Si besoin, créer un modèle de rapport R Markdown -------
usethis::use_rmarkdown_template("note mensuelle")
# éditer le fichier 
# inst/rmarkdown/templates/note-mensuelle/skeleton/skeleton.Rmd

# 7. Bonnes pratiques ---------------------------------------
# 7.a Créer un changelog (à ne faire qu'une fois)
usethis::use_news_md()
# 7.b. Gérer les versions
usethis::use_version("dev")

# 7.c. Améliorer les tests et la couverture de code
# Si vous avez bien effectué l'étape 2.e, 
# le rapport de couverture de code est disponible 
# dans GitLab Pages
# Viser une couverture de code de 100%

