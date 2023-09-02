# Kubernetes Cluster Setup and Application Deployment

This guide walks you through the process of setting up a Kubernetes cluster, deploying Helm charts for monitoring using Prometheus, Grafana, and Loki, and creating a custom Helm chart to deploy a small PHP application.

## Step 1: Deploy a Kubernetes Cluster

### Prerequisites
- [Terraform](https://www.terraform.io/downloads.html)
- [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli)

1. Provision an Azure Kubernetes Service (AKS) cluster using Terraform:
   
   ```bash
   cd terraform
   terraform init
   terraform validate
   terraform fmt -recursive
   terraform apply
   ```
   Wait for the AKS cluster to be provisioned successfully.

## Step 2: Deploy Helm Charts for Monitoring

1. Deploy the kube-prometheus-stack Helm chart for monitoring:

    ```bash
    helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
    helm install my-kube-prometheus-stack prometheus-community/kube-prometheus-stack --version 50.0.0
    ```
2. Verify that Prometheus, Grafana, and related components are running:
    ```bash
    kubectl get pods -n monitoring
    ```
3. Port forward the svc and Access Prometheus and Grafana dashboards:

    ```bash
    kubectl port-forward -n monitoring svc/kube-prometheus-stack-grafana 3000:80
    ```
Access Prometheus and Grafana dashboards:

- Prometheus: http://prometheus-service-ip:9090
- Grafana: http://grafana-service-ip:3000

## Step 3: Create a Custom Helm Chart for PHP Application

### Prerequisites
Helm

1. Clone this repository to your local machine:

    ```bash
    git clone <repository-url>
    cd <repository-directory>
    ```
2. build and push your PHP application Docker image:
        ```bash
        docker build -t usamahzaheer/php-app:tagname
        docker push usamahzaheer/php-app:tagname
        ```
    Replace <repository-url> and <repository-directory> with specific repository details.
3. Create and deploy a custom Helm chart for your PHP application:
        ```bash
        helm create my-php-app
        helm upgrade --install my-php-app ./my-php-app
        ```
    Configuration
    You can customize the deployment using the Helm chart's values.yaml file. Here are some key configuration options:

    - image.repository: The Docker image repository.
    - image.tag: The Docker image tag.
    - service.type: The Kubernetes service type (LoadBalancer, ClusterIP, etc.).
    - service.port: The port exposed by the service.
4. Step 4: Access Your PHP Application
    Wait for the deployment to complete and obtain the external IP address or DNS name of the LoadBalancer service:
        ```bash
        kubectl get svc my-php-app
        ```
    Open a web browser and navigate to the external IP address or DNS name to access your PHP application.
