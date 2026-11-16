<div align="center">
<a href="https://qezta.com"><img src="https://qezta.com/qezta.png" alt="Qezta" width="120" /></a>
<h1>Qezta</h1>
<p><a href="https://qezta.com">qezta.com</a> is being built as the company and product site. In the meantime this org hosts Divit Mittal's portfolio and a handful of shared sub-products.</p>
<p>
<a href="https://qezta.com"><img alt="qezta.com" src="https://img.shields.io/badge/qezta.com-ff0052?style=flat-square" /></a>
<a href="https://divit.qezta.com"><img alt="divit.qezta.com" src="https://img.shields.io/badge/divit.qezta.com-667eea?style=flat-square" /></a>
</p>
</div>

## Try it from your terminal

```sh
ssh qezta@qezta.com   # the Qezta org landing
ssh divit@qezta.com   # Divit's portfolio, as a TUI
```

No shell is ever granted: it's a sandboxed [Bubble Tea](https://github.com/charmbracelet/bubbletea) app served over SSH by [`ssh`](https://github.com/Qezta/ssh).

## Projects

| Project | What it is | Stack |
| --- | --- | --- |
| [**divit**](https://github.com/Qezta/divit) | [divit.qezta.com](https://divit.qezta.com): portfolio with a Gemini-powered RAG chatbot and an in-browser terminal | SvelteKit · TypeScript |
| [**site**](https://github.com/Qezta/site) | [qezta.com](https://qezta.com): the Qezta marketing site (under development) | SvelteKit · TypeScript |
| [**qezta-website**](https://github.com/Qezta/qezta-website) | Development base shared by the personal and company sites | SvelteKit · Vite · Nix |
| [**ui**](https://github.com/Qezta/ui) | Shared Svelte component library and design system for every Qezta front end | Svelte · SCSS |
| [**ssh**](https://github.com/Qezta/ssh) | The SSH terminal portfolio above | Go · wish · Bubble Tea |
| [**infra**](https://github.com/Qezta/infra) | Everything in this org as code: repositories, Actions settings, DNS and domains | Nix · Terranix · Terragrunt |

## How we build

- **Reproducible by default.** Every repo is a Nix flake with a dev shell, formatters, and pre-commit hooks; `nix develop` is the whole setup.
- **Infrastructure as code.** The repos in this org, their settings, and our DNS are declared in [`infra`](https://github.com/Qezta/infra), not clicked together.
- **One design system.** The sites share [`ui`](https://github.com/Qezta/ui), so they look and behave the same.

## Get in touch

Open an issue on the relevant repository, or find Divit via [divit.qezta.com](https://divit.qezta.com).
