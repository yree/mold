---
layout: default
---

# mold 🍄

A **m**inimal **o**ptimized **l**ightweight **d**esign for Github Pages.

Inspired from [riggraz/no-style-please](https://github.com/riggraz/no-style-please).

> **"Simplicity is the ultimate sophistication."**  
> -- Leonardo da Vinci

## Features ✨
- 👀 A WYWIWYS theme (What You Write Is What You See)
- ⚡️ Fast
- 🌓 Light theme (dark theme [coming soon](https://github.com/yree/mold/issues/7#issuecomment-2056735774))
- 📱 Responsive
- 📖 Content-first (typography optimized for maximum readability)
- 🔍 SEO optimized (uses Jekyll SEO Tag)
- 📰 RSS feed (uses Jekyll Feed)
- ➗ Mathjax support $$e^{i\pi} = -1$$
- 🧜‍♀️ Mermaid support (coming soon)
{% include mermaid.html content="
graph TD;
    A-->B;
    A-->C;" %}
- 🚀 Made for GitHub Pages


## Usage 🛠️

### Setup 🏗️
- Create a github pages repo, see [steps](https://docs.github.com/en/pages/getting-started-with-github-pages/creating-a-github-pages-site).
- Add a `_config.yml` file (or copy the one from this repo), and insert below line:
    ```yaml
    remote-theme: yree/mold
    ``` 
- See site settings to further customize the theme.

### Organization 📂
- The theme operates on the WYWIWYS (wee-wee-wiz) principle.
- The `README.md` at the repo root acts as the index for the GitHub Page.
- To create more posts add `.md` files and folders to your repo.
- Link these `.md` files across each other (refer to this repo structure).

### Pro tips 💡

#### Site Settings
- Customize your blog further by editing the `_config.yml` file.
- Adjust the blog's name, author, theme appearance, date formatting, and more.
- The file includes comments to guide you through each customizable field.

#### Dark Mode for Images
- The theme's dark mode is achieved through CSS `invert()` function.
- Images aren't inverted by default to maintain expected appearance.
- Apply `class="ioda"` to specific images to force color inversion.

## Development 📦
- Run `bundle install` to set up your environment.
- Start the server with `bundle exec jekyll serve`.
- Modify your theme and content as needed, preview your theme at [http://localhost:4000](http://localhost:4000).
- Only specific files and directories are bundled. Adjust `mold.gemspec` to include custom directories if necessary.


## Contributing 🤝
Feel free to report bugs or send pull requests over on GitHub at [yree/mold](https://github.com/yree/mold). Please adhere to the [Contributor Covenant](http://contributor-covenant.org/) code of conduct.

## License 📃
The theme is available as open source under the terms of the [MIT License](LICENSE).
