---
layout: default
---

# 🌟 Static Features

## 🌈 Headings

# H1 - heading

## H2 - heading

### H3 - heading

#### H4 - heading

##### H5 - heading

###### H6 - heading

## 📝 Paragraph

Quisque egestas convallis ipsum, ut sollicitudin risus tincidunt a. Maecenas interdum malesuada egestas. Duis consectetur porta risus, sit amet vulputate urna facilisis ac. Phasellus semper dui non purus ultrices sodales.

## 📋 Lists

### Ordered list

1. Firstly
2. Secondly
3. Thirdly

### Unordered list

- Chapter
  - Section
    - Paragraph

### ToDo list

- [ ] Job
  - [x] Step 1
  - [x] Step 2
  - [ ] Step 3

### Description list

Sun
: the star around which the earth orbits

Moon
: the natural satellite of the earth, visible by reflected light from the sun

## 📌 Block Quote

> This line shows the _block quote_.
>
> -- **author**

## Horizontal Break

---

## 🖼️ Images

Regular image:
![Regular image example](https://media.githubusercontent.com/media/yree/dump/refs/heads/main/yree/yree-cover.png)

Image with ioda class:
![Ioda image example](https://media.githubusercontent.com/media/yree/dump/refs/heads/main/yree/yree-cover.png){:.ioda}

### 📝 Note

> [!NOTE]
> Essential details that users should not overlook, even when browsing quickly.

### 💡 Tip

> [!TIP]
> Additional advice to aid users in achieving better outcomes.

### 🔑 Important

> [!IMPORTANT]
> Vital information required for users to attain success.

### ⚠️ Warning

> [!WARNING]
> Urgent content that requires immediate user focus due to possible risks.

### 🚨 Caution

> [!CAUTION]
> Possible negative outcomes resulting from an action.

## 📊 Tables

| Company                      | Contact          | Country |
| :--------------------------- | :--------------- | ------: |
| Alfreds Futterkiste         | Maria Anders     | Germany |
| Island Trading              | Helen Bennett    |      UK |
| Magazzini Alimentari Riuniti| Giovanni Rovelli |   Italy |

## 🔗 Links

<http://127.0.0.1:4000>

## 📄 Footnote

Click the hook will locate the footnote[^footnote], and here is another footnote[^fn-nth-2].

## 💻 Code blocks

### Inline code

This is an example of `Inline Code`.

### Common

```text
This is a common code snippet, without syntax highlight and line number.
```

### Specific Language

```bash
if [ $? -ne 0 ]; then
  echo "The command was not successful.";
  #do the needful / exit
fi;
```

### Keyboard Input

Press <kbd>Ctrl</kbd> + <kbd>C</kbd> to copy, <kbd>Ctrl</kbd> + <kbd>V</kbd> to paste.

## ➗ Mathematics

The mathematics powered by [**MathJax**](https://www.mathjax.org/):

$$
\begin{equation}
  \sum_{n=1}^\infty 1/n^2 = \frac{\pi^2}{6}
\end{equation}
$$

## 🌊 Mermaid SVG

{% include mermaid.html content="
graph TD;
    A-->B;
    A-->C;"
%}

[^footnote]: The footnote source
[^fn-nth-2]: The 2nd footnote source
