# Leçon 7 - Ajouter des pièces à ramasser

Pour rendre le jeu plus amusant, tu peux ajouter des pièces (ou objets) à ramasser.

## Étape 1 : Créer une scène "Pièce"
1. Crée une nouvelle scène.
    <!-- Insère capture d'écran ici (nouvelle scène Pièce) -->
2. Ajoute un nœud "Area2D" (pour détecter la collision avec le joueur).
    <!-- Insère capture d'écran ici (ajout Area2D) -->
3. Ajoute un nœud "Sprite2D" pour l'image de la pièce.
    <!-- Insère capture d'écran ici (ajout Sprite2D) -->
4. Ajoute un nœud "CollisionShape2D" pour la collision.
    <!-- Insère capture d'écran ici (ajout CollisionShape2D) -->

## Étape 2 : Détecter la collecte
1. Dans le nœud "Area2D", connecte le signal "body_entered".
    <!-- Insère capture d'écran ici (connexion signal body_entered) -->
2. Ajoute un script simple pour faire disparaître la pièce quand le joueur la ramasse.
    <!-- Insère capture d'écran ici (script pièce ramassée) -->

Exemple de script :
```gdscript
func _on_Area2D_body_entered(body):
    if body.name == "Joueur":
        queue_free() # Supprime la pièce
```

## Étape 3 : Ajouter des pièces dans le monde
1. Glisse la scène "Pièce" dans la scène "Monde".
    <!-- Insère capture d'écran ici (ajout Pièce dans Monde) -->
2. Place plusieurs pièces à différents endroits.
    <!-- Insère capture d'écran ici (placement des pièces) -->

---
Bravo ! Tu as maintenant un jeu où le joueur peut sauter, se déplacer et ramasser des objets. Tu peux ajouter des ennemis, des effets sonores, et bien plus encore !
Bravo! Tu as maintenant un jeu où le joueur peut sauter, se déplacer et ramasser des objets. Tu peux ajouter des ennemis, des effets sonores, et bien plus encore!
