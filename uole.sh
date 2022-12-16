while read line; do
pod_name=$line

deployment_name=$(kubectl get pod $pod_name -n sock-shop -o custom-columns=":metadata.labels.name")
echo $deployment_name

current_replicas=$(kubectl get deployment $deployment_name -n sock-shop -o=jsonpath='{.status.replicas}')
echo $current_replicas

scale_replica=$(($current_replicas+1))
echo $scale_replica

echo "scalling"
resource_name="deployment/${deployment_name}"
resource_name=$(echo $resource_name | sed -e 's/ //g')
kubectl scale --replicas=$scale_replica deployment $deployment_name -n sock-shop
kubectl rollout status $resource_name -n sock-shop --watch
echo "scalled"

echo "remove pod"
kubectl delete pod $pod_name -n sock-shop
echo "pod removed"

echo "down scalling"
kubectl scale --replicas=$current_replicas deployment $deployment_name -n sock-shop
kubectl rollout status $resource_name -n sock-shop --watch
echo "down scalled"
done < root-case