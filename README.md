s3a Decorrelator
=============

This is a fork of [s3a-decorrelation-toolbox](https://github.com/s3a-spatialaudio/s3a-decorrelation-toolbox) by Michael-Cousins.

The fork adds only a small layer on-top of the original source code in order to make it usable for practical purposes:

- you can install the software with [nix](https://nixos.org/): in this way it's possible to still use the old py3.7 code.
- you can upmix a mono sound file with the simple ``upmix`` script, simply do something like

```bash
./upmix INFILE.wav OUTFILE.wav
```

This fork doesn't intent to update/maintain the old source code unless it becomes even unusable with nix.
