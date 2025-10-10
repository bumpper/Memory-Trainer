# Setup Guide for Mnemonics

This guide will help you set up the development environment for the Mnemonics memory training application.

## System Requirements

### Minimum Requirements
- **OS**: Windows 10/11, macOS 10.13+, or Linux (Ubuntu 20.04+, Fedora 36+)
- **RAM**: 4GB minimum, 8GB recommended
- **Disk Space**: 2GB for development tools and dependencies
- **Internet**: Required for downloading dependencies

## Step-by-Step Setup

### 1. Install Rust

Rust is required for building Tauri applications.

**Windows:**
1. Download from https://rustup.rs/
2. Run the installer
3. Follow the prompts (default options are recommended)
4. Restart your terminal

**macOS/Linux:**
```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source $HOME/.cargo/env
```

**Verify Installation:**
```bash
rustc --version
cargo --version
```

### 2. Install Node.js

Node.js is required for the Tauri CLI and build process.

**Download:**
- Visit https://nodejs.org/
- Download the LTS version (v16 or later)
- Run the installer

**Verify Installation:**
```bash
node --version
npm --version
```

### 3. Install Platform-Specific Dependencies

#### Windows

**Visual Studio C++ Build Tools:**
1. Download from: https://visualstudio.microsoft.com/visual-cpp-build-tools/
2. Install "Desktop development with C++"
3. Restart your computer

**WebView2:**
- Usually pre-installed on Windows 10/11
- If needed, download from: https://developer.microsoft.com/microsoft-edge/webview2/

#### macOS

**Xcode Command Line Tools:**
```bash
xcode-select --install
```

#### Linux (Ubuntu/Debian)

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

#### Linux (Fedora/RHEL)

```bash
sudo dnf install webkit2gtk4.1-devel \
  openssl-devel \
  curl \
  wget \
  file \
  libappindicator-gtk3-devel \
  librsvg2-devel
```

### 4. Clone or Download the Project

If you have the project files:
```bash
cd C:\Users\Dan Neiderhiser\Desktop\mnemonics
```

### 5. Install Project Dependencies

```bash
npm install
```

This installs:
- Tauri CLI
- Other Node.js dependencies

### 6. Verify Setup

Run the development server to verify everything is working:

```bash
npm run dev
```

If successful, the Mnemonics application window should open.

## IDE Setup (Optional but Recommended)

### Visual Studio Code

**Install VS Code:**
- Download from: https://code.visualstudio.com/

**Recommended Extensions:**
1. **rust-analyzer** - Rust language support
2. **Tauri** - Tauri-specific features
3. **ESLint** - JavaScript linting
4. **Prettier** - Code formatting

**Install Extensions:**
```bash
code --install-extension rust-lang.rust-analyzer
code --install-extension tauri-apps.tauri-vscode
code --install-extension dbaeumer.vscode-eslint
code --install-extension esbenp.prettier-vscode
```

### Open Project in VS Code

```bash
cd mnemonics
code .
```

## Configuration Files

The project includes several configuration files:

- **package.json** - Node.js dependencies and scripts
- **src-tauri/Cargo.toml** - Rust dependencies and package info
- **src-tauri/tauri.conf.json** - Tauri application configuration
- **.gitignore** - Git ignore rules

## Environment Variables (Optional)

You can set these for advanced configuration:

```bash
# Increase build verbosity
export RUST_LOG=debug

# Use specific Rust toolchain
export RUSTUP_TOOLCHAIN=stable
```

## Troubleshooting Setup Issues

### Rust Installation Issues

**Problem:** `rustc` command not found
**Solution:** 
- Restart terminal/command prompt
- Add Rust to PATH manually: `~/.cargo/bin` (Unix) or `%USERPROFILE%\.cargo\bin` (Windows)

### Node.js Issues

**Problem:** `npm` command not found
**Solution:**
- Verify Node.js installation
- Restart terminal
- Reinstall Node.js if necessary

### Permission Errors (Linux)

**Problem:** Permission denied during installation
**Solution:**
```bash
# Fix npm permissions
mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
echo 'export PATH=~/.npm-global/bin:$PATH' >> ~/.bashrc
source ~/.bashrc
```

### WebView2 Issues (Windows)

**Problem:** WebView2 not found
**Solution:**
- Download and install WebView2 Runtime
- Restart computer
- Verify installation in "Add or Remove Programs"

### Build Tool Issues (Windows)

**Problem:** Missing C++ build tools
**Solution:**
- Install Visual Studio Build Tools
- Select "Desktop development with C++"
- Restart computer

## Next Steps

After setup is complete:

1. **Read the Documentation:**
   - README.md - Project overview
   - BUILD_INSTRUCTIONS.md - Building the app
   - START_HERE.md - Quick start guide

2. **Run Development Server:**
   ```bash
   npm run dev
   ```

3. **Make Changes:**
   - Edit files in `src/` directory
   - Changes auto-reload in development mode

4. **Build for Production:**
   ```bash
   npm run build
   ```

## Getting Help

If you encounter issues:

1. Check the troubleshooting section above
2. Review Tauri documentation: https://tauri.app/
3. Check Rust documentation: https://doc.rust-lang.org/
4. Search for similar issues online

## Updating Dependencies

To update project dependencies:

```bash
# Update Node.js dependencies
npm update

# Update Rust dependencies
cd src-tauri
cargo update
```

## Uninstalling

To remove the development environment:

```bash
# Remove Node.js dependencies
rm -rf node_modules
rm package-lock.json

# Remove Rust build artifacts
cd src-tauri
cargo clean

# Uninstall Rust (optional)
rustup self uninstall

# Uninstall Node.js (optional)
# Use your system's package manager or installer
