# Signal Anomaly Detection with Machine Learning

## 📌 Description
Ce projet vise à simuler un signal temporel bruité contenant des événements rares (pics impulsionnels), puis à détecter automatiquement ces anomalies à l’aide d’une approche de **machine learning non supervisée**.

L’objectif est de construire une chaîne complète :
**simulation → extraction de caractéristiques → détection d’anomalies**.

---

## 🧠 Principe général
1. Génération d’un signal synthétique
2. Ajout d’un bruit gaussien blanc additif (AWGN)
3. Insertion de pics impulsionnels courts simulant des événements rares
4. Extraction de caractéristiques temporelles
5. Détection des anomalies par **Isolation Forest**

---

## 📁 Structure du projet

---

## 🔊 Modélisation du signal
- Signal temporel synthétique
- Bruit gaussien blanc additif généré avec `randn`
- Pics impulsionnels unitaires d’amplitude élevée
- Les pics représentent des anomalies ponctuelles rares

Le niveau de bruit peut être ajusté afin d’étudier la robustesse de l’algorithme.

---

## 🤖 Méthode de détection
La détection des anomalies repose sur **Isolation Forest**, un algorithme :
- non supervisé
- adapté aux événements rares
- robuste en l’absence d’étiquettes

Cette approche est comparée implicitement aux méthodes classiques à seuil fixe.

---

## 🛠️ Technologies utilisées
- **MATLAB** : simulation et génération du signal
- **Python** :
  - NumPy
  - scikit-learn
- **Machine Learning non supervisé**

---

## 🎯 Objectifs pédagogiques
- Comprendre l’impact du bruit sur un signal
- Simuler un environnement de test contrôlé
- Mettre en œuvre une détection d’anomalies moderne
- Relier traitement du signal et machine learning

---

## 🚀 Perspectives
- Ajout de bruit coloré ou non stationnaire
- Détection en temps réel
- Comparaison avec d’autres méthodes (seuils adaptatifs, LOF, autoencodeurs)

---

## 👤 Auteur
Projet réalisé dans un cadre personnel / académique à des fins de formation en traitement du signal et machine learning.

