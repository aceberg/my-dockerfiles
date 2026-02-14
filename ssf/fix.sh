#!/bin/bash

set -e

# Output directories
CERT_DIR="./certs"
TRUSTED_DIR="$CERT_DIR/trusted"
mkdir -p "$TRUSTED_DIR"

# Subject information
CA_SUBJ="/C=US/ST=State/L=Locality/O=SSF_CA/OU=Org/CN=SSF Root CA"
SRV_SUBJ="/C=US/ST=State/L=Locality/O=SSF_Server/OU=Org/CN=ssf.local"

echo "Generating CA private key and certificate..."
openssl req -x509 -nodes -newkey rsa:4096 \
  -keyout "$CERT_DIR/ca.key" \
  -out "$TRUSTED_DIR/ca.crt" \
  -days 36500 `# 36500 is UNSAFE, use 3650 for safety (but you have to regenerate it more often)#`\
  -subj "$CA_SUBJ"

echo "Generating server private key and CSR..."
openssl req -newkey rsa:4096 -nodes \
  -keyout "$CERT_DIR/private.key" \
  -out "$CERT_DIR/server.csr" \
  -subj "$SRV_SUBJ"

echo "Creating x509 extension file..."
cat > "$CERT_DIR/extfile.txt" <<EOF
basicConstraints=CA:FALSE
keyUsage=nonRepudiation, digitalSignature, keyEncipherment
EOF

echo "Signing server certificate with CA..."
openssl x509 -req \
  -in "$CERT_DIR/server.csr" \
  -CA "$TRUSTED_DIR/ca.crt" \
  -CAkey "$CERT_DIR/ca.key" \
  -CAcreateserial \
  -out "$CERT_DIR/certificate.crt" \
  -days 36500 `# 36500 is UNSAFE, use 3650 for safety (but you have to regenerate it more often)#`\
  -extfile "$CERT_DIR/extfile.txt"

echo "Generating Diffie-Hellman parameters (this may take a few minutes)..."
openssl dhparam -out "$CERT_DIR/dh4096.pem" 1024
# 1024 is UNSAFE, use 4096 for safety (but generation would take much longer)

echo "Cleaning up temporary files..."
rm "$CERT_DIR/extfile.txt" "$CERT_DIR/server.csr" "$CERT_DIR/ca.key"

echo "✅ Certificate generation complete. Files are in $CERT_DIR"