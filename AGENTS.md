# Developer Guide

Internals of mold — for contributors, developers, and AI coding agents working on the theme.

Any changes to the codebase should be reflected in the relevant documentation file: [README](/) for what it is, [USER](USER) for how to use it, [FEATURES](FEATURES) for what exists, and this file for how it's built.

## Local development

```bash
bundle install
bundle exec jekyll serve
```

Preview at [http://localhost:4000](http://localhost:4000).

## HTML

The default layout lives in `_layouts/default.html`. It renders:

- `<head>` — charset, viewport, SEO tags (via `jekyll-seo-tag`), favicon, and the CSS bundle
- `<body>` — a flex column with `<main>` and `<footer>`, constrained to `80ch` max-width via `body`
- MathJax and Mermaid scripts, conditionally loaded based on `js` config or front matter
- GoatCounter analytics script, conditionally loaded in production

`body` carries the `80ch` max-width and `margin: 0 auto` so `main` and `footer` fill it naturally. `main` grows to fill the viewport height via `flex: 1`.

## CSS

Mold splits styles into two SASS files:

| File | Purpose | Size (gzipped) |
| :--- | :------ | :------------- |
| `_sass/mold.scss` | Core — typography, layout, dark mode | <1KB |
| `_sass/mold-components.scss` | Components — inputs, buttons, cards, etc. | ~600B |
| `assets/css/core.scss` | Compiles core only — used by pre-commit hook for size check, not served | |
| `assets/css/main.scss` | Compiles full bundle (respects `css: core` config) | <2KB |

### SASS variables

All sizing, color, and timing is driven by these variables:

| Variable | Value | Purpose |
| :------- | :---- | :------ |
| `$u` | `1ch` | Base spacing unit |
| `$b` | `0.2ch` | Border width |
| `$fg` | `black` | Foreground color |
| `$sfg` | `dimgrey` | Secondary foreground |
| `$bg` | `white` | Background color |
| `$sbg` | `lightgrey` | Secondary background |
| `$sw` | `0.3ch` | Shadow width |
| `$tt` | `0.1s` | Transition duration |

### Dark mode

Dark mode applies `filter: invert(1) hue-rotate(180deg)` to `main` and `footer`.

- `invert(1)` flips light to dark — but it also shifts all hues by 180°
- `hue-rotate(180deg)` cancels that hue shift, so colors are preserved while luminosity is flipped
- No separate dark mode color variables are needed

Images are counter-inverted by default to keep their natural colors. Adding `.ioda` to an image removes the counter-inversion, so it inverts with the page — useful for screenshots and diagrams with white backgrounds.

### Constraints

A pre-commit hook enforces strict size limits:

- Core CSS < 1K gzipped
- Full CSS < 2K gzipped

The hook reads from `_site/`, so the site must be built before committing. Run `jekyll serve` in a separate terminal while developing.

Activate the hook after cloning:

```bash
git config core.hooksPath .githooks
```

## JavaScript

Mold loads three external scripts, all asynchronous and CDN-hosted:

| Script | Source | Purpose | Condition |
| :----- | :----- | :------- | :-------- |
| MathJax | `cdn.jsdelivr.net` | Renders LaTeX math (`$$...$$`) | `js != false` |
| Mermaid | `unpkg.com` | Renders diagram blocks | `js != false` |
| GoatCounter | `gc.zgo.at` | Analytics | `js != false` + `goat_counter` set + production build |

Setting `js: false` disables all three. GoatCounter additionally only loads in production (`jekyll.environment == "production"`), so it never fires in local development regardless.

Mermaid diagrams are included via `_includes/mermaid.html`:

```liquid
{% include mermaid.html content="graph TD; A-->B;" %}
```

## Assets

### Fonts

Fonts are loaded from Google Fonts CDN:

- **JetBrains Mono** — primary typeface, variable weight (100–800), italic support
- **Noto Emoji** — emoji fallback, variable weight

Both are declared in `_sass/mold.scss` via a single `@import url(...)`. All elements use `font-family: inherit` to avoid browser monospace scaling (Chrome and Safari default monospace to 13px instead of 16px).

### Emoji

Emoji are rendered using **Noto Emoji** (loaded via Google Fonts) as a CSS font fallback — no JavaScript, no replacement scripts. This gives emoji a clean monochrome appearance that fits the minimal aesthetic.

### Plugins

- `jekyll-feed` generates `/feed.xml` automatically
- `jekyll-seo-tag` injects meta tags into `<head>` automatically
- Both are declared under `plugins` in `_config.yml` and need no extra configuration

Print styles live in `_sass/mold.scss` under `@media print` — footer is hidden, font size is set to `11pt`.

## Contributing

Issues and pull requests at [yree/mold](https://github.com/yree/mold).

## License

MIT — fork it, build on it, make it yours.
