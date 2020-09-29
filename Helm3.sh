#add repository to your Helm
helm repo add stable https://kubernetes-charts.storage.googleapis.com/

#update your repo
helm repo update

#search helm charts in repo
helm search repo wordpress

#pull helm chart from repo
helm pull stable/wordpress

#pull helm chart from repo as untar
helm pull stable/wordpress --untar

#create your own chart
helm create chart-name



