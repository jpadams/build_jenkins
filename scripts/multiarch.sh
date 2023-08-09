# Build multiarch Jenkins agents with Dagger and Docker
# and multiarch Jenkins controllers Docker (cloud) plugin and BlueOcean

# Create builder for multi-arch builds
# docker buildx rm mybuilder
# docker buildx create --name mybuilder --use

# Use with agent Dockerfile
#DAG_VER=$(curl -sL https://api.github.com/repos/dagger/dagger/releases/latest | jq -r ".tag_name")
#docker buildx build --builder mybuilder --platform linux/arm64,linux/amd64 -t jeremyatdockerhub/jenkins-agent:$DAG_VER --push .

# Use with controller Dockerfile
#docker buildx build --builder mybuilder --platform linux/arm64,linux/amd64 -t jeremyatdockerhub/jenkins-blueocean-docker:2.418-jdk11 --push .
