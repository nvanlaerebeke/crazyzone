function configure {
    #argocd_install_dir "$ROOT/applications/argocd/backend-services/"
    #argocd_install_dir "$ROOT/applications/argocd/cert-manager/"
    #argocd_install_dir "$ROOT/applications/argocd/home/"
    #argocd_install_dir "$ROOT/applications/argocd/jenkins/"
    #argocd_install_dir "$ROOT/applications/argocd/minio/"
    #argocd_install_dir "$ROOT/applications/argocd/monitoring/"
    #argocd_install_dir "$ROOT/applications/argocd/operations/"
    #argocd_install_dir "$ROOT/applications/argocd/power/"
    #argocd_install_dir "$ROOT/applications/argocd/registry/"
    #argocd_install_dir "$ROOT/applications/argocd/rancher/"
    #argocd_install_dir "$ROOT/applications/argocd/unifi/"

    argocd_install_application "$ROOT/applications/argocd/home/torrent.yaml"
}
