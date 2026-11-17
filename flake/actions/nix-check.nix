## Reusable workflow any Qezta repository can call:
##   jobs.check.uses: Qezta/.github/.github/workflows/nix-check.yml@main
## Actions are pinned by commit SHA (tag in the comment).
_: {
  flake.actions-nix.workflows.".github/workflows/nix-check.yml" = {
    name = "nix-check";
    on.workflow_call.inputs = {
      command = {
        description = "Command to run after Nix is installed.";
        type = "string";
        default = "nix flake check -L";
      };
      runs-on = {
        description = "Runner label.";
        type = "string";
        default = "ubuntu-latest";
      };
    };
    permissions.contents = "read";
    jobs.check = {
      runs-on = "\${{ inputs.runs-on }}";
      timeout-minutes = 60;
      steps = [
        {
          name = "Checkout";
          uses = "actions/checkout@3d3c42e5aac5ba805825da76410c181273ba90b1"; # v7.0.1
          "with".persist-credentials = false;
        }
        {
          name = "Install Nix";
          uses = "nixbuild/nix-quick-install-action@9f63be77f412a248c9d9a65a4c82cf066cdf8f0c"; # v35
        }
        {
          name = "Nix cache";
          uses = "DeterminateSystems/magic-nix-cache-action@84c0677f58dcedf3b91f8223ce36a9ea5b3c84b7"; # v15
        }
        {
          name = "Run";
          ## Passed through the environment rather than interpolated into the
          ## script, so the input is never parsed as workflow syntax.
          env.CMD = "\${{ inputs.command }}";
          run = "bash -c \"$CMD\"";
        }
      ];
    };
  };
}
