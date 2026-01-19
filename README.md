# GeoFrance

## Sommaire

1/ Architecture de l’application  
2/ Les règles du jeu  
3/ Les données  

---

## 1/ ARCHITECTURE DE L’APPLICATION

### Écran d’accueil
- Image de fond  
- Titre/logo  
- Bouton commencer  
- Bouton règles du jeu  
- Bouton classement joueurs  

### Écran du jeu
- Header:  
	- numéro de la question  
	- score actuel  
	- timer  
- Body:  
	- L’image à trouver (prend tout l’écran)  
- Footer:  
	- Bouton de choix des questions (4)  

### Écran de résultat
- Apparaît à la fin du timer  
- Message lié au résultat obtenu  
- Bouton “rejouer”  
- Bouton “quitter”  

---

## 2/ LES RÈGLES DU JEU

### Déroulement d’une partie
- Partie de 10 questions aléatoires (via banque de questions).  
- Images d’un lieu en France obligatoirement  

### Le timer
- Timer global déclenché au clic sur bouton “commencer”  
- Timer global arrêté au clic sur boutons de choix sur dernière question  

### Le clic
- Si bouton “commencer”, amène à la première série de questions  
- Si bonne réponse, bouton devient vert 1 seconde  
- Si mauvaise réponse, bouton devient rouge 1 seconde  
- Si bonne ou mauvaise réponse, amène à la question suivante  
- Si dernière question, boutons de choix arrêtent le timer global  
- Si dernière question (10/10), clic sur 1 réponse amène à l’écran de résultat  
- Si bouton “rejouer”, amène à l’écran de jeu à la première nouvelle question (1/10)  
- Si bouton “quitter”, amène à l’écran d’accueil  
- Si bouton “classement de joueurs”, amène au classement global, avec bouton “quitter”  
- Si bouton “règles du jeu”, amène sur le règlement du jeu, avec bouton “quitter”  

### Les points
- 1 bonne réponse donne au joueur 1 point  
- 1 mauvaise réponse donne au joueur 0 point  

---

## 3/ LES DONNÉES

- Banque de questions à créer  
- Banque d’image via DB  
- Banque de messages àc réer:  
	- Bonne réponse: “Bien joué!”  
	- Mauvaise réponse: “Pas du tout !”  
	- Fin de partie: “Pas terrible du tout !”  
