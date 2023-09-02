{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    bix = {
      url = "github:knarkzel/bix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, bix, ... }: {
    packages.x86_64-linux.default = bix.buildBunPackage {
      src = ./.;
      hash = "";
      packages = ./package.json;
    };
  };
}
