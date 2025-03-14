flutter build web
docker build --tag ghcr.io/artbok/cyberbara_team_case:latest .
docker push ghcr.io/artbok/cyberbara_team_case:latest
docker -it --name cyberbara_team_case run ghcr.io/artbok/cyberbara_team_case:latest

docker compose pull
docker compose up -d
