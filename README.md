# Bruit Sourd — Media / Press site

Site statique prêt pour Netlify.

## Pages
- `/` : accueil média
- `/ann-bonny/` : press kit Ann Bonny
- `/37500-yens/` : press kit 37500 Yens / Astero

## Avant mise en ligne
1. Remplacer les boutons marqués "lien à renseigner" par vos URLs d'écoute / téléchargement.
2. Ajouter les visuels Ann Bonny dans `assets/img/` puis remplacer le hero placeholder.
3. Vérifier l'adresse `contact@bruitsourd.com`.
4. Ajouter éventuellement le PDF du dossier de presse 37500 Yens dans un dossier `downloads/`.

## Déploiement Netlify
- Créer un nouveau site Netlify depuis ce dossier ou un dépôt Git.
- Le site est 100% statique : aucun build n'est nécessaire.
- Ajouter ensuite `media.bruitsourd.com` dans Domain management.
- Chez OVH, créer le CNAME `media` vers le domaine `xxxxx.netlify.app` fourni par Netlify.

## Structure
```
media-bruitsourd/
├── index.html
├── netlify.toml
├── ann-bonny/index.html
├── 37500-yens/index.html
└── assets/
    ├── css/styles.css
    ├── site.js
    └── img/
```
