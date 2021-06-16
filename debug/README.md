# Start the cluster

`minikube start`

## verify the cluster

`kubectl get nodes`


# Let's deploy our first Pod.

In kubernetes one can use declarative configuration to manage kubernetes resources, you usually use yaml files.

go and check `./k8s/pod.yaml` and see if you are able to understand everything listed.

Run `kubectl apply -f ./k8s/pod.yaml` in order to deploy our first Pod.

---

# Failing deployments.

## Exercise 1

- **apply** `./k8s/deploy-fix.yaml`
- **get** the status of the deployment.
- **describe** the status of the deployment.

> Hint: you can use `kubectl <ACTION> -f file.yaml` to make things easier.

**Fix the deployment if you are able to.**

Do you know whats the problem?
Are the events listed enought to know the problem?


## Exercise 2

Now we are going to experience with an application that "runs" but it fails *gracefully*.

- **apply** `./k8s/deploy-debug.yaml`
- **get** the status of the deployment.
- **describe** the status of the deployment.
- **logs** get the logs of the deployment to see why it is failing.


**Fix the deployment if you are able to.**

Do you know whats the problem?
Are the events listed enought to know the problem?

## Exercise 3

Now we are going to work with an application that "runs" and fails *fatally*.

- **apply** `./k8s/deploy-debug-fatal.yaml`
- **get** the status of the deployment.
- **describe** the status of the deployment.
- **logs** get the logs of the deployment to see why it is failing.

**Fix the deployment if you are able to.**

Do you know whats the problem?
Are the events listed enought to know the problem?
