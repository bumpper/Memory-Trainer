# START HERE - Mnemonics Quick Start Guide

Welcome to the Mnemonics memory training application! This guide will get you up and running quickly.

## 🚀 Quick Start (5 Minutes)

### Prerequisites Check

Before you begin, verify you have:
- ✅ Rust installed (`rustc --version`)
- ✅ Node.js installed (`node --version`)
- ✅ Platform-specific dependencies (see below)

**Don't have these?** → See [SETUP.md](SETUP.md) for detailed installation instructions.

### Platform-Specific Requirements

**Windows:**
- Visual Studio C++ Build Tools
- WebView2 (usually pre-installed)

**macOS:**
- Xcode Command Line Tools: `xcode-select --install`

**Linux:**
```bash
sudo apt install libwebkit2gtk-4.1-dev build-essential curl wget file libxdo-dev libssl-dev libayatana-appindicator3-dev librsvg2-dev
```

## 📦 Installation

### Step 1: Navigate to Project
```bash
cd C:\Users\Dan Neiderhiser\Desktop\mnemonics
```

### Step 2: Install Dependencies
```bash
npm install
```

This takes 1-2 minutes and installs the Tauri CLI.

## 🎯 Running the Application

### Development Mode (Recommended for Testing)
```bash
npm run dev
```

This will:
1. Compile the Rust backend
2. Launch the application window
3. Enable hot-reload for changes

**First run takes 2-5 minutes** (subsequent runs are much faster)

### Production Build
```bash
npm run build
```

Creates installers in `src-tauri/target/release/bundle/`

## 🎮 Using the Application

### Basic Usage

1. **Generate Content**
   - Click "Generate" button
   - Random numbers/emojis/words appear

2. **Customize**
   - Adjust "Number of Rows" (1-15)
   - Check/uncheck: Numbers, Emoji's, Words
   - Toggle "Styled" for random fonts/colors

3. **Practice**
   - Click eye button (👁️) to mask all items
   - Click individual items to mask/unmask
   - Use "Guess" mode to test yourself

4. **Layout**
   - ▲ = Triangle pattern (1, 2, 3, 4... items per row)
   - ◻️ = Square pattern (same items per row)

5. **Dark Mode**
   - Toggle switch in top-right corner

### Guess Mode Workflow

1. Click "Generate" to create content
2. Study the items
3. Click eye button (👁️) to mask all
4. Click "Guess" button
5. Type your answers in the input boxes
6. Correct answers turn green
7. See your accuracy percentage
8. Click "Clear" to reset inputs
9. Click "Hide" to hide input boxes

## 📁 Project Structure

```
mnemonics/
├── src/                    # Frontend files
│   ├── index.html         # Main application
│   ├── help.html          # Help page
│   └── DEMO.html          # Demo page
├── src-tauri/             # Backend (Rust)
│   ├── src/               # Rust source
│   ├── icons/             # App icons
│   └── Cargo.toml         # Rust config
├── package.json           # Node.js config
└── README.md              # Documentation
```

## 🛠️ Common Commands

```bash
# Development mode (hot-reload)
npm run dev

# Build for current platform
npm run build

# Build for Windows
npm run build:windows

# Build for macOS
npm run build:macos

# Build for Linux
npm run build:linux
```

## 🐛 Troubleshooting

### Application Won't Start

**Problem:** `npm run dev` fails
**Solutions:**
1. Check Rust is installed: `rustc --version`
2. Check Node.js is installed: `node --version`
3. Reinstall dependencies: `rm -rf node_modules && npm install`
4. Clear Rust cache: `cd src-tauri && cargo clean`

### Build Errors

**Problem:** Build fails with errors
**Solutions:**
1. Update Rust: `rustup update`
2. Update dependencies: `cd src-tauri && cargo update`
3. Check platform dependencies are installed
4. See [BUILD_INSTRUCTIONS.md](BUILD_INSTRUCTIONS.md)

### WebView2 Missing (Windows)

**Problem:** "WebView2 not found" error
**Solution:**
- Download from: https://developer.microsoft.com/microsoft-edge/webview2/
- Install and restart computer

### Permission Errors (Linux)

**Problem:** Permission denied during build
**Solution:**
```bash
# Fix npm permissions
mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
echo 'export PATH=~/.npm-global/bin:$PATH' >> ~/.bashrc
source ~/.bashrc
```

## 📚 Next Steps

### For Users
1. ✅ Run `npm run dev` to test the app
2. ✅ Try all features (generate, mask, guess)
3. ✅ Build installer: `npm run build`
4. ✅ Install and use the app

### For Developers
1. ✅ Read [PROJECT_SUMMARY.md](PROJECT_SUMMARY.md) for architecture
2. ✅ Review [BUILD_INSTRUCTIONS.md](BUILD_INSTRUCTIONS.md) for details
3. ✅ Check [CHECKLIST.md](CHECKLIST.md) for development tasks
4. ✅ Modify `src/index.html` to customize features

## 🎓 Learning Resources

- **Tauri Guide**: https://tauri.app/v1/guides/
- **Rust Book**: https://doc.rust-lang.org/book/
- **JavaScript MDN**: https://developer.mozilla.org/en-US/docs/Web/JavaScript

## 💡 Tips

1. **First Build is Slow**: The first `npm run dev` or `npm run build` takes several minutes. Subsequent builds are much faster due to caching.

2. **Hot Reload**: In development mode, changes to HTML/CSS/JS files automatically reload the app.

3. **Rust Changes**: Changes to Rust files (`src-tauri/src/`) require restarting `npm run dev`.

4. **Icon Customization**: Replace icons in `src-tauri/icons/` with your own (maintain same filenames and sizes).

5. **Window Size**: Adjust in `src-tauri/tauri.conf.json` under `app.windows[0]`.

## ✅ Quick Checklist

Before building for distribution:
- [ ] Test all features work
- [ ] Try both light and dark modes
- [ ] Test on target platform
- [ ] Verify help documentation works
- [ ] Check application icon displays correctly
- [ ] Test installer on clean system

## 🆘 Getting Help

If you're stuck:

1. **Check Documentation**
   - [README.md](README.md) - Overview
   - [SETUP.md](SETUP.md) - Detailed setup
   - [BUILD_INSTRUCTIONS.md](BUILD_INSTRUCTIONS.md) - Build guide

2. **Common Issues**
   - See troubleshooting section above
   - Check [BUILD_STATUS.md](BUILD_STATUS.md)

3. **Online Resources**
   - Tauri Discord: https://discord.com/invite/tauri
   - Tauri GitHub: https://github.com/tauri-apps/tauri

## 🎉 Success!

If you can run `npm run dev` and see the application window, you're all set!

**Next:** Try generating some numbers and testing the memory training features.

---

**Need more details?** See the other documentation files:
- [SETUP.md](SETUP.md) - Complete setup guide
- [BUILD_INSTRUCTIONS.md](BUILD_INSTRUCTIONS.md) - Detailed build instructions
- [PROJECT_SUMMARY.md](PROJECT_SUMMARY.md) - Project architecture
- [CHECKLIST.md](CHECKLIST.md) - Development checklist
