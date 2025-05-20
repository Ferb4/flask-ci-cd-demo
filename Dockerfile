# Étape 1 : Utiliser une image légère avec Python 3.10
FROM python:3.10-slim

# Étape 2 : Définir le dossier de travail dans le conteneur
WORKDIR /app

# Étape 3 : Copier les dépendances et les installer
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Étape 4 : Copier le reste des fichiers
COPY . .

# Étape 5 : Exposer le port 5000 (utilisé par Flask)
EXPOSE 5000

# Étape 6 : Démarrer l'application
CMD ["python", "app.py"]

