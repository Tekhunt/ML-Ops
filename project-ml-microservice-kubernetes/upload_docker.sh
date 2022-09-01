
#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub
#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=tekunt/flaskapp:v8

# Step 2:
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker tag  tekhunt/flaskapp:v8  tekhunt/flaskapp:v9
docker login -u tekhunt -p $password
# Step 3:
# Push image to a docker repository
docker push tekhunt/flaskapp:v9