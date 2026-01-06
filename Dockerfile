FROM python:3.9-slim

# Définir le répertoire de travail
WORKDIR /app

# Copier les dépendances
COPY requirements.txt .

# Installer les dépendances Python
RUN pip install -- no-cache-dir -r requirements.txt

# Copier le reste des fichiers du projet
COPY . .

# Commande pour lancer l'application
CMD ["python", "app/main.py"]