# JAX Core Monorepo

This repository serves as a monorepo containing multiple JAX-related projects from the `jax-ml` organization. All repositories have been integrated with their `.git` directories removed to create a unified codebase.

## Repository Structure

The `repos/` directory contains the following integrated repositories:

### Core Libraries
- **jax/** - The main JAX library for machine learning research
- **ml_dtypes/** - NumPy dtype extensions used in machine learning
- **jax-triton/** - Integration between JAX and Triton

### Specialized Tools
- **jax-tpu-embedding/** - TPU embedding support for JAX
- **jax-ai-stack/** - AI stack components for JAX
- **bonsai/** - JAX-based decision tree library
- **oryx/** - Probabilistic programming in JAX

### Examples and Documentation
- **jax-llm-examples/** - Large Language Model examples using JAX
- **scaling-book/** - Resources for scaling ML models
- **coix/** - Additional JAX utilities
- **bayeux/** - Bayesian inference tools

### Infrastructure
- **australis/** - Infrastructure and tooling
- **.allstar/** - Security and compliance tooling
- **.github/** - Shared GitHub configurations

## Getting Started

This monorepo was set up using the `setup_monorepo.sh` script, which:
1. Clones all specified repositories from the `jax-ml` organization
2. Removes their `.git` directories to integrate them into the monorepo
3. Organizes them under the `repos/` directory

## Setup Instructions

To recreate this monorepo structure:

```bash
./setup_monorepo.sh
```

## Repository Management

Each subdirectory in `repos/` contains the full source code from the original repository, allowing you to:
- Browse and modify code from multiple JAX projects in one place
- Create cross-project integrations and dependencies
- Maintain a unified development environment

## Original Sources

All repositories are sourced from the [JAX ML organization](https://github.com/jax-ml) on GitHub.

## Contributing

When making changes to individual projects, consider the impact on the overall monorepo structure and ensure compatibility across integrated components.