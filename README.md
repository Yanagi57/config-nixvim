# Nixvim

## Configuring

To start configuring, just add or modify the nix files in `./config`.
If you add a new configuration file, remember to add it to the
[`config/default.nix`](./config/default.nix) file

## Testing your new configuration

To test your configuration simply run the following command

```sh
nix run .
```

## Include this flake as an app

In your flake.nix

```nix
{
  description = "A flake for Rust development";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixvim.url = "github:Yanagi57/config-nixvim"; # <- Add this
    nixvim.inputs.nixpkgs.follows = "nixpkgs";   # <- Add this to avoid dependency duplication
  };

  outputs = { self, nixpkgs, nixvim }:
    let
      pkgs = import nixpkgs { system = "x86_64-linux"; };
    in {
      devShells.x86_64-linux.default = pkgs.mkShell {
        buildInputs = [
          pkgs.rustc
          pkgs.cargo
          pkgs.openssl
          pkgs.pkg-config
          nixvim.packages.x86_64-linux.default  # <- Add this to import my nixvim
        ];
      };
    };
}

```
