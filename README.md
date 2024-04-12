# mold ✒️

**M**inimal **O**ptimized **L**ightweight **D**esign for Github Pages

Inspired from [riggraz/no-style-please](https://github.com/riggraz/no-style-please).

## Features ✨
- A WYWIWYS theme (What You Write Is What You See) 👀
- Fast ⚡️
- Light, dark, and auto modes 🌞🌚
- Responsive 📱
- Content-first (typography optimized for maximum readability) 📖
- SEO optimized (uses Jekyll SEO Tag) 🔍
- RSS feed (uses Jekyll Feed) 📰
- Made for GitHub Pages 🚀

## Usage 🛠
- Setup your github pages repo
- To your `_config.yml`, add:
```yaml
remote-theme: 8hantanu/mold
```
- Edit `_config.yml` file to further customize your blog.

## Organization 📂
- The theme operates on the WYWIWYS (wee-wee-wiz) principle
- The `README.md` at the repo root acts as the index for the GitHub Page
- To create posts add `.md` files and folders in the same repo
- Link these `.md` files across each other (refer to this repo structure).

## Pro tips 💡
### Site Settings
You can change things such as the name of the blog, the author, the appearance of the theme (light, dark, or auto), how dates are formatted, etc. Customizable fields should be straightforward to understand. Still, `_config.yml` contains some comments to help you understand what each field does.
### Dark mode for images
This theme provides dark mode by inverting all colors of the light mode through the CSS `invert()` function. This approach would also invert the color of all images, but, since this is not the behavior one would expect, images are not inverted by default.

However, if you would like to force the color inversion on a specific image, you can do so by applying `class="ioda"` to that image (“ioda” stands for “invert on dark appearance”). See the image in the overview post for an example of this approach. Note that color inversion will take place only when the theme has a dark appearance!

For example, if you have a black and white image, it could make sense to invert it in dark mode. On the other hand, a colorful image will probably look bad if inverted.

## Contributing 🤝
Bug reports and pull requests are welcome on GitHub at [8hantanu/mold](https://github.com/8hantanu/mold). This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the Contributor Covenant code of conduct.

## Development (TODO) 🚧
To set up your environment to develop this theme, run `bundle install`.

Your theme is set up just like a normal Jekyll site! To test your theme, run `bundle exec jekyll serve` and open your browser at [http://localhost:4000](http://localhost:4000). This starts a Jekyll server using your theme. Add pages, documents, data, etc. like normal to test your theme’s contents. As you make modifications to your theme and to your content, your site will regenerate, and you should see the changes in the browser after a refresh, just like normal.

When your theme is released, only the files in `_layouts`, `_includes`, `_sass`, and `assets` tracked with Git will be bundled. To add a custom directory to your theme-gem, please edit the regexp in `no-style-please.gemspec` accordingly.

## License 📃
The theme is available as open source under the terms of the [MIT License](LICENSE).
