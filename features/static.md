# Static Elements

This page demonstrates markdown rendering in the theme.

## Headings

# H1
## H2
### H3
#### H4
##### H5
###### H6

## Paragraphs

_Quisque egestas convallis ipsum, ut sollicitudin risus tincidunt._

**Maecenas interdum malesuada egestas.**

## Lists

### Ordered list

1. First item
2. Second item
3. Third item

### Unordered list

- Top level
  - Nested level
    - Nested level

### Task list

- [ ] Incomplete item
  - [x] Completed sub-item
  - [x] Completed sub-item
  - [ ] Incomplete sub-item

### Description list

Sun
: Daytime example

Moon
: Nighttime example

## Block quote

> Example block quote.
>
> -- **Source**

## Horizontal rule

---

Text after a horizontal rule.

## Images

Regular image:
![Day Landscape](https://media.githubusercontent.com/media/yree/dump/refs/heads/main/yree/yree-cover.png)

Dark-mode inverted image:
![Night Landscape](https://media.githubusercontent.com/media/yree/dump/refs/heads/main/yree/yree-cover.png){:.ioda}

## Tables

| Name             | Role            | Focus         |
| :--------------- | :-------------- | ------------: |
| Maria Anders     | Lead Navigator  | Cartography   |
| Helen Bennett    | Tech Specialist | Communication |
| Giovanni Rovelli | Research Lead   | Analysis      |

## Links

<https://yree.io>

## Footnotes

Footnote example[^footnote], plus another one[^one-more].

## Code

### Inline code

This is `inline code`.

### Plain text

```text
Plain text example.
```

### Bash

```bash
if [ $? -ne 0 ]; then
  echo "Command failed.";
  #adapt and overcome
fi;
```

### Keyboard input

Press <kbd>Ctrl</kbd> + <kbd>C</kbd> to copy, and <kbd>Ctrl</kbd> + <kbd>V</kbd> to paste.

## Math

Powered by [**MathJax**](https://www.mathjax.org/):

$$
\begin{equation}
  \sum_{n=1}^\infty 1/n^2 = \frac{\pi^2}{6}
\end{equation}
$$

## Mermaid

{% include mermaid.html content="
graph TD;
    A[Markdown]-->B[Static];
    A-->C[Dynamic];"
%}

[^footnote]: First footnote.
[^one-more]: Second footnote.
