# PhaseCrate for Homebrew

[PhaseCrate](https://phasecrate.io) is a crate manager for vinyl DJs and record collectors: bring in your Discogs collection and every record gets a BPM, a key and a waveform.

```sh
brew tap xdae/phasecrate
brew trust xdae/phasecrate
brew install --cask phasecrate
```

Recent Homebrew versions ask you to trust a tap before installing from it; that's the second line.

Mac with Apple Silicon, macOS 12 or later. PhaseCrate updates itself (Settings → About → Check for updates), so you don't need `brew upgrade` for it.

The beta isn't notarized by Apple yet, so on first launch macOS asks you to allow it: System Settings → Privacy & Security → **Open Anyway**. You only do this once.

What changed in each version: <https://phasecrate.io/releases>

This tap is updated automatically with every release.
