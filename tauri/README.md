# Mnemonics - Memory Training Tool

A desktop application for memory training with random number generation. Built with Tauri for cross-platform support.

## Features

- Random number, emoji, and word generation
- Customizable number of rows (1-15)
- Triangle or square layout patterns
- Styled text with random fonts, colors, and emphasis
- Dark mode toggle
- Mask/unmask functionality for practice
- Guess mode with percentage tracking
- Local storage for preferences
- Cross-platform support (Windows, macOS, Linux)

## Prerequisites

Before building the application, ensure you have the following installed:

1. **Rust** (latest stable version)
   - Download from: https://rustup.rs/
   - Verify installation: `rustc --version`

2. **Node.js** (v16 or later recommended)
   - Download from: https://nodejs.org/
   - Verify installation: `node --version`

3. **Platform-specific dependencies:**

   ### Windows
   - Microsoft Visual Studio C++ Build Tools
   - WebView2 (usually pre-installed on Windows 10/11)

   ### macOS
   - Xcode Command Line Tools: `xcode-select --install`

   ### Linux (Debian/Ubuntu)
   ```bash
   sudo apt update
   sudo apt install libwebkit2gtk-4.1-dev \
     build-essential \
     curl \
     wget \
     file \
     libxdo-dev \
     libssl-dev \
     libayatana-appindicator3-dev \
     librsvg2-dev
   ```

   ### Linux (Fedora/RHEL)
   ```bash
   sudo dnf install webkit2gtk4.1-devel \
     openssl-devel \
     curl \
     wget \
     file \
     libappindicator-gtk3-devel \
     librsvg2-devel
   ```

## Installation

1. Navigate to the project directory:
   ```bash
   cd mnemonics
   ```

2. Install Node.js dependencies:
   ```bash
   npm install
   ```

## Development

To run the application in development mode:

```bash
npm run dev
```

This will start the Tauri development server and open the application window.

## Building Installers

### Build for Current Platform

To build the application for your current platform:

```bash
npm run build
```

The installers will be created in `src-tauri/target/release/bundle/`

### Platform-Specific Builds

**Windows (.exe, .msi):**
```bash
npm run build:windows
```
Output: `src-tauri/target/release/bundle/msi/` and `src-tauri/target/release/bundle/nsis/`

**macOS (.dmg, .app):**
```bash
npm run build:macos
```
Output: `src-tauri/target/release/bundle/dmg/` and `src-tauri/target/release/bundle/macos/`

**Linux (.deb, .rpm):**
```bash
npm run build:linux
```
Output: `src-tauri/target/release/bundle/deb/` and `src-tauri/target/release/bundle/rpm/`

## Installation Paths

The application will be installed to the following default directories:

- **Windows**: `C:\Program Files\Mnemonics\` or `%LOCALAPPDATA%\Programs\Mnemonics\`
- **macOS**: `/Applications/Mnemonics.app`
- **Linux**: `/usr/bin/mnemonics` (binary) and `/usr/share/applications/` (desktop entry)

## Cross-Platform Building

To build for platforms other than your current one, you'll need to set up cross-compilation:

### Building for Windows from Linux/macOS
Install the Windows target:
```bash
rustup target add x86_64-pc-windows-msvc
```

### Building for Linux from Windows/macOS
Install the Linux target:
```bash
rustup target add x86_64-unknown-linux-gnu
```

### Building for macOS from Linux/Windows
This requires additional setup and is more complex. Consider using a macOS machine or CI/CD service.

## Troubleshooting

### Icon Issues
If you encounter icon-related errors during build, ensure all icon files are present in `src-tauri/icons/`:
- `32x32.png`
- `128x128.png`
- `128x128@2x.png`
- `icon.icns` (macOS)
- `icon.ico` (Windows)

You can generate these from a source image using online tools or ImageMagick.

### Build Errors
1. Make sure all dependencies are installed
2. Clear the build cache: `cargo clean` in the `src-tauri` directory
3. Update Rust: `rustup update`
4. Update dependencies: `cargo update` in the `src-tauri` directory

## Usage

1. **Generate Content**: Click the "Generate" button to create random numbers, emojis, or words
2. **Customize**: Adjust the number of rows and select content types (Numbers, Emoji's, Words)
3. **Layout**: Toggle between triangle (▲) and square (◻️) layouts
4. **Styling**: Enable "Styled" checkbox for random fonts, colors, and text emphasis
5. **Practice**: Use the eye button (👁️/🙈) to mask/unmask all items
6. **Test Yourself**: Click "Guess" to enter your answers and track your accuracy percentage
7. **Dark Mode**: Toggle dark mode using the switch in the top-right corner

## License

MIT License - Copyright © 2025 Radius.Center

## Support

For issues and questions, please visit the project repository.
