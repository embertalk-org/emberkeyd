{
  description = "Key Server for EmberTalk";

  outputs = { self, nixpkgs }:
  let

    system = "x86_64-linux";
    pkgs = import nixpkgs { inherit system; };

  in {
    packages.${system}.default = pkgs.callPackage ./default.nix {};
  };
}
