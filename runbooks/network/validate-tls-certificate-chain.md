---
id: validate-tls-certificate-chain
title: Validate TLS certificate chain
status: draft
domain: ssl-tls
failure_mode: certificate-chain
severity: sev2
environment: network
signals:
  - tls-handshake-error
  - certificate-validation-error
tags:
  - tls
  - certificate
  - validation
  - network
related:
  - ../../knowledge/failure-patterns/ssl-certificate-chain-failure.md
---

# Validate TLS Certificate Chain

## Purpose

Validate whether a TLS endpoint presents a complete and trusted certificate chain.

## Preconditions

- Use a sanitized endpoint in documentation.
- Do not commit private certificates, keys, or internal hostnames.
- Confirm whether the failing client uses Windows, Linux, Java, Node.js, browser, or custom trust stores.

## Investigation Steps

1. Capture the exact client error.
2. Identify the hostname, port, and SNI value used by the failing client.
3. Compare certificate details from a browser, command-line client, and application runtime if available.
4. Check expiration, SAN coverage, issuer, and intermediate chain.
5. Confirm whether TLS inspection, proxying, or load balancing is in the path.

## Evidence to Record

- Sanitized endpoint name.
- Certificate issuer and expiration date.
- Missing or mismatched chain element.
- Client runtime and trust-store source.
- Remediation owner.

## Validation

- The original failing client succeeds with certificate validation enabled.
- Monitoring recovers without disabling TLS validation.
- Certificate rotation or trust-store update is documented.

