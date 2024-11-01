# Contributing to Zizmor GitHub Actions

Thank you for your interest in contributing to Zizmor GitHub Actions! This document provides guidelines and workflows for contributing.

## Development Prerequisites

- Rust toolchain (for testing zizmor integration)
- Basic understanding of GitHub Actions workflow syntax

## Getting Started

1. Fork the repository
2. Create a feature branch

## Making Changes

### Modifying Existing Actions

1. Update the action code in the appropriate directory (`setup/` or `run/`)
2. Update tests in `.github/workflows/`
3. Update documentation if needed

### Adding New Features

1. Create an issue describing the feature
2. Discuss implementation approach
3. Implement changes
4. Add tests
5. Update documentation

## Testing

All changes must include tests. Our test suite includes:

- Action syntax validation
- Script linting
- Integration tests with different configurations
- Cache verification
- Version compatibility checks

## Pull Request Process

1. Update documentation:

   - README.md if adding features
   - Action-specific README.md files
   - Code comments for complex logic

2. Ensure tests pass:

   - All GitHub Actions workflows
   - Local linting checks
   - Integration tests

3. Follow versioning rules:

   - Breaking changes: major version bump
   - New features: minor version bump
   - Bug fixes: patch version bump

4. Create detailed pull request:
   - Reference related issues
   - Describe changes and motivation
   - Include test results
   - List breaking changes if any

## Release Process

1. Update version numbers:

   - action.yml files
   - Documentation references
   - Compatibility tables

2. Create release notes:

   - List all changes
   - Document breaking changes
   - Update compatibility information

3. Tag release:
   - Use semantic versioning
   - Update major version tag
   - Push tags to repository

## Code Style

- Use consistent naming:

  - Kebab-case for files and directories
  - Clear, descriptive action names
  - Meaningful variable names

- Shell scripts:

  - Include shellcheck directives
  - Use safe shell options (`set -euo pipefail`)
  - Document complex commands

- YAML:
  - Use 2-space indentation
  - Include comments for clarity
  - Keep lines under 80 characters

## Questions?

- Open an issue for feature discussions
- Use pull request comments for implementation questions
- Check existing issues and discussions

## License

By contributing, you agree that your contributions will be licensed under the MIT License.
