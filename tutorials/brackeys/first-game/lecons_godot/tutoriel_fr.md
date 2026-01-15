# Tutoriel : Créez votre premier jeu 2D avec Godot

Ce guide vous accompagne pas à pas pour créer un jeu de plateforme simple avec Godot. Vous apprendrez à utiliser les nœuds, les scènes, les scripts, et à organiser votre projet. Les ressources graphiques, sonores et les polices seront à placer dans le dossier `assets`.

## 1. Installation et création du projet
- Téléchargez Godot depuis le site officiel.
- Lancez Godot et créez un nouveau projet, nommez-le par exemple "Premier Jeu".
- Placez le projet dans un dossier dédié.

## 2. Organisation des fichiers
- Créez les dossiers suivants dans votre projet :
  - `assets` (pour les images, sons, polices)
  - `scenes` (pour les scènes du jeu)
  - `scripts` (pour les scripts GDScript)

## 3. Importation des assets
- Glissez-déposez vos fichiers dans le dossier `assets`.
- Organisez les sous-dossiers : `sprites`, `sounds`, `music`, `fonts`.

## 4. Comprendre les nœuds et les scènes
- Godot fonctionne avec des nœuds (éléments de base du jeu).
- Les scènes regroupent des nœuds pour créer des objets réutilisables (joueur, ennemis, pièces, plateformes, niveaux).

## 5. Création du joueur
- Créez une nouvelle scène, ajoutez un nœud `CharacterBody2D`.
- Ajoutez un nœud `AnimatedSprite2D` pour l’affichage du personnage.
- Importez votre sprite et configurez les animations (idle, run, jump).
- Ajoutez un nœud `CollisionShape2D` (cercle ou rectangle) pour la collision.
- Sauvegardez la scène sous le nom `player.tscn`.

## 6. Mouvement du joueur
- Ajoutez un script à votre joueur (`player.gd`).
- Utilisez les touches fléchées ou WASD pour déplacer le personnage et sauter.
- Ajustez la vitesse et la force du saut dans le script.

## 7. Création du monde
- Dans la scène principale, ajoutez un nœud `TileMap`.
- Importez un tileset dans `assets/sprites` et configurez les tuiles.
- Dessinez le niveau avec le pinceau.
- Ajoutez des couches pour le décor et les collisions.

## 8. Plateformes mobiles
- Créez une scène `platform.tscn` avec un nœud `AnimatableBody2D` et un sprite.
- Ajoutez une collision et configurez l’animation pour le mouvement.
- Placez les plateformes dans le niveau.

## 9. Pièces à collecter
- Créez une scène `coin.tscn` avec un nœud `Area2D`, un sprite animé et une collision.
- Ajoutez un script pour détecter l’entrée du joueur et supprimer la pièce.
- Ajoutez un son de collecte.

## 10. Gestion de la mort et du redémarrage
- Créez une scène `killzone.tscn` avec un nœud `Area2D` et une collision.
- Ajoutez un script pour détecter le joueur et redémarrer la scène après un délai.
- Ajoutez un effet de ralenti lors de la mort.

## 11. Création d’ennemis
- Créez une scène `enemy.tscn` avec un nœud `Node2D`, un sprite animé et une collision.
- Ajoutez un script pour déplacer l’ennemi et changer de direction avec des raycasts.
- Utilisez la killzone pour gérer la collision avec le joueur.

## 12. Animation et input du joueur
- Personnalisez les touches dans les paramètres du projet (Input Map).
- Ajoutez des animations pour la course, le saut et l’attente.
- Gérez le sens du sprite selon la direction.

## 13. Affichage du score et des textes
- Ajoutez des labels pour afficher des conseils et le score.
- Utilisez une police pixel pour un rendu net.
- Créez un script `game_manager.gd` pour gérer le score et mettre à jour le label.

## 14. Ajout de la musique et des sons
- Ajoutez un nœud `AudioStreamPlayer2D` pour la musique et les effets.
- Configurez les bus audio pour gérer le volume.
- Utilisez l’autoload pour que la musique continue après le redémarrage.

## 15. Exportation du jeu
- Installez les templates d’exportation via le menu de Godot.
- Exportez votre jeu pour Windows ou une autre plateforme.

---

Ce tutoriel vous donne les bases pour créer un jeu complet avec Godot. N’hésitez pas à expérimenter, ajouter des effets, des ennemis, des niveaux ou des menus. Consultez la documentation officielle et les ressources en ligne pour aller plus loin. Bon développement !
