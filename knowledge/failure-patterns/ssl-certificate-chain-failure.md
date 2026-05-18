---
id: ssl-certificate-chain-failure
title: SSL certificate chain failure
status: draft
domain: ssl-tls
failure_mode: certificate-chain
severity: sev2
environment: network
signals:
  - tls-handshake-error
  - certificate-validation-error
  - api-client-failure
tags:
  - ssl
  - tls
  - certificate
  - trust-chain
  - api-integration
related:
  - ../../runbooks/network/validate-tls-certificate-chain.md
  - ../../references/severity-classification.md
---

# SSL Certificate Chain Failure

## Pattern Summary

Clients fail to establish TLS connections because the presented server certificate cannot be validated against a trusted root or intermediate certificate chain.

## Common Symptoms

- API clients report certificate validation or handshake errors.
- Browser access may work while service clients fail due to different trust stores.
- Monitoring checks show endpoint failure even when the service process is healthy.
- Errors appear after certificate rotation, proxy changes, load balancer updates, or intermediate CA expiration.

## Fast Evidence

- Endpoint hostname and port, sanitized if needed.
- Certificate subject, issuer, expiration, and SAN values.
- Client runtime trust store and operating system.
- Recent certificate, proxy, firewall, or load balancer changes.
- Exact validation error from the failing client.

## Likely Root Cause Range

- Missing intermediate certificate on the server or load balancer.
- Expired intermediate or leaf certificate.
- Hostname mismatch in SAN values.
- Client trust store missing the issuing CA.
- TLS inspection proxy presenting an unexpected certificate.

## Misleading Signals

- A successful browser test does not prove application clients will trust the chain.
- A valid leaf certificate does not prove the full chain is complete.
- Service health checks may stay green if they do not validate TLS.

## Safe Remediation

- Rebuild the full certificate chain on the terminating endpoint.
- Validate SAN coverage before replacing the certificate.
- Update the client trust store only through approved certificate-management processes.
- Avoid disabling certificate validation except in isolated lab reproduction.

## Validation

- Confirm the client can complete TLS handshake with validation enabled.
- Confirm monitoring checks recover without suppressing TLS verification.
- Document certificate issuer, expiration date, and rotation owner.

