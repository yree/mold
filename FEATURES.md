---
layout: default
---

# Features

[Core](#core) · [Components](#components)

## Core

Everything in this section is part of the core CSS bundle — typography, layout, and dark mode, always loaded and under 1KB gzipped (`_sass/mold.scss`).

### Headings

# H1
## H2
### H3
#### H4
##### H5
###### H6

### Paragraphs

_Quisque egestas convallis ipsum, ut sollicitudin risus tincidunt._

**Maecenas interdum malesuada egestas.**

### Lists

#### Ordered list

1. First item
2. Second item
3. Third item

#### Unordered list

- Top level
  - Nested level
    - Nested level

#### Task list

- [ ] Incomplete item
  - [x] Completed sub-item
  - [x] Completed sub-item
  - [ ] Incomplete sub-item

#### Description list

Sun
: Daytime example

Moon
: Nighttime example

### Block quote

> Example block quote.
>
> -- **Source**

### Horizontal rule

---

Text after a horizontal rule.

### Images

Regular image:
![Day Landscape](https://media.githubusercontent.com/media/yree/dump/refs/heads/main/yree/yree-cover.png)

Dark-mode inverted image:
![Night Landscape](https://media.githubusercontent.com/media/yree/dump/refs/heads/main/yree/yree-cover.png){:.ioda}

### Tables

| Name             | Role            | Focus         |
| :--------------- | :-------------- | ------------: |
| Maria Anders     | Lead Navigator  | Cartography   |
| Helen Bennett    | Tech Specialist | Communication |
| Giovanni Rovelli | Research Lead   | Analysis      |

### Links

<https://yree.io>

### Footnotes

Footnote example[^footnote], plus another one[^one-more].

### Code

#### Inline code

This is `inline code`.

#### Plain text

```text
Plain text example.
```

#### Bash

```bash
if [ $? -ne 0 ]; then
  echo "Command failed.";
  #adapt and overcome
fi;
```

#### Keyboard input

Press <kbd>Ctrl</kbd> + <kbd>C</kbd> to copy, and <kbd>Ctrl</kbd> + <kbd>V</kbd> to paste.

### Math

Powered by [**MathJax**](https://www.mathjax.org/):

$$
\begin{equation}
  \sum_{n=1}^\infty 1/n^2 = \frac{\pi^2}{6}
\end{equation}
$$

### Mermaid

{% include mermaid.html content="
graph TD;
    A[Markdown]-->B[Core];
    A-->C[Components];"
%}

[^footnote]: First footnote.
[^one-more]: Second footnote.

---

## Components

These elements are part of the components bundle — loaded when `css: full` (default), keeping the full stylesheet under 2KB gzipped (`_sass/mold-components.scss`). Set `css: core` to exclude them entirely.

### Buttons

<nav class="grid">
    <button>Reset</button>
    <button>Save</button>
</nav>

### Forms

<form class="grid">
<label>First name <input type="text" placeholder="First name" /></label>
<label>Last name <input type="text" placeholder="Last name" /></label>
<label>Age <input type="text" value="30" /></label>
</form>

#### Input types

<form>
    <fieldset id="forms__input">
        <legend>Inputs</legend>
        <div>
            <p><label for="input__text">Text</label><input id="input__text" type="text" placeholder="Text input"></p>
            <p><label for="input__password">Password</label><input id="input__password" type="password" placeholder="Password"></p>
            <p><label for="input__webaddress">URL</label><input id="input__webaddress" type="url" placeholder="https://example.com"></p>
            <p><label for="input__emailaddress">Email</label><input id="input__emailaddress" type="email" placeholder="name@example.com"></p>
            <p><label for="input__phone">Phone</label><input id="input__phone" type="tel" placeholder="(555) 123-4567"></p>
            <p><label for="input__search">Search</label><input id="input__search" type="search" placeholder="Search"></p>
            <p><label for="input__text2">Number</label><input id="input__text2" type="number" placeholder="0"></p>
            <p><label for="input__file">File</label><input id="input__file" type="file"></p>
        </div>
    </fieldset>
    <fieldset id="forms__select">
        <legend>Selects</legend>
        <p><label for="select">Single select</label><select id="select"><optgroup label="Options"><option>Option one</option><option>Option two</option><option>Option three</option></optgroup></select></p>
        <p><label for="select_multiple">Multi select</label><select id="select_multiple" multiple="multiple"><optgroup label="Options"><option>Option one</option><option>Option two</option><option>Option three</option></optgroup></select></p>
    </fieldset>
    <fieldset id="forms__checkbox">
        <legend>Checkboxes</legend>
        <ul>
            <li><label for="checkbox1"><input id="checkbox1" name="checkbox" type="checkbox" checked="checked"> Option A</label></li>
            <li><label for="checkbox2"><input id="checkbox2" name="checkbox" type="checkbox"> Option B</label></li>
            <li><label for="checkbox3"><input id="checkbox3" name="checkbox" type="checkbox"> Option C</label></li>
        </ul>
    </fieldset>
    <fieldset id="forms__radio">
        <legend>Radio buttons</legend>
        <ul>
            <li><label for="radio1"><input id="radio1" name="radio" type="radio" checked="checked"> Choice 1</label></li>
            <li><label for="radio2"><input id="radio2" name="radio" type="radio"> Choice 2</label></li>
            <li><label for="radio3"><input id="radio3" name="radio" type="radio"> Choice 3</label></li>
        </ul>
    </fieldset>
    <fieldset id="forms__textareas">
        <legend>Textarea</legend>
        <p><label for="textarea">Message</label><textarea id="textarea" rows="8" cols="48" placeholder="Write here" spellcheck="false"></textarea></p>
    </fieldset>
    <fieldset id="forms__html5">
        <legend>Other inputs</legend>
        <p><label for="ic">Color</label><input type="color" id="ic" value="#000000"></p>
        <p><label for="in">Number</label><input type="number" id="in" min="0" max="10" value="5"></p>
        <p><label for="ir">Range</label><input type="range" id="ir" value="10"></p>
        <p><label for="idd">Date</label><input type="date" id="idd" value="1970-01-01"></p>
    </fieldset>
</form>

### Grid layout

<input readonly value="1" />
<div class="grid"><input readonly value="1" /><input readonly value="2" /></div>
<div class="grid"><input readonly value="1" /><input readonly value="2" /><input readonly value="3" /></div>
<div class="grid"><input readonly value="1" /><input readonly value="2" /><input readonly value="3" /><input readonly value="4" /></div>

### Details

<details>
<summary>More information</summary>
<p>Hidden content appears here.</p>
</details>

### Dialog

<div class="grid">
<button onclick="document.getElementById('dialog-short').showModal()">Short</button>
<button onclick="document.getElementById('dialog-long').showModal()">Long</button>
</div>

<dialog id="dialog-short">
<p>Short dialog.</p>
<form method="dialog"><button>Close</button></form>
</dialog>

<dialog id="dialog-long">
<h2>Dialog Title</h2>
<p>This dialog contains a much longer paragraph of text to demonstrate that the maximum width is capped at 60 characters, after which content wraps to the next line rather than expanding the dialog further.</p>
<hr>
<p>Additional content below the rule.</p>
<p>One more paragraph to close things out.</p>
<form method="dialog"><button>Close</button></form>
</dialog>

### Meters and progress

<label>Storage: <meter value="2" min="0" max="10">2 out of 10</meter></label>
<label>Completion: <meter value="0.6">60%</meter></label>
<label>Upload: <progress value="70" max="100">70%</progress></label>

### Cards

<div class="grid">
<div class="card"><b>Static card</b><p>This card is <i>not clickable</i>.</p></div>
<div href="#" class="card"><b>Linked card</b><p>This card is <i>clickable</i>.</p></div>
</div>
