# standart output logging
$ kubectl apply -f https://raw.githubusercontent.com/vplauzon/aks/master/custom-logs/standard-output.yaml

$ kubectl get pods

$ kubectl logs standard-output-pod

# on Azure Monitor create log analytics query

ContainerLog
| project Name, LogEntry, LogEntrySource

# Ingesting a single file via a sidecar

$ kubectl apply -f https://raw.githubusercontent.com/vplauzon/aks/master/custom-logs/single-file-to-output.yaml

$ kubectl logs single-file-to-output-pod log-display


# Ingesting multiple files via a sidecar

$ kubectl apply -f https://raw.githubusercontent.com/vplauzon/aks/master/custom-logs/multiple-file-to-output.yaml

$ kubectl logs multiple-file-to-output-pod log-display

# Ingesting multiple files on the host


