function configure {
    #argocd_install_application "$ROOT/applications/argocd/core/argocd.yaml"
    #argocd_install_application "$ROOT/applications/argocd/operations/reflector.yaml"

    #argocd_install_application "$ROOT/applications/argocd/backend-services/minio.yaml"
    #argocd_install_application "$ROOT/applications/argocd/backend-services/postgresql.yaml"
    #argocd_install_application "$ROOT/applications/argocd/backend-services/redis.yaml"

    #argocd_install_application "$ROOT/applications/argocd/cert-manager/cert-manager.yaml"
    #argocd_install_application "$ROOT/applications/argocd/cert-manager/cert-manager-openprovider-webhook.yaml"
    #argocd_install_application "$ROOT/applications/argocd/cert-manager/certificates.yaml"

    #argocd_install_application "$ROOT/applications/argocd/home/dashboard.yaml"
    #argocd_install_application "$ROOT/applications/argocd/home/host.yaml"
    argocd_install_application "$ROOT/applications/argocd/home/immich.yaml"
    #argocd_install_application "$ROOT/applications/argocd/home/torrent.yaml"

    #argocd_install_application "$ROOT/applications/argocd/jenkins/jenkins.yaml"

    #argocd_install_application "$ROOT/applications/argocd/monitoring/prometheus-json-exporter.yaml"
    #argocd_install_application "$ROOT/applications/argocd/monitoring/prometheus-snmp-exporter.yaml"
    #argocd_install_application "$ROOT/applications/argocd/monitoring/prometheus.yaml"

    #argocd_install_application "$ROOT/applications/argocd/operations/gitea.yaml"
    #argocd_install_application "$ROOT/applications/argocd/operations/kickstart.yaml"
    #argocd_install_application "$ROOT/applications/argocd/operations/netbox.yaml"
    #argocd_install_application "$ROOT/applications/argocd/operations/pxe.yaml"
    #argocd_install_application "$ROOT/applications/argocd/operations/wekan.yaml"
    #
    #argocd_install_application "$ROOT/applications/argocd/power/home.yaml"
    #argocd_install_application "$ROOT/applications/argocd/power/power-reader.yaml"

    #argocd_install_application "$ROOT/applications/argocd/registry/harbor.yaml"

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
}
