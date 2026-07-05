{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = {
    self,
    nixpkgs,
  }: let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
  in {
    devShells.${system}.default = pkgs.mkShell {
      packages = with pkgs; [
        typst
        typst-live
        typstwriter
        typstyle
        wqy_zenhei
        wqy_microhei
        noto-fonts-cjk-sans
        noto-fonts-cjk-serif
        tinymist
      ];
      shellHook = ''
        fish
      '';
    };
  };
}
