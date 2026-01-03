FROM ghcr.io/cloudnative-pg/postgresql:17-system-trixie

USER root

# Immich accepted VectorChord range is currently >=0.3,<0.6, so pin to 0.5.3 by default.
ARG VCHORD_VERSION=0.5.3
# BuildKit sets TARGETARCH automatically (amd64/arm64) when building multi-arch
ARG TARGETARCH

RUN set -eux; \
    apt-get update; \
    apt-get install -y --no-install-recommends ca-certificates curl; \
    case "${TARGETARCH}" in \
      amd64) DEBARCH="amd64" ;; \
      arm64) DEBARCH="arm64" ;; \
      *) echo "Unsupported TARGETARCH: ${TARGETARCH}"; exit 1 ;; \
    esac; \
    curl -fsSL -o /tmp/vchord.deb \
      "https://github.com/tensorchord/VectorChord/releases/download/${VCHORD_VERSION}/postgresql-17-vchord_${VCHORD_VERSION}-1_${DEBARCH}.deb" ; \
    apt-get install -y /tmp/vchord.deb; \
    rm -f /tmp/vchord.deb; \
    apt-get purge -y --auto-remove curl; \
    rm -rf /var/lib/apt/lists/*

# CNPG images typically run as UID 26 (postgres)
USER 26
