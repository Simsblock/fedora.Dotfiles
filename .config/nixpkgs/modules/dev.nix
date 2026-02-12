{ pkgs }:

let
  combinedDotnet = pkgs.dotnetCorePackages.combinePackages [
    #pkgs.dotnet-sdk_6
    pkgs.dotnet-sdk_8
    pkgs.dotnet-sdk_9
    pkgs.dotnet-sdk_10
  ];
  
  # Wrapper that uses the combined installation
  dotnetWrapper = pkgs.writeShellScriptBin "dotnet" ''
    export DOTNET_ROOT=${combinedDotnet}
    exec ${combinedDotnet}/bin/dotnet "$@"
  '';
  
in
with pkgs;
[
  dotnetWrapper
  
  # Core Utilities
  git
  gh

  # Other utilities
  cloc
  
  # Container Manager
  kubectl
  podman
  podman-desktop
  
  # Endpoint Testing
  bruno
  
  # IDE
  jetbrains.rider
]
