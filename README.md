# Zizmor GitHub Actions

Official GitHub Actions for working with [zizmor](https://woodruffw.github.io/zizmor/) in your workflows.

## Available Actions

### setup

Installs and configures zizmor with caching support:

```yaml
- uses: gsong/gha-zizmor-actions/setup@v1
  with:
    # Optional: disable cargo caching
    cache: true
```

### run

Runs zizmor with standard configuration:

```yaml
- uses: gsong/gha-zizmor-actions/run@v1
  with:
    # Required: GitHub token for authentication
    github-token: ${{ secrets.GITHUB_TOKEN }}
    # Optional: Directory to run zizmor in
    working-directory: "."
```

## Complete Example

```yaml
name: Zizmor Check
on: [push, pull_request]

jobs:
  check:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4

      - uses: gsong/gha-zizmor-actions/setup@v1

      - uses: gsong/gha-zizmor-actions/run@v1
        with:
          github-token: ${{ secrets.GITHUB_TOKEN }}
```

## Versioning

This repository follows semantic versioning:

- Major version tags (e.g., `v1`, `v2`) point to the latest minor/patch release in that major version
- Specific versions (e.g., `v1.2.3`) are also available
- Beta features are released under the `beta` tag

We recommend using major version tags (e.g., `@v1`) to automatically receive compatible updates.

### Version Compatibility

| Action Version | Minimum Zizmor Version |
| -------------- | ---------------------- |
| v1.x.x         | 0.5.0                  |

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for development guidelines.

## License

MIT License - see [LICENSE](LICENSE) for details.
