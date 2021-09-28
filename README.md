# Une API pour les jeux de société !

On va créer une API qui va nous permettre d'enregistrer des jeux de sociétés dans une base de données.

## MCD

Le MCD ne comprendra qu'une seule table dans laquelle on va enregistrer nos jeux de société.

<img src="conception/Jeux.svg" width=600px>

## Création de la DB

On va créer par script une base de données avec un rôle pour la gérer.

On crèe dans le dossier "data", un script en ligne de commande "init_db" qui lance le script sql "create_db.sql".

```
bash data/init_db 
```

## Création de la table

On va utiliser SQITCH pour créer notre table.

```
bash data/migrations/sqitch_deploy 
```

On peut vérifier en lançant :

```
bash data/migrations/sqitch_verify 
```

## Mise en place de l'architecture EXPRESS

On met en place une architecture avec une route qui répond au post pour enregistrer les jeux de sociétés en BDD.

1. Initialisation
2. Création de l'architecture au niveau des fichiers/dossiers
3. Installation des dépendances
4. Création des variables d'environnement
5. Définition du .gitignore
6. Mise en place des routes / controllers
7. Mise en place de la couche de données / models
8. Mise en place des vues / views
9. Mise en place des tests
10. Apéro

## Fonction SQL

On crèe une fonction SQL destinée à l'enregistrement de nos jeux de société. On la déploie avec SQITCH.