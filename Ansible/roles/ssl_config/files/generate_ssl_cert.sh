#!/bin/bash

# Génération du certificat autosigné
openssl req -new -newkey rsa:4096 -days 365 -nodes -x509 \
    -subj "/C=FR/ST=State/L=City/O=Organization/CN={{ server_name }}" \
    -keyout "{{ ssl_key_file }}" \
    -out "{{ ssl_cert_file }}"
