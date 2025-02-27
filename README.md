# COBOL Development Container Sample

This is a sample project demonstrating COBOL development using Visual Studio Code Dev Containers. The project includes a simple COBOL program that displays a welcome message and the current date.

## Prerequisites

- [Visual Studio Code](https://code.visualstudio.com/)
- [Docker](https://www.docker.com/)
- [Dev Containers Extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)

## Getting Started

1. Clone this repository:
   ```bash
   git clone https://github.com/yourusername/hello-devcontainer-with-cobol.git
   cd hello-devcontainer-with-cobol
   ```

2. Open the project in Visual Studio Code:
   ```bash
   code .
   ```

3. When prompted "Reopen in Container" by VS Code, click on it.
   - Alternatively, press `F1`, type "Dev Containers: Reopen in Container" and press Enter

4. Wait for the Dev Container to build and start. This may take a few minutes the first time.

## Building and Running the Application

Once inside the Dev Container, you can build and run the application using VS Code tasks:

### Using VS Code Command Palette (Ctrl+Shift+P or Cmd+Shift+P):
1. Build the application:
   - Open Command Palette and type "Tasks: Run Build Task" or press `Ctrl+Shift+B`

2. Run the application:
   - Open Command Palette
   - Type "Tasks: Run Task"
   - Select "run"

### Using Terminal in VS Code:
1. Build the application:
   ```bash
   make
   ```

2. Run the application:
   ```bash
   make run
   ```

3. Clean build artifacts:
   ```bash
   make clean
   ```

## Project Structure

- `src/hello.cob`: Main COBOL source file
- `Makefile`: Build configuration
- `.devcontainer/`: Dev Container configuration files
- `bin/`: Build output directory (created during build)

## Features

The sample COBOL program demonstrates:
- Basic COBOL program structure
- Date handling
- Formatted output display

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
