{ config, pkgs, modulesPath, ... }:
{
  system.build.metadata = pkgs.callPackage <nixpkgs/nixos/lib/make-system-tarball.nix> {
    contents = [{
      source = pkgs.writeText "metadata.yaml" ''
        architecture: x86_64
        creation_date: 1424284563
        properties:
          description: NixOS
          os: nixos
          release: test
      '';
      target = "/metadata.yaml";
    }];
  };
  formatAttr = "metadata";
}

