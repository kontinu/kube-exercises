Make sure you are in context `minikube` and that it is started.

`minikube start`

`kubectl config use-context minikube`


Create namespace: `labs` (labs.yaml) and store it here.

# Exercises

1. Lab1 - YAML

Let's practice! create all YAML assets inside `lab1/` folder

   Create a `pod` with the following constraints:

   - Pod name: `hello`
   - Deploy pod in a `labs` namespace
   - Add `3 labels` of your own
   - Use this container image: `gcr.io/google-samples/node-hello:1.0`
   - Set the container with `8080 port`
   - Check hello is running successfully
   - do a `kubectl describe` on the Pod and store the output in a file called lab1/lab1.output



2. Lab2 - Deployment YAML

Store everything in the lab2/ folder

   - Create a deployment called `whoami` in the namespace `labs`
   - Use the `jwilder/whoami` image
   - 3 Replicas
   - Set the container with `8000 port`

3. Lab3 - Services YAML

Create all 3 flavors of services and map them to your whoami pods.

    - Create a Service 'whoami-cip' ClusterIP and map `8000:8000` ports
    - Create a Service 'whoami-np' NodePort and map `8002:8000`.
    - Create a service of type LoadBalancer 'whoami-lb' and map `8080:8000` ports.

store everything in lab3/ folder.


4. Lab4 - persistence.

