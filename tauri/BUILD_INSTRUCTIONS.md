# Build Instructions for Mnemonics

This document provides detailed instructions for building the Mnemonics desktop application.

## Prerequisites

### Required Software

1. **Rust** (latest stable)
   - Install from: https://rustup.rs/
   - Verify: `rustc --version`

2. **Node.js** (v16+)
   - Install from: https://nodejs.org/
   - Verify: `node --version` and `npm --version`

3. **Platform-Specific Tools**

   #### Windows
   - Visual Studio C++ Build Tools
   - WebView2 Runtime (pre-installed on Windows 10/11)

   #### macOS
   - Xcode Command Line Tools: `xcode-select --install`

   #### Linux (Ubuntu/Debian)
   ```bash
   sudo apt update
   sudo apt install libwebkit2gtk-4.1-dev build-essential curl wget file libxdo-dev libssl-dev libayatana-appindicator3-dev librsvg2-dev
   ```

## Build Steps

### 1. Install Dependencies

```bash
cd mnemonics
npm install
```

This installs the Tauri CLI and other Node.js dependencies.

### 2. Development Build

To run in development mode with hot-reload:

```bash
npm run dev
```

This opens the application window and watches for file changes.

### 3. Production Build

To create production installers:

```bash
npm run build
```

Build artifacts will be in `src-tauri/target/release/bundle/`

### 4. Platform-Specific Builds

**Windows:**
```bash
npm run build:windows
```
Creates `.msi` and `.exe` installers in:
- `src-tauri/target/release/bundle/msi/`
- `src-tauri/target/release/bundle/nsis/`

**macOS:**
```bash
npm run build:macos
```
Creates `.dmg` and `.app` in:
- `src-tauri/target/release/bundle/dmg/`
- `src-tauri/target/release/bundle/macos/`

**Linux:**
```bash
npm run build:linux
```
Creates `.deb` and `.rpm` in:
- `src-tauri/target/release/bundle/deb/`
- `src-tauri/target/release/bundle/rpm/`

## Build Configuration

### Cargo.toml
Located at `src-tauri/Cargo.toml`, this file defines:
- Package metadata
- Rust dependencies
- Build features
- Release optimizations

### tauri.conf.json
Located at `src-tauri/tauri.conf.json`, this configures:
- Application metadata
- Window properties
- Bundle settings
- Platform-specific options

## Optimization

The release build is optimized for size and performance:
- LTO (Link Time Optimization) enabled
- Code stripping enabled
- Optimized for size (`opt-level = "s"`)
- Single codegen unit for better optimization

## Troubleshooting

### Common Issues

1. **Missing Dependencies**
   - Ensure all platform-specific dependencies are installed
   - Run `rustup update` to update Rust

2. **Build Failures**
   - Clear build cache: `cd src-tauri && cargo clean`
   - Update dependencies: `cargo update`
   - Verify Node.js version: `node --version`

3. **Icon Errors**
   - Ensure all required icon files exist in `src-tauri/icons/`
   - Required: 32x32.png, 128x128.png, 128x128@2x.png, icon.ico, icon.icns

4. **WebView2 Issues (Windows)**
   - Install WebView2 Runtime from Microsoft
   - Usually pre-installed on Windows 10/11

5. **Permission Errors (Linux)**
   - May need to run with sudo for system-wide installation
   - Or use `--user` flag for user-local installation

## Cross-Compilation

### Windows from Linux/macOS
```bash
rustup target add x86_64-pc-windows-msvc
npm run build:windows
```

### Linux from Windows/macOS
```bash
rustup target add x86_64-unknown-linux-gnu
npm run build:linux
```

### macOS from Linux/Windows
Cross-compiling to macOS is complex and typically requires:
- macOS SDK
- Specialized toolchain
- Consider using GitHub Actions or a macOS machine

## Build Times

Typical build times (first build):
- Development: 2-5 minutes
- Production: 5-10 minutes
- Subsequent builds are faster due to caching

## Output Files

After a successful build, you'll find:

**Windows:**
- `Mnemonics_1.0.0_x64_en-US.msi` (MSI installer)
- `Mnemonics_1.0.0_x64-setup.exe` (NSIS installer)

**macOS:**
- `Mnemonics_1.0.0_x64.dmg` (DMG installer)
- `Mnemonics.app` (Application bundle)

**Linux:**
- `mnemonics_1.0.0_amd64.deb` (Debian package)
- `mnemonics-1.0.0-1.x86_64.rpm` (RPM package)

## Next Steps

After building:
1. Test the installer on your target platform
2. Verify all features work correctly
3. Check application size and performance
4. Distribute to users

For more information, see:
- [Tauri Documentation](https://tauri.app/)
- [Rust Documentation](https://doc.rust-lang.org/)
