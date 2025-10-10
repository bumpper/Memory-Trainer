# Directory Structure - Mnemonics

This document provides a detailed overview of the project's directory structure and file organization.

## 📁 Root Directory

```
mnemonics/
├── src/                          # Frontend source files
├── src-tauri/                    # Tauri backend (Rust)
├── node_modules/                 # Node.js dependencies (generated)
├── package.json                  # Node.js configuration
├── package-lock.json             # Dependency lock file (generated)
├── .gitignore                    # Git ignore rules
├── README.md                     # Project overview
├── BUILD_INSTRUCTIONS.md         # Build guide
├── SETUP.md                      # Setup instructions
├── PROJECT_SUMMARY.md            # Architecture overview
├── START_HERE.md                 # Quick start guide
├── CHECKLIST.md                  # Development checklist
├── DIRECTORY_STRUCTURE.md        # This file
├── BUILD_STATUS.md               # Build status tracking
├── quick-build.bat               # Quick build script (Windows)
└── quick-dev.bat                 # Quick dev script (Windows)
```

## 🎨 Frontend Directory (`src/`)

Contains all frontend HTML, CSS, and JavaScript files.

```
src/
├── index.html                    # Main application (memory training)
├── help.html                     # Help documentation page
├── DEMO.html                     # Demo/example page
└── help_files/                   # Supporting files for help
    ├── colorschememapping.xml    # Color scheme data
    ├── filelist.xml              # File list metadata
    └── themedata.thmx            # Theme data
```

### File Descriptions

**index.html**
- Main memory training application
- Contains all HTML, CSS, and JavaScript
- Self-contained single-page application
- Features: number/emoji/word generation, dark mode, guess mode

**help.html**
- User help documentation
- Instructions for using the application
- Tips and best practices

**DEMO.html**
- Demo or example page
- May contain usage examples or tutorials

