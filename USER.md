# User Guide

Set up the theme once in `_config.yml`, then forget about it — from there, everything is pure markdown.

## Getting started

Create a GitHub Pages repo and add to `_config.yml`:

```yaml
remote_theme: yree/mold
title: My Site
```

Commit and push — you're live.

## Configuration

The defaults are sensible — most sites only need `title` and `remote_theme`. Everything else is optional:

| Key | Default | Description |
| :-- | :------ | :---------- |
| `title` | — | Site name |
| `author` | — | Author name, shown in footer |
| `email` | — | Author email |
| `url` | — | Root URL (e.g. `https://example.com`) |
| `baseurl` | `""` | Subpath (e.g. `/blog`), leave blank if none |
| `description` | — | Site description, used for SEO |
| `favicon` | — | Favicon filename at root (e.g. `favicon.svg`) |
| `permalink` | `/:slug` | URL format |
| `git_repo` | — | GitHub repo (`user/repo`), shown as link in footer |
| `footer_content` | — | Custom footer markdown, replaces the default footer |
| `goat_counter` | — | [GoatCounter](https://www.goatcounter.com) account name, production only |
| `css` | `full` | Set `core` for typography only — under 1KB gzipped |
| `js` | `true` | Set `false` to disable all JavaScript globally — MathJax, Mermaid, and analytics |

## Dark mode

Dark mode follows your system preference automatically — no toggle, no configuration needed.

Images keep their natural colors in dark mode by default. Use `.ioda` on images that should invert — screenshots, diagrams, anything with a white background that looks better dark:

```markdown
![Diagram](diagram.png){:.ioda}
```

## RSS and SEO

Set `title`, `description`, and `url` in `_config.yml` — RSS feed and SEO meta tags are generated automatically.

## Print / PDF

Print or save as PDF from the browser — printed pages and PDFs come out clean, with only the content.
