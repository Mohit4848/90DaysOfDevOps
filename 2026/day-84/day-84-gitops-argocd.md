What is GitOps?

GitOps is a deployment methodology where:

Git becomes the single source of truth
Infrastructure and application configurations are stored declaratively in Git
An operator (ArgoCD) continuously watches Git and reconciles the cluster state

If someone changes resources manually inside the cluster:

ArgoCD detects the drift
Reverts the changes automatically
Restores the state defined in Git


GitOps Workflow

Developer pushes code to GitHub
        ↓
CI pipeline builds image and updates manifests
        ↓
Git repository changes
        ↓
ArgoCD detects new commit
        ↓
ArgoCD syncs Kubernetes cluster
        ↓
Cluster matches Git automatically

GitOps vs Traditional CI/CD
Aspect	                      Traditional CI/CD	                       GitOps
Deployment Trigger	          CI pipeline runs kubectl apply	       Git commit triggers sync
Source of Truth	              CI scripts	                           Git repository
Drift Detection	None	Continuous reconciliation
Rollback	Manual redeploy	git revert
Audit Trail	Pipeline logs	Git history
Security	CI has cluster access	Only ArgoCD has cluster access
Access Model	Push-based	Pull-based