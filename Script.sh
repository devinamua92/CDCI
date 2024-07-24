#!/bin/bash

# Function to run tests
run_tests() {
  echo "Running tests..."
  npm test
  if [ $? -ne 0 ]; then
    echo "Tests failed."
    exit 1
  fi
  echo "Tests passed."
}

# Function to build the application
build_application() {
  echo "Building application..."
  npm run build
  if [ $? -ne 0 ]; then
    echo "Build failed."
    exit 1
  fi
  echo "Build succeeded."
}

# Function to deploy the application
deploy_application() {
  echo "Deploying application..."
  # Add your deployment commands here. Example:
  # scp -r ./build user@yourserver:/path/to/deploy
  # ssh user@yourserver 'systemctl restart yourapp'
  echo "Deployment complete."
}

# Main script
echo "Starting Continuous Deployment and Integration..."

run_tests
build_application
deploy_application

echo "CDCI process completed successfully."
