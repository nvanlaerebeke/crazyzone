function configure {
    argocd_install_dir "$ROOT/applications/argocd/cert-manager/"
    argocd_install_dir "$ROOT/applications/argocd/home/"
    argocd_install_dir "$ROOT/applications/argocd/jenkins/"
    argocd_install_dir "$ROOT/applications/argocd/jenkins-nmd/"
    argocd_install_dir "$ROOT/applications/argocd/monitoring/"
    argocd_install_dir "$ROOT/applications/argocd/operations/"
    argocd_install_dir "$ROOT/applications/argocd/power/"
    argocd_install_dir "$ROOT/applications/argocd/registry/"
#    argocd_install_dir "$ROOT/applications/argocd/nomadesk/"
}
