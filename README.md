# devops-assignment-7solutions
Assignment for DevOps Engineer-7solutions

# DevOps Pipeline for Go Application

This repository provides a DevOps pipeline for deploying a Go application using Docker, Kubernetes (GKE), ArgoCD, and GitOps practices.

 Approach & Steps:

1. Dockerfile:  
   Create a multi-stage Dockerfile to build and deploy the Go app.

2. Build & Push Docker Image:  
   Build the image and push it to Docker Hub:  
   bash
   docker build -t <your-dockerhub-username>/go-app:latest .  
   docker push <your-dockerhub-username>/go-app:latest
   

3. Kustomize Manifest:  
   Use Kustomize for flexible Kubernetes deployments.

4. GKE Cluster Setup:  
   Provision a GKE cluster using Terraform:  
   bash
   terraform init  
   terraform apply -var="project_id=<your-gcp-project-id>"
   

5. ArgoCD Deployment:  
   Deploy the app using ArgoCD with GitOps:  
   Define an ArgoCD Application YAML and apply it.

6. CI/CD Pipeline:  
   Create a GitHub Actions workflow to automate build, push, and deploy steps.


