# Uole

Uole é um mecanismo resiliente para recuperação de microsserviços perante ao aumento da variância da letência do sistema. Uole é um mecanismo voltadado para recuperação de microsserviços hospedados no kubernetes.

## Pre requisitos 

### Kubernetes

É necessário estar com um cluster kubernetes ativo para que seja possível realizar a recuperação do microsserviço.

### MicroRCA

Realizar a execução do MicroRCA para capturar os microsserviços que apresentam anomalias em seu comportamento

```bash
git clone https://github.com/elastisys/MicroRCA
```

## Usage

```python
./uole.sh
```

## Validação e Testes

Para realizar a validação e os testes do mecanismo é poss

## Contributing

Pull requests are welcome. For major changes, please open an issue first
to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License

[MIT](https://choosealicense.com/licenses/mit/)

instalar kind

kind create cluster --config cluster.yaml

instalcao do istio

istioctl install --set profile=demo --dry-run

istioctl install --set profile=demo --skip-confirmation

git clone https://github.com/microservices-demo/microservices-demo

Fazer o que esta nessa issue

https://github.com/microservices-demo/microservices-demo/issues/900

kubectl apply -f microservices-demo/deploy/kubernetes/manifests-policy
kubectl label namespace sock-shop istio-injection=enabled
kubectl apply -f microservices-demo/deploy/kubernetes/manifests-monitoring
kubectl apply -f microservices-demo/deploy/kubernetes/manifests-jaeger
kubectl apply -f microservices-demo/deploy/kubernetes/manifests
kubectl apply -f microservices-demo/deploy/kubernetes/autoscaling

kubectl apply -f microservices-demo/deploy/kubernetes/manifests-monitoring/23-grafana-import-dash-batch.yaml
kubectl apply -f microservices-demo/deploy/kubernetes/manifests-loadtest

O manifesto loadtest é reponsável por realizar a carga de trabalho referentes ao teste

git clone https://github.com/elastisys/MicroRCA



