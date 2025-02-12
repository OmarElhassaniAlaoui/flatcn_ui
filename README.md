# flatcn_ui

A modular and customizable UI component library for Flutter, inspired by Shadcn UI.

## Features

- **Modular Components**: Import only the components you need.
- **Customizable**: Easily customize components to fit your design system.
- **Lightweight**: Optimized for performance and minimal bundle size.

## Installation

To install the `flatcn_ui` CLI tool, add it as a dev dependency in your `pubspec.yaml` file:

```yaml
dev_dependencies:
  flatcn_ui: ^1.0.0
```

Then, run:

```bash
dart pub get
```

## Usage

### Initialize the Project

Run the following command to initialize `flatcn_ui` in your project:

```bash
dart run flatcn_ui init
```

Options:
- `--theme`: Specify the theme (e.g., `material`, `custom`).
- `--path`: Specify the directory for components (default: `lib/flatcn_ui`).

### Add a Component

To add a component, use the `add` command:

```bash
dart run flatcn_ui add <component_name>
```

Options:
- `--variant`: Specify the component variant (e.g., `primary`, `secondary`).
- `--path`: Override the default component path.

### List Available Components

To list all available components, use the `list` command:

```bash
dart run flatcn_ui list
```

### Update Components

To update components to the latest version, use the `update` command:

```bash
dart run flatcn_ui update
```

## Configuration File

The `.flatcn_ui_config` file stores the project configuration. It is created when you run `flatcn_ui init`.

Example:

```json
{
  "theme": "material",
  "path": "lib/flatcn_ui"
}
```

## Troubleshooting

### Missing Configuration File

If you see the error `flatcn_ui is not initialized`, run `flatcn_ui init` to create the configuration file.

### Component Not Found

If a component is not found, ensure the component name is correct and the package is up to date.

## Contributing

Contributions are welcome! Please read the [contribution guidelines](CONTRIBUTING.md) before submitting a pull request.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

# Changelog

## [1.0.0] - 2023-10-01

### Added

- Initial release of `flatcn_ui` CLI tool.
- Commands: `init`, `add`, `list`, `update`.
- Modular components: Button, Text Input, Card, List.

---

