# Quick Reference Guide - Cross-Platform Building

## Answer to Your Question

**Q: Can I copy the Tauri project from Windows to Mac/Ubuntu and compile to get DMG/DEB files?**

**A: YES!** ✅ You can copy the project files to any platform and build native applications.

**BUT:** ❌ You must build ON each target platform. You cannot cross-compile from Windows to Mac/Linux.

---

## Quick Commands

### Windows

```cmd
# Development
quick-dev.bat
# or
npm run dev:windows

# Build
quick-build.bat
# or
npm run build:windows

# Output: MSI, NSIS installers
```

### macOS

```bash
# First time: make executable
chmod +x quick-dev.sh quick-build.sh

# Development
./quick-dev.sh
# or
npm run dev:mac

# Build
./quick-build.sh
# or
npm run build:mac

# Output: DMG, APP bundle
```

### Linux (Ubuntu/Debian)

```bash
# First time: make executable
chmod +x quick-dev.sh quick-build.sh

# Development
./quick-dev.sh
# or
npm run dev:linux

# Build
./quick-build.sh
# or
npm run build:linux-deb

# Output: DEB, AppImage
```

### Fedora/RHEL

```bash
# First time: make executable
chmod +x quick-dev.sh quick-build.sh

# Development
./quick-dev.sh
# or
npm run dev:linux

# Build
./quick-build.sh
# or
npm run build:fedora

# Output: RPM, AppImage
```

---

## Prerequisites by Platform

### Windows
- Node.js 16+
- Rust (rustup)
- Visual Studio Build Tools
- WebView2

### macOS
- Node.js 16+
- Rust (rustup)
- Xcode Command Line Tools

### Linux (Ubuntu/Debian)
```bash
sudo apt install -y libwebkit2gtk-4.1-dev build-essential curl wget file libssl-dev libayatana-appindicator3-dev librsvg2-dev nodejs npm
```

### Fedora/RHEL
```bash
sudo dnf install -y webkit2gtk4.1-devel openssl-devel curl wget file libappindicator-gtk3-devel librsvg2-devel nodejs npm rpm-build
```

---

## Platform Detection

Check your current platform:

```bash
npm run platform:info
```

This displays:
- Platform name
- Architecture
- OS release
- Build targets
- Output directory

---

## Transferring Project

### What to Copy
✅ All source files  
✅ Configuration files  
✅ Scripts  
✅ Documentation  

❌ Don't copy `node_modules/`  
❌ Don't copy `src-tauri/target/`  

### After Transfer
```bash
cd mnemonics/tauri
npm install
chmod +x quick-dev.sh quick-build.sh  # macOS/Linux only
```

---

## Output Files

### Windows
- `src-tauri/target/release/bundle/msi/Mnemonics_1.0.0_x64_en-US.msi`
- `src-tauri/target/release/bundle/nsis/Mnemonics_1.0.0_x64-setup.exe`

### macOS
- `src-tauri/target/release/bundle/dmg/Mnemonics_1.0.0_aarch64.dmg`
- `src-tauri/target/release/bundle/macos/Mnemonics.app`

### Linux
- `src-tauri/target/release/bundle/deb/mnemonics_1.0.0_amd64.deb`
- `src-tauri/target/release/bundle/appimage/mnemonics_1.0.0_amd64.AppImage`

### Fedora
- `src-tauri/target/release/bundle/rpm/mnemonics-1.0.0-1.x86_64.rpm`
- `src-tauri/target/release/bundle/appimage/mnemonics_1.0.0_amd64.AppImage`

---

## Troubleshooting

**Permission denied (macOS/Linux):**
```bash
chmod +x quick-dev.sh quick-build.sh
```

**Build fails:**
```bash
rustup update
npm run clean
npm install
```

**Cargo not found:**
- Install Rust from https://rustup.rs/

**Missing dependencies:**
- See PLATFORM_SETUP.md for your platform

---

## Documentation

📖 **Detailed Guides:**
- [BUILD_INSTRUCTIONS_CROSS_PLATFORM.md](BUILD_INSTRUCTIONS_CROSS_PLATFORM.md) - Complete build guide
- [PLATFORM_SETUP.md](PLATFORM_SETUP.md) - Platform-specific setup
- [CROSS_PLATFORM_SUMMARY.md](CROSS_PLATFORM_SUMMARY.md) - Implementation summary

---

## Summary

✅ **YES** - Copy project to Mac/Linux  
✅ **YES** - Build DMG on Mac  
✅ **YES** - Build DEB on Ubuntu  
✅ **YES** - Build RPM on Fedora  
❌ **NO** - Cannot cross-compile from Windows  

**You must build on each target platform!**
