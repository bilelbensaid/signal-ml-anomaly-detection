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

## 📁 Structure du projet

```
signal-anomaly-detection/
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
```

---

## 🔊 Génération du signal synthétique

Le signal de test comprend :
- **Signal de base** : composante temporelle synthétique
- **Bruit AWGN** : bruit blanc gaussien additif paramétrable
- **Anomalies** : pics impulsionnels d'amplitude élevée simulant des événements rares

Cette approche permet de **contrôler précisément** le rapport signal/bruit et d'évaluer la robustesse de l'algorithme.

---

## 🚀 Installation et utilisation

### Prérequis

- **MATLAB** R2020a ou supérieur
- **Python** 3.8+
- **pip** pour la gestion des packages Python

### Installation

1. **Cloner le repository**
```bash
git clone https://github.com/votre-username/signal-anomaly-detection.git
cd signal-anomaly-detection
```

2. **Installer les dépendances Python**
```bash
pip install -r requirements.txt
```

### Utilisation

#### Étape 1 : Génération du signal (MATLAB)

```matlab
% Lancer MATLAB et exécuter
cd matlab
generate_signal
```

Ce script génère :
- Un signal temporel avec bruit AWGN
- Des pics impulsionnels (anomalies)
- Sauvegarde dans `data/raw/signal.csv`

**Paramètres ajustables** :
- `noise_level` : niveau de bruit (SNR)
- `anomaly_rate` : fréquence des anomalies
- `signal_length` : durée du signal

#### Étape 2 : Extraction de features (Python)

```bash
cd python
python feature_extraction.py
```

Extrait les caractéristiques temporelles :
- Moyenne et écart-type sur fenêtres glissantes
- Variance locale
- Dérivée et gradient

#### Étape 3 : Détection d'anomalies (Python)

```bash
python anomaly_detection.py
```

Applique l'algorithme Isolation Forest et génère :
- Liste des anomalies détectées
- Métriques de performance
- Graphiques de visualisation

#### Étape 4 : Visualisation des résultats

```bash
python visualization.py
```

Affiche :
- Signal original avec anomalies marquées
- Zones détectées par l'algorithme
- Matrice de confusion (si ground truth disponible)

---

### ⚙️ Configuration

Fichier `config.py` pour ajuster les paramètres :

```python
# Paramètres du modèle
CONTAMINATION = 0.05  # Pourcentage d'anomalies attendues
N_ESTIMATORS = 100    # Nombre d'arbres Isolation Forest
WINDOW_SIZE = 50      # Taille fenêtre glissante

# Paramètres du signal
SAMPLING_RATE = 1000  # Hz
```

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
| **Visualisation** | Matplotlib, Seaborn |
| **Paradigme** | Machine Learning non supervisé |

### Dépendances Python

```txt
numpy>=1.21.0
pandas>=1.3.0
scikit-learn>=1.0.0
matplotlib>=3.4.0
seaborn>=0.11.0
scipy>=1.7.0
```

---

## 📊 Exemple de résultats

```
=== Rapport de détection ===
Anomalies détectées : 47/50
Taux de détection : 94%
Faux positifs : 3
Temps d'exécution : 0.82s
```

Le modèle permet de :
- Détecter automatiquement les pics impulsionnels même en présence de bruit
- Réduire les faux positifs comparé aux méthodes à seuil fixe
- Adapter la sensibilité via le paramètre de contamination

---

## 🧪 Tests et validation

Pour tester avec différents niveaux de bruit :

```bash
python run_experiments.py --noise-levels 0.1,0.5,1.0,2.0
```

Pour comparer avec d'autres algorithmes :

```bash
python compare_algorithms.py --methods isolation_forest,lof,ocsvm
```

---

## 🚀 Perspectives d'évolution

- [ ] Extension à des signaux réels (capteurs industriels, bio-signaux)
- [ ] Implémentation temps réel pour systèmes embarqués
- [ ] Comparaison avec d'autres algorithmes (LOF, One-Class SVM, Autoencoders)
- [ ] Traitement de bruit coloré et non-stationnaire
- [ ] Optimisation pour déploiement sur microcontrôleurs (edge ML)
- [ ] Interface web interactive pour démonstration

---

## 💡 Compétences démontrées

- Traitement du signal numérique
- Machine learning non supervisé
- Programmation MATLAB et Python
- Conception de pipelines ML end-to-end
- Validation d'algorithmes sur données synthétiques

---

## 🤝 Contribution

Les contributions sont les bienvenues ! N'hésitez pas à :
1. Fork le projet
2. Créer une branche (`git checkout -b feature/amelioration`)
3. Commit vos changements (`git commit -m 'Ajout nouvelle feature'`)
4. Push (`git push origin feature/amelioration`)
5. Ouvrir une Pull Request

---

## 👨‍💻 Auteur

**Bilel BEN SAID**  
Etudiant Ingénieur en Électronique et Machine Learning Embarqué


---

## 📄 Licence

Ce projet est développé à des fins pédagogiques et de démonstration de compétences.

---

## 🌟 Keywords

`#MachineLearning` `#SignalProcessing` `#AnomalyDetection` `#Python` `#MATLAB` `#IsolationForest` `#EmbeddedML` `#DataScience` `#Electronics` `#PredictiveMaintenance`
