# ADR-001: Terraform and Bicep Tool Selection

**Status:** Accepted

## Context
Northstar requires automated and reproducible infrastructure provisioning, standardized governance, and secure deployments across multiple Azure environments.

## Decision
Terraform will manage the primary Azure infrastructure, including networking, storage, identity, and shared services.

Bicep will manage selected Azure-native governance and diagnostic configurations.

## Why
- Terraform supports modular infrastructure, version control, and state management.
- Bicep provides native Azure Resource Manager integration.
- Both tools can be validated automatically in Azure DevOps pipelines.
- Each Azure resource will have one clearly defined Infrastructure as Code owner.

## Tradeoffs
Using two tools introduces additional validation and lifecycle management complexity.

## Alternative considered
Terraform alone would be simpler but would provide less hands-on experience with Bicep and Azure-native deployments.