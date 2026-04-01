# mold 🍄

**A minimal optimized lightweight design.**

Inspired from [no-style-please](https://github.com/riggraz/no-style-please) and [the-monospace-web](https://github.com/owickstrom/the-monospace-web).

> **"Simplicity is the ultimate sophistication."**  
> -- Leonardo da Vinci

## Features

- Fast
- Light and dark
- Responsive
- Content-first typography
- SEO and RSS
- Mathjax support
- Mermaid support

Also see:

- [Static Elements](features/static)
- [Dynamic Elements](features/dynamic)

## Usage

Create a GitHub Pages repo and set the remote theme in `_config.yml`:

```yaml
remote-theme: yree/mold
```

- Edit `_config.yml` to customize the site.
- `README.md` is the home page. Add more `.md` files or folders for more pages, then link between them.
- For dark-mode image inversion, apply `class="ioda"` to the images you want inverted.

## Development

For local development:

- `bundle install`
- `bundle exec jekyll serve`
- Preview at [http://localhost:4000](http://localhost:4000)
- Update `mold.gemspec` if you need extra bundled files or directories

Issues and pull requests at [yree/mold](https://github.com/yree/mold). Please follow the [Contributor Covenant](http://contributor-covenant.org/) code of conduct.

## License

The theme is available as open source under the terms of the [MIT License](LICENSE).
