
set -e
set -u
set -x

echo "Verifying and building nginx image..."
docker build -t nginx-for-connection-test nginx
echo "Verifying and building nginx image... Ok"

echo "Verifying and building loader image..."
docker build -t loader-for-connection-test loader
echo "Verifying and building loader image... Ok"

echo "Launching docker compose..."
docker-compose -p nginx-for-connection -f docker-compose.yaml up
