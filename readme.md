# 🧠 Smolagents Workshop (Windows Edition)

Ce projet contient un atelier interactif Jupyter pour découvrir **Smolagents**, la création de **tools intelligents** et l’utilisation d’agents IA capables de choisir et exécuter ces outils automatiquement.

---

## 🚀 Démarrage rapide

### 1️⃣ Créer l’environnement virtuel  
Depuis le dossier du projet :

Pour Linux :

chmod +x setup.sh
./setup.sh
source smolagents_env/bin/activate

Puis suivre les étapes pour lancer le notebook avec cet environnement

Pour windows :

setup_windows.bat

Ce script :
- crée un environnement `smolagents_env`
- installe les dépendances de `requirements.txt`
- enregistre le kernel Jupyter `Python (smolagents)`

---

### 2️⃣ Activer l’environnement  

.\smolagents_env\Scripts\Activate.ps1

Si PowerShell bloque l’exécution, autorise temporairement :

Set-ExecutionPolicy -Scope Process RemoteSigned

---

### 3️⃣ Lancer Jupyter Notebook  

jupyter notebook  

Puis ouvre **smolagents.ipynb**  
➡️ Sélectionne le kernel **Python (smolagents)** si demandé.

---

### 4️⃣ Configurer ton token Hugging Face  

from huggingface_hub import login  
login()  

Colle ton **HF token** (accessible depuis ton compte Hugging Face → Settings → Access Tokens).

---

### 5️⃣ Explorer les sections

- **Section 2** → ton premier agent (calculatrice)  
- **Section 3** → comprendre la structure d’un tool + démo IA router  
- **Sections suivantes** → exercices pratiques pour créer tes propres tools

---

## 📦 Dépendances principales

Les packages sont listés dans `requirements.txt` :
- smolagents  
- huggingface_hub  
- gradio  
- jupyter  
- ipykernel  

---

## 🧹 Pour quitter l’environnement  

deactivate

---

## 💡 Astuce bonus

Tu peux changer le modèle LLM utilisé par l’agent dans le notebook, par exemple :  
model_id = "mistralai/Mistral-7B-Instruct-v0.3"

---

### ✨ Auteur  
Projet éducatif basé sur **Smolagents** – destiné à l’apprentissage des agents LLM et de la création de tools intelligents.