**help_files/**
- Supporting files for help documentation
- XML and theme files for formatting

## 🦀 Backend Directory (`src-tauri/`)

Contains all Rust code and Tauri configuration.

```
src-tauri/
├── src/                          # Rust source code
│   ├── main.rs                   # Application entry point
│   └── lib.rs                    # Library code
├── icons/                        # Application icons
│   ├── 32x32.png                 # 32x32 icon
│   ├── 128x128.png               # 128x128 icon
│   ├── 128x128@2x.png            # 128x128 retina icon
│   ├── icon.icns                 # macOS icon bundle
│   ├── icon.ico                  # Windows icon
│   └── icon.png                  # Base icon (512x512 or larger)
├── capabilities/                 # Permission configurations
│   └── default.json              # Default capability set
├── gen/                          # Generated files (not in repo)
│   └── android/                  # Android build files (if applicable)
├── target/                       # Build output (not in repo)
│   ├── debug/                    # Debug builds
│   └── release/                  # Release builds
│       └── bundle/               # Installers and packages
│           ├── msi/              # Windows MSI installers
│           ├── nsis/             # Windows NSIS installers
│           ├── deb/              # Linux Debian packages
│           ├── rpm/              # Linux RPM packages
│           ├── dmg/              # macOS disk images
│           └── macos/            # macOS app bundles
├── Cargo.toml                    # Rust package configuration
├── Cargo.lock                    # Rust dependency lock file
├── tauri.conf.json               # Tauri configuration
├── build.rs                      # Build script
└── .gitignore                    # Git ignore for Rust files
```

### File Descriptions

**src/main.rs**
- Rust application entry point
- Initializes Tauri application
- Sets up plugins and handlers

**src/lib.rs**
- Library code for the application
- Can contain shared functions and types

**icons/**
- Application icons in various sizes and formats
- Required for different platforms and contexts
- Generated from a base icon image

**capabilities/default.json**
- Defines application permissions
- Controls what the app can access
- Security configuration

**Cargo.toml**
- Rust package manifest
- Lists dependencies and metadata
- Build configuration

**tauri.conf.json**
- Main Tauri configuration file
- Window settings, bundle options
- Platform-specific configurations

**build.rs**
- Rust build script
- Runs before compilation
- Can generate code or resources

## 📦 Generated Directories

These directories are created during development/build and should not be committed to version control.

### `node_modules/`
- Node.js dependencies
- Created by `npm install`
- Ignored by Git

### `src-tauri/target/`
- Rust compilation output
- Debug and release builds
- Installers and packages
- Ignored by Git

### `src-tauri/gen/`
- Generated Tauri files
- Platform-specific code
- Ignored by Git

## 📄 Configuration Files

### Root Level

**package.json**
```json
{
  "name": "mnemonics",
  "version": "1.0.0",
  "scripts": {
    "dev": "tauri dev",
    "build": "tauri build"
  },
  "devDependencies": {
    "@tauri-apps/cli": "^2.0.0"
  }
}
```

**package-lock.json**
- Automatically generated
- Locks dependency versions
- Ensures consistent installs

**.gitignore**
- Specifies files to ignore in Git
- Excludes node_modules, target, etc.

### Tauri Level

**src-tauri/Cargo.toml**
- Rust package configuration
- Dependencies: tauri, serde, etc.
- Build settings and features

**src-tauri/tauri.conf.json**
- Application metadata
- Window configuration
- Bundle settings
- Security policies

**src-tauri/.gitignore**
- Rust-specific ignore rules
- Excludes target/ and gen/

## 📚 Documentation Files

All documentation files are in Markdown format (.md):

1. **README.md** - Project overview and quick reference
2. **BUILD_INSTRUCTIONS.md** - Detailed build process
3. **SETUP.md** - Environment setup guide
4. **PROJECT_SUMMARY.md** - Architecture and design
5. **START_HERE.md** - Quick start for new users
6. **CHECKLIST.md** - Development task tracking
7. **DIRECTORY_STRUCTURE.md** - This file
8. **BUILD_STATUS.md** - Build status and issues

## 🔧 Helper Scripts

**quick-build.bat** (Windows)
- Quick build script
- Runs `npm run build`
- Convenient for Windows users

**quick-dev.bat** (Windows)
- Quick development script
- Runs `npm run dev`
- Convenient for Windows users

## 📊 File Size Estimates

Typical file sizes:

- **Source HTML files**: 10-50 KB each
- **Icons**: 1-100 KB each
- **Configuration files**: 1-5 KB each
- **Documentation**: 5-20 KB each
- **node_modules/**: 50-200 MB
- **src-tauri/target/**: 500 MB - 2 GB
- **Final installer**: 5-15 MB

## 🔍 Finding Files

### By Purpose

**Configuration:**
- `package.json` - Node.js config
- `src-tauri/Cargo.toml` - Rust config
- `src-tauri/tauri.conf.json` - Tauri config

**Source Code:**
- `src/index.html` - Main app
- `src-tauri/src/main.rs` - Rust entry

**Documentation:**
- `README.md` - Start here
- `START_HERE.md` - Quick start
- `BUILD_INSTRUCTIONS.md` - Build guide

**Assets:**
- `src-tauri/icons/` - App icons

### By File Type

**HTML:** `src/*.html`
**Rust:** `src-tauri/src/*.rs`
**JSON:** `*.json`, `src-tauri/*.json`
**Markdown:** `*.md`
**Images:** `src-tauri/icons/*`

## 🚫 Files to Ignore

Never commit these to version control:

- `node_modules/` - Node.js dependencies
- `src-tauri/target/` - Rust build output
- `src-tauri/gen/` - Generated files
- `package-lock.json` - Can be regenerated
- `Cargo.lock` - Can be regenerated (for apps)
- `.DS_Store` - macOS system files
- `*.log` - Log files

## 📝 Adding New Files

### Adding Frontend Files
1. Place in `src/` directory
2. Reference from `index.html` if needed
3. Update documentation if significant

### Adding Rust Code
1. Create in `src-tauri/src/`
2. Import in `main.rs` or `lib.rs`
3. Update `Cargo.toml` if adding dependencies

### Adding Assets
1. Place in appropriate directory
2. Update `tauri.conf.json` if needed
3. Reference in code

### Adding Documentation
1. Create `.md` file in root
2. Link from `README.md`
3. Update this file

## 🔄 Directory Maintenance

### Regular Cleanup

```bash
# Clean Node.js dependencies
rm -rf node_modules
npm install

# Clean Rust build artifacts
cd src-tauri
cargo clean

# Clean generated files
rm -rf src-tauri/gen
```

### Backup Important Files

Always backup:
- `src/` directory
- `src-tauri/src/` directory
- Configuration files
- Documentation files
- Custom icons

## 📈 Growth Over Time

As the project develops:

1. **src/** may grow with more HTML/CSS/JS files
2. **src-tauri/src/** may grow with more Rust modules
3. **Documentation** should be updated regularly
4. **Icons** may be customized or replaced
5. **Configuration** may need adjustments

## 🎯 Best Practices

1. **Keep source files organized** in appropriate directories
2. **Don't commit generated files** (node_modules, target)
3. **Update documentation** when structure changes
4. **Use consistent naming** for files and directories
5. **Comment complex configurations** in JSON/TOML files

---

**Last Updated:** [Current Date]

**Maintained By:** Project Team
