nohup vsock-proxy 8001 api.openai.com 443 \
  --config vsock/vsock_proxy_openai.yaml &> vsock_proxy_openai.log &
nohup vsock-proxy 8002 google.serper.dev 443 \
  --config vsock/vsock_proxy_serper.yaml &> vsock_proxy_serper.log &
nohup vsock-proxy 8003 testnet.galadriel.com 443 \
  --config vsock/vsock_proxy_galadriel.yaml &> vsock_proxy_galadriel.log &
nohup vsock-proxy 8004 oaidalleapiprodscus.blob.core.windows.net 443 \
  --config vsock/vsock_proxy_windows.yaml &> vsock_proxy_windows.log &
nohup vsock-proxy 8005 storage.googleapis.com 443 \
  --config vsock/vsock_proxy_google_storage.yaml &> vsock_proxy_google_storage.log &
nohup vsock-proxy 8006 oauth2.googleapis.com 443 \
  --config vsock/vsock_proxy_google_oauth2.yaml &> vsock_proxy_google_oauth2.log &
nohup vsock-proxy 8007 exec.bearly.ai 443 \
  --config vsock/vsock_proxy_bearly.yaml &> vsock_proxy_bearly.log &
