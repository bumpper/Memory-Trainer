# Mnemonics - Project Summary

## Overview

Mnemonics is a desktop memory training application built with Tauri 2.0. It helps users practice memorization techniques using random numbers, emojis, and words with customizable display options.

## Technology Stack

### Frontend
- **HTML5** - Structure and content
- **CSS3** - Styling and animations
- **JavaScript (Vanilla)** - Application logic and interactivity

### Backend/Framework
- **Tauri 2.0** - Desktop application framework
- **Rust** - Backend language for Tauri
- **WebView2** (Windows) / WebKit (macOS/Linux) - Web rendering

### Build Tools
- **Cargo** - Rust package manager and build tool
- **npm** - Node.js package manager
- **Tauri CLI** - Command-line interface for building

## Project Structure

```
mnemonics/
├── src/                          # Frontend source files
│   ├── index.html               # Main application (memory.html)
│   ├── help.html                # Help documentation
│   ├── DEMO.html                # Demo page
│   └── help_files/              # Supporting files for help
│       ├── colorschememapping.xml
│       ├── filelist.xml
│       └── themedata.thmx
├── src-tauri/                   # Tauri backend
│   ├── src/
│   │   ├── main.rs             # Rust entry point
│   │   └── lib.rs              # Library code
│   ├── icons/                   # Application icons
│   │   ├── 32x32.png
│   │   ├── 128x128.png
│   │   ├── 128x128@2x.png
│   │   ├── icon.icns           # macOS icon
│   │   └── icon.ico            # Windows icon
│   ├── capabilities/
│   │   └── default.json        # Permission configuration
│   ├── Cargo.toml              # Rust dependencies
│   ├── tauri.conf.json         # Tauri configuration
│   └── build.rs                # Build script
├── package.json                 # Node.js dependencies
├── README.md                    # Project documentation
├── BUILD_INSTRUCTIONS.md        # Build guide
├── SETUP.md                     # Setup guide
├── PROJECT_SUMMARY.md           # This file
├── START_HERE.md                # Quick start guide
├── CHECKLIST.md                 # Development checklist
├── DIRECTORY_STRUCTURE.md       # Directory layout
├── BUILD_STATUS.md              # Build status tracking
├── quick-build.bat              # Quick build script (Windows)
├── quick-dev.bat                # Quick dev script (Windows)
└── .gitignore                   # Git ignore rules

```

## Key Features

### Memory Training
- **Random Generation**: Numbers (0-9999), emojis, and words
- **Customizable Rows**: 1-15 rows of content
- **Layout Options**: Triangle or square patterns
- **Styled Text**: Random fonts, colors, and text emphasis

### Practice Tools
- **Mask/Unmask**: Hide content for practice
- **Guess Mode**: Input answers and track accuracy
- **Percentage Tracking**: Real-time accuracy feedback
- **Individual Masking**: Click items to mask/unmask

### User Experience
- **Dark Mode**: Toggle between light and dark themes
- **Local Storage**: Saves preferences between sessions
- **Responsive Design**: Adapts to different window sizes
- **Help Documentation**: Built-in help system

## Application Configuration

### Window Settings
- **Default Size**: 1200x900 pixels
- **Minimum Size**: 800x600 pixels
- **Resizable**: Yes
- **Centered**: Yes on launch

### Bundle Information
- **Product Name**: Mnemonics
- **Version**: 1.0.0
- **Identifier**: center.radius.mnemonics
- **Category**: Education
- **License**: MIT

### Supported Platforms
- **Windows**: 10, 11 (x64)
- **macOS**: 10.13+ (x64)
- **Linux**: Ubuntu 20.04+, Fedora 36+ (x64)

## Build Outputs

### Windows
- `.msi` - Windows Installer
- `.exe` - NSIS Installer

### macOS
- `.dmg` - Disk Image
- `.app` - Application Bundle

### Linux
- `.deb` - Debian Package
- `.rpm` - RPM Package

## Dependencies

### Rust Dependencies (Cargo.toml)
- `tauri` (2.0) - Core framework
- `tauri-plugin-shell` (2.0) - Shell plugin
- `serde` (1.0) - Serialization
- `serde_json` (1.0) - JSON support

### Node.js Dependencies (package.json)
- `@tauri-apps/cli` (^2.0.0) - Tauri CLI

## Development Workflow

1. **Setup**: Install Rust, Node.js, and dependencies
2. **Development**: Run `npm run dev` for hot-reload
3. **Testing**: Test features in development mode
4. **Building**: Run `npm run build` for production
5. **Distribution**: Share installers with users

## Performance Characteristics

### Application Size
- **Executable**: ~5-10 MB (compressed)
- **Installed**: ~15-25 MB
- **Memory Usage**: ~50-100 MB (typical)

### Build Times
- **First Build**: 5-10 minutes
- **Incremental**: 30-60 seconds
- **Clean Build**: 3-5 minutes

## Security Features

- **Content Security Policy**: Configured for local assets
- **Asset Protocol**: Enabled for file access
- **Sandboxed WebView**: Isolated from system
- **No Remote Code**: All code bundled locally

## Customization Options

Users can customize:
- Number of rows (1-15)
- Content types (numbers, emojis, words)
- Layout pattern (triangle, square)
- Text styling (on/off)
- Theme (light/dark)

## Future Enhancement Ideas

- Additional content types (dates, names, etc.)
- Timed challenges
- Progress tracking over time
- Export/import settings
- Multiple difficulty levels
- Custom word lists
- Sound effects
- Keyboard shortcuts

## Maintenance

### Regular Updates
- Update Rust dependencies: `cargo update`
- Update Node.js dependencies: `npm update`
- Update Tauri: Check for new versions

### Testing Checklist
- [ ] All features work in development mode
- [ ] Build completes without errors
- [ ] Installer runs on target platform
- [ ] Application launches correctly
- [ ] All UI elements render properly
- [ ] Dark mode works correctly
- [ ] Local storage persists settings
- [ ] Help documentation accessible

## Resources

- **Tauri Docs**: https://tauri.app/
- **Rust Docs**: https://doc.rust-lang.org/
- **MDN Web Docs**: https://developer.mozilla.org/

## License

MIT License - Copyright © 2025 Radius.Center

## Contact

For questions or support, refer to the project repository.
