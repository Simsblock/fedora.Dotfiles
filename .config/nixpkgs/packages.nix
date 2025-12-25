{ pkgs }:

with pkgs; [
  # Core utilities
  git
  curl
  wget
  
  # Editors
  vscodium
  
  # Browsers
  firefox
  
  # Terminal tools
  fastfetch
  htop
  
  # Development (import from development.nix)
] 
++ import ./modules/i3.nix { inherit pkgs; }