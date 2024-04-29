{
  description = "NixOS module which provides NVIDIA vGPU functionality";

  # Changed to use my fork because of the "Python version mismatch" error.
  # SO in my fork it uses channel 23.05 instead of unstable. But there should be a better way to approach this.

  inputs = {
    #systems.url = "github:nix-systems/default-linux";
    #nixpkgs.url = "github:NixOS/nixpkgs/06278c77b5d162e62df170fec307e83f1812d94b"; # nixos-22.11 #"github:nixos/nixpkgs/06278c77b5d162e62df170fec307e83f1812d94b"; #468a37e6ba01c45c91460580f345d48ecdb5a4db
    #nixpkgs.url = "github:NixOS/nixpkgs/nixos-22.11";
    #nixpkgs.url = "https://github.com/NixOS/nixpkgs/archive/06278c77b5d162e62df170fec307e83f1812d94b.tar.gz";
    frida = {
      #url = "github:itstarsun/frida-nix";
      url = "github:Yeshey/frida-nix";
      #inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, systems, /*nixpkgs,*/ ... }@inputs: 
    let

    in {
      nixosModules.nvidia-vgpu = import ./default.nix inputs; #{ inherit inputs; };
    };
}


