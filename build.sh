set -xe

SINGBOX_VERSION=v1.2-beta8
SINGBOX_TAGS=with_wireguard,with_clash_api,with_gvisor,with_embedded_tor,with_acme

# build sing-box
git clone https://github.com/SagerNet/sing-box -b ${SINGBOX_VERSION} --depth 1
cd sing-box
export CGO_ENABLED=1

go build -trimpath -tags ${SINGBOX_TAGS} \
        -o /usr/bin/sing-box \
        -ldflags "-s -w -buildid=" \
        ./cmd/sing-box
