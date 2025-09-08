# Leçon 6 - Ajouter des plateformes

Les plateformes permettent au joueur de sauter et de se déplacer dans le niveau.

## Étape 1 : Créer une scène "Plateforme"
1. Crée une nouvelle scène.
	<!-- Insère capture d'écran ici (nouvelle scène Plateforme) -->
2. Ajoute un nœud "AnimatableBody2D" (pour les plateformes animées).
	<!-- Insère capture d'écran ici (ajout AnimatableBody2D) -->
3. Ajoute un nœud "Sprite2D" pour l'image de la plateforme.
	<!-- Insère capture d'écran ici (ajout Sprite2D) -->
4. Ajoute un nœud "CollisionShape2D" pour la collision.
	<!-- Insère capture d'écran ici (ajout CollisionShape2D) -->

## Étape 2 : Rendre la plateforme "one-way"
1. Sélectionne le nœud de collision.
	<!-- Insère capture d'écran ici (sélection nœud collision) -->
2. Active l'option "one-way collision" (pour que le joueur puisse sauter à travers par en-dessous).
	<!-- Insère capture d'écran ici (option one-way collision) -->

## Étape 3 : Ajouter la plateforme au monde
1. Glisse la scène "Plateforme" dans la scène "Monde".
	<!-- Insère capture d'écran ici (ajout Plateforme dans Monde) -->
2. Place-la où tu veux.
	<!-- Insère capture d'écran ici (placement Plateforme) -->

## Étape 4 : Créer une plateforme qui bouge
1. Ajoute un nœud "AnimationPlayer" à la plateforme.
	<!-- Insère capture d'écran ici (ajout AnimationPlayer) -->
2. Crée une animation qui déplace la plateforme de gauche à droite.
	<!-- Insère capture d'écran ici (animation déplacement) -->
3. Active l'option "autoplay" pour que l'animation commence automatiquement.
	<!-- Insère capture d'écran ici (option autoplay) -->

---
Prochaine leçon : ajouter des pièces à ramasser pour rendre le jeu interactif!
