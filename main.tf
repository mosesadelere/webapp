terraform{
    required_providers {
        minikube = {
            source = "scott-the-programmer/minikube"
            version = "0.4.4"
        }
    }
}

provider "minikube" {
    kubernetes_version = "v1.30.0"
}

resource "minikube_cluster" "minikube_docker" {
    driver = "docker"
    cluster_name = "webapp-safe-vote"
    addons = [
        "default-storageclass",
        "stroage-provisioner"
    ]
}