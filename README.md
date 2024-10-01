## Projet à but uniquement éducatif

## Installer Terraform

https://developer.hashicorp.com/terraform/install

## Copier le répertoire en local

*git clone https://github.com/ryersacl/ManageSpotify/*
*cd ManageSpotify/*

## Créer une application API sur Spotify Developper

Sur https://developer.spotify.com/dashboard -> Create App
Donner nom + description
Redirect URIs = http://localhost:27228/spotify_callback

## Créer des variables

Créer un fichier .env dans le répertoire git cloné:

*SPOTIFY_CLIENT_ID=<your_spotify_client_id>*
*SPOTIFY_CLIENT_SECRET=<your_spotify_client_secret>*

## Récupérer sa clef API

Lancer un conteneur Docker dans le répertoire git:

*docker run --rm -it -p 27228:27228 --env-file .env ghcr.io/conradludgate/spotify-auth-proxy*

Cliquer sur le lien Auth URL et créer un fichier "terraform.tfvars" contenant :

*api_key = "your_spotify_api_key_return_in_your_terminal_after_passing_the_auth_url"*

## Initialiser Terraform

*terraform init*

## Documentation pour le provider

https://registry.terraform.io/providers/conradludgate/spotify/latest/docs

## Push de la configuration sur Spotify

*terraform apply -auto-approve*
