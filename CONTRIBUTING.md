# Contributing

Thanks for helping. This is the default guide for every
[Qezta](https://github.com/Qezta) repository that doesn't have its own.

## Workflow

1. Open an issue first for anything non-trivial, so we can agree on the approach.
1. Work on a branch (`feat/...`, `fix/...`); the default branch only accepts pull requests.
1. Use [Conventional Commits](https://www.conventionalcommits.org): `feat(scope): add thing`.
1. Keep pull requests focused, and fill in the template.

## Development

Every repository is a Nix flake:

```sh
nix develop          # tools for this repo
nix fmt              # format
nix flake check -L   # what CI runs
```

Never hand-edit generated files (workflows rendered from `flake/actions/`,
`exports/`, lock files); regenerate them.

## Security

Never commit secrets, credentials or personal data. Report vulnerabilities
privately as described in [SECURITY.md](SECURITY.md).
