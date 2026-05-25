Automated vs Manual Sync

Automated Sync
syncPolicy:
  automated:
    prune: true
    selfHeal: true

How it works
ArgoCD automatically syncs changes from Git to the cluster
Drift is corrected automatically
No human approval required
Best use cases
Development environments
Staging
Fast CI/CD pipelines
Rapid iteration teams

Benefits
Fully automated deployments
Faster delivery
Continuous reconciliation
Self-healing
Risks
Bad commits deploy automatically
Less human control

Manual Sync
syncPolicy: {}

How it works
ArgoCD detects changes but does NOT apply them automatically
A human must approve syncs
Best use cases
Production environments
Regulated systems
Critical workloads

Benefits
Safer deployments
Human review before rollout
Better change control

Drawbacks
Slower deployments
More operational overhead

Automated vs Manual Sync Comparison
Feature	                   Automated Sync	             Manual Sync
Deployment Trigger	       Automatic	                 Human approval
Drift Correction	       Automatic	                 Manual
Speed	                   Fast	                         Controlled
Risk	                   Higher	                     Lower
Best Environment	       Dev/Staging	                 Production
Human Approval	           Not required	                 Required


Sync Waves Table — AI-BankApp Deployment Order
Sync Wave	             Resources	                         Purpose
-2	                     Namespace, StorageClass	         Core infrastructure
-1	                     PVCs, ConfigMap, Secret	         Storage and configuration
0	                     MySQL, Ollama, Services	         Dependencies and networking
1	                     BankApp Deployment	                 Main application
2	                     HPA	                             Autoscaling


ArgoCD Rollback vs git revert

ArgoCD Rollback
Command:-
argocd app rollback bankapp 1

What it does
Restores the cluster to a previous synced revision
Uses ArgoCD deployment history
Important Limitation
Does NOT modify Git history
Temporary operational fix only

Git Revert
Command
git revert HEAD
git push

What it does
Creates a new commit reversing previous changes
Updates Git history properly
ArgoCD syncs the revert automatically

Comparison
Feature	                      ArgoCD Rollback	                git revert
Changes Cluster	              Yes	                            Yes
Changes Git	                  No	                            Yes
Temporary Fix	              Yes	                            No
GitOps Correct	              No	                            Yes
Audit Trail	                  Partial	                        Complete


Correct GitOps Approach
The proper GitOps rollback method is:
git revert → push → ArgoCD syncs automatically

Git must remain the single source of truth.


How App of Apps Works
The parent application:
watches the argocd-apps/ directory
discovers child Applications
creates and manages them automatically

Benefits:
centralized management
scalable GitOps architecture
easier onboarding of new applications
Screenshot — Multiple Applications in ArgoCD


Take a screenshot showing:
root-app
bankapp
monitoring
envoy-gateway

RBAC Explanation
Permission	Result
get	Can view applications
sync	Can deploy updates
rollback	Denied for junior developers

How Projects + RBAC Improve Safety
Problem	Solution
One team affecting another	Namespace restrictions
Unauthorized rollback	RBAC deny policies
Deploying random repos	Repository restrictions
Cluster-wide admin access	Least privilege access