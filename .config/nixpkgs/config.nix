{
	allowUnfree = true;

	packageOverrides = pkgs: {
		myPackages = pkgs.buildEnv {
			name = "my-packages";
			paths = import ./packages.nix {inherit pkgs; };
		};
	};
}
