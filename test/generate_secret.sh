curl -X POST -d '{ "secret": {"name": "secretname", "algorithm": "aes", "bit_length": 256, "mode": "cbc", "payload_content_type": "application/octet-stream"}}' http://localhost:9311/v1/12345/orders
echo

