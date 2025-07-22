# Berkay's macOS Development Setup

A fully automated setup for configuring your development environment on a fresh macOS machine.

---

## 1️⃣ Manual Steps (Before Automation)

- **Dock Setup**:

  - Manually remove unnecessary apps from the Dock.
  - Drag the `Downloads` folder next to the Trash in the Dock.
    - Right-click it → Sort by Date Added.

- **Finder Sidebar**:

  - Drag your `$HOME` folder into the Finder sidebar for quick access.

- Install OhMyZSH
  <https://ohmyz.sh/>

> After completing these manual steps, continue with the automated setup.

---

## 2️⃣ Automated Setup (Run in Terminal)

```bash
git clone https://github.com/berkaycoban/dotfiles ~/.dotfiles
cd ~/.dotfiles
chmod +x bootstrap.sh
./bootstrap.sh
```
