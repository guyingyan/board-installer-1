kubectl -n kube-system patch daemonset kube-proxy --patch '{"spec": {"template": {"spec": {"tolerations": [{"key": "CriticalAddonsOnly", "operator": "Exists"}, {"key": "node-role.kubernetes.io/master", "operator": "Exists"}, {"key": "node.kubernetes.io/unschedulable", "operator": "Exists"}, {"key": "node.kubernetes.io/not-ready", "operator": "Exists"}, {"key": "node.kubernetes.io/unreachable", "operator": "Exists"}, {"key": "node.kubernetes.io/out-of-disk", "operator": "Exists"}, {"key": "node.kubernetes.io/memory-pressure", "operator": "Exists"}, {"key": "node.kubernetes.io/network-unavailable", "operator": "Exists"}]}}}}'