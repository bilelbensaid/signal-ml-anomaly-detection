# 🎯 Signal Anomaly Detection with Machine Learning

## 📌 Description

Ce projet présente une chaîne complète de **détection d'anomalies dans des signaux temporels** en combinant traitement du signal et machine learning. Il simule un signal bruité contenant des événements rares (pics impulsionnels) et les détecte automatiquement via une approche non supervisée.

**Pipeline complet** : Simulation → Extraction de features → Détection ML

---

## 🧠 Contexte et enjeux

La détection d'anomalies dans les signaux est cruciale dans de nombreux domaines :
- Maintenance prédictive (vibrations, capteurs industriels)
- Surveillance électronique et télécommunications
- Traitement du signal biomédical (ECG, EEG)
- Systèmes embarqués temps réel

Ce projet démontre comment le machine learning peut surpasser les méthodes classiques à seuil fixe dans des environnements bruités.

---

## 🔊 Génération du signal synthétique

Le signal de test comprend :
- **Signal de base** : composante temporelle synthétique
- **Bruit AWGN** : bruit blanc gaussien additif paramétrable
- **Anomalies** : pics impulsionnels d'amplitude élevée simulant des événements rares

Cette approche permet de **contrôler précisément** le rapport signal/bruit et d'évaluer la robustesse de l'algorithme.

---

## 🤖 Détection par Isolation Forest

### Pourquoi Isolation Forest ?

- ✅ **Non supervisé** : pas besoin d'étiquettes d'entraînement
- ✅ **Optimisé pour les anomalies rares** : isole efficacement les outliers
- ✅ **Performances** : complexité linéaire, adapté aux données volumineuses
- ✅ **Robustesse** : moins sensible au bruit que les méthodes à seuil

### Extraction de features

Caractéristiques temporelles calculées sur fenêtres glissantes :
- Amplitude moyenne et écart-type
- Variance locale
- Dérivée et gradient
- Énergie du signal

---

## 🛠️ Stack technique

| Composant | Technologie |
|-----------|-------------|
| **Simulation signal** | MATLAB |
| **Processing & ML** | Python (NumPy, scikit-learn, Pandas) |
| **Visualisation** | Matplotlib |
| **Paradigme** | Machine Learning non supervisé |

---

## 📁 Structure du projetsignal-anomaly-detection/
│
├── data/raw/              # Données brutes générées
├── matlab/                # Scripts de simulation du signal
│   └── generate_signal.m
├── python/                # Scripts de détection ML
│   ├── feature_extraction.py
│   ├── anomaly_detection.py
│   └── visualization.py
├── requirements.txt       # Dépendances Python
├── LICENSE
└── README.md

---

## 📊 Résultats

Le modèle permet de :
- Détecter automatiquement les pics impulsionnels même en présence de bruit
- Réduire les faux positifs comparé aux méthodes à seuil fixe
- Adapter la sensibilité via le paramètre de contamination

---

## 🚀 Perspectives d'évolution

- [ ] Extension à des signaux réels (capteurs industriels, bio-signaux)
- [ ] Implémentation temps réel pour systèmes embarqués
- [ ] Comparaison avec d'autres algorithmes (LOF, One-Class SVM, Autoencoders)
- [ ] Traitement de bruit coloré et non-stationnaire
- [ ] Optimisation pour déploiement sur microcontrôleurs (edge ML)

---

## 💡 Compétences démontrées

- Traitement du signal numérique
- Machine learning non supervisé
- Programmation MATLAB et Python
- Conception de pipelines ML end-to-end
- Validation d'algorithmes sur données synthétiques

---

## 👨‍💻 Auteur

**Bilel BEN SAID**  
Etudiant Ingénieur en Électronique et Systèmes Embarqué


---

## 📄 Licence

Ce projet est développé à des fins pédagogiques et de démonstration de compétences.

---

## 🌟 Keywords

`#MachineLearning` `#SignalProcessing` `#AnomalyDetection` `#Python` `#MATLAB` `#IsolationForest` `#EmbeddedML` `#DataScience` `#Electronics`
