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
