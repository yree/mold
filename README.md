# mold 🍄

A **m**inimal **o**ptimized **l**ightweight **d**esign for Github Pages.

Inspired from [riggraz/no-style-please](https://github.com/riggraz/no-style-please).

## Features ✨
- 👀 A WYWIWYS theme (What You Write Is What You See)
- ⚡️ Fast
- 🌓 Light theme (dark theme [coming soon](https://github.com/yree/mold/issues/7#issuecomment-2056735774))
- 📱 Responsive
- 📖 Content-first (typography optimized for maximum readability)
- 🔍 SEO optimized (uses Jekyll SEO Tag)
- 📰 RSS feed (uses Jekyll Feed)
- 🚀 Made for GitHub Pages

## Usage 🛠

### Setup 🏗️
- Create a github pages repo, see [steps](https://docs.github.com/en/pages/getting-started-with-github-pages/creating-a-github-pages-site).
- Add a `_config.yml` file (or copy the one from this repo), and insert below line:
    ```yaml
    remote-theme: yree/mold
    ``` 
- See site settings to further customize the theme.

### Organization 📂
- The theme operates on the WYWIWYS (wee-wee-wiz) principle
- The `README.md` at the repo root acts as the index for the GitHub Page
- To create more posts add `.md` files and folders to your repo
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

## Contributing 🤝
Bug reports and pull requests are welcome on GitHub at [yree/mold](https://github.com/yree/mold). This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the Contributor Covenant code of conduct.

## Development (TODO) 🚧
To set up your environment to develop this theme, run `bundle install`.

Your theme is set up just like a normal Jekyll site! To test your theme, run `bundle exec jekyll serve` and open your browser at [http://localhost:4000](http://localhost:4000). This starts a Jekyll server using your theme. Add pages, documents, data, etc. like normal to test your theme’s contents. As you make modifications to your theme and to your content, your site will regenerate, and you should see the changes in the browser after a refresh, just like normal.

When your theme is released, only the files in `_layouts`, `_includes`, `_sass`, and `assets` tracked with Git will be bundled. To add a custom directory to your theme-gem, please edit the regexp in `no-style-please.gemspec` accordingly.

## License 📃
The theme is available as open source under the terms of the [MIT License](LICENSE).
