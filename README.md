# Dev Container Template for COBOL

This is a template for creating a dev container for COBOL development.

## Description
This template provides a development environment for COBOL using Dev Container functionality. It includes GnuCOBOL compiler and necessary tools for COBOL development.

## Demo

## Features
- GnuCOBOL compiler
- Development Container support
- VS Code integration
- Docker based environment

## Requirement
- Docker Engine
- VS Code
- Dev Container extension for VS Code

## Usage
1. Clone this repository
2. Open in VS Code
3. Click "Reopen in Container" when prompted

## Installation

1. Create `.devcontainer` directory:
```shell
mkdir -p .devcontainer
```

2. Create the following files in `.devcontainer`:

### Dockerfile
Container definition that sets up the COBOL development environment:
- Uses Ubuntu 22.04 slim as the base image
- Multi-stage build to minimize image size
- Installs GnuCOBOL compiler and required libraries
- Includes essential development tools (git, curl)
- Optimized to reduce container size by only including necessary components

### compose.yaml
Docker Compose configuration for container orchestration:
- Builds container from local Dockerfile
- Mounts workspace directory for source code access
- Sets resource limits (memory: 1GB, CPU shares)
- Keeps container running with `sleep infinity`
- Enables init process for proper signal handling

### devcontainer.json
VS Code Dev Container configuration:
- Specifies the container name and workspace location
- Integrates with Docker Compose configuration
- Installs COBOL extension for syntax highlighting
- Configures terminal settings for better development experience
- Sets root as the remote user for development

3. VS Code will automatically detect the Dev Container configuration

## References

## Licence

Released under the [MIT license](https://gist.githubusercontent.com/shinyay/56e54ee4c0e22db8211e05e70a63247e/raw/f3ac65a05ed8c8ea70b653875ccac0c6dbc10ba1/LICENSE)

## Author

- github: <https://github.com/shinyay>
- twitter: <https://twitter.com/yanashin18618>
- mastodon: <https://mastodon.social/@yanashin>
