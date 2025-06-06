update:
	nix flake update

upgrade:
	make update && nix flake check .

test:
	make update && nix build .

