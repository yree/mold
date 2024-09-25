---
layout: default
---

# 🌟 Features

<hr>

## 🌈 Headings

# H1 - heading

## H2 - heading

### H3 - heading

#### H4 - heading

##### H5 - heading

###### H6 - heading

## 📝 Paragraph

Quisque egestas convallis ipsum, ut sollicitudin risus tincidunt a. Maecenas interdum malesuada egestas. Duis consectetur porta risus, sit amet vulputate urna facilisis ac. Phasellus semper dui non purus ultrices sodales. Aliquam ante lorem, ornare a feugiat ac, finibus nec mauris. Vivamus ut tristique nisi. Sed vel leo vulputate, efficitur risus non, posuere mi. Nullam tincidunt bibendum rutrum. Proin commodo ornare sapien. Vivamus interdum diam sed sapien blandit, sit amet aliquam risus mattis. Nullam arcu turpis, mollis quis laoreet at, placerat id nibh. Suspendisse venenatis eros eros.

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
| Alfreds Futterkiste          | Maria Anders     | Germany |
| Island Trading               | Helen Bennett    |      UK |
| Magazzini Alimentari Riuniti | Giovanni Rovelli |   Italy |

## 🔗 Links

<http://127.0.0.1:4000>

## 📄 Footnote

Click the hook will locate the footnote[^footnote], and here is another footnote[^fn-nth-2].

## 💻 Inline code

This is an example of `Inline Code`.

## 📁 Filepath

Here is the `/path/to/the/file.extend`

## 💻 Code blocks

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

### Specific filename

```sass
@import
  "colors/light-typography",
  "colors/dark-typography";
```

## ➗ Mathematics

The mathematics powered by [**MathJax**](https://www.mathjax.org/):

$$
\begin{equation}
  \sum_{n=1}^\infty 1/n^2 = \frac{\pi^2}{6}
\end{equation}
$$

When $$a \ne 0$$, there are two solutions to $$ax^2 + bx + c = 0$$ and they are

$$ x = {-b \pm \sqrt{b^2-4ac} \over 2a} $$

A long equation:

$$
1 + x + \frac{x^2}{2!} + \frac{x^3}{3!} + \frac{x^4}{4!} + \frac{x^5}{5!} + \frac{x^6}{6!} + \frac{x^7}{7!} + \frac{x^8}{8!} + \frac{x^9}{9!} + \frac{x^{10}}{10!} + \frac{x^{11}}{11!} + \frac{x^{12}}{12!} + \frac{x^{13}}{13!} + \frac{x^{14}}{14!} + \frac{x^{15}}{15!} + \frac{x^{16}}{16!} + \frac{x^{17}}{17!} + \frac{x^{18}}{18!} + \frac{x^{19}}{19!} + \frac{x^{20}}{20!}
$$

## 🌊 Mermaid SVG

{% include mermaid.html content="
graph TD;
    A-->B;
    A-->C;"
%}

## Buttons

Here are some buttons:

<nav>
    <button>Reset</button>
    <button>Save</button>
</nav>

## Forms

And some forms:

<form class="grid">
<label>First name <input type="text" placeholder="Placeholder..." /></label>
<label>Last name <input type="text" placeholder="Text goes here..." /></label>
<label>Age <input type="text" value="30" /></label>
</form>

## Grids

Add the `grid` class to a container to divide up the horizontal space evenly for the cells.
Here are six grids with increasing cell count:

<input readonly value="1" />
<div class="grid"><input readonly value="1" /><input readonly value="2" /></div>
<div class="grid"><input readonly value="1" /><input readonly value="2" /><input readonly value="3" /></div>
<div class="grid"><input readonly value="1" /><input readonly value="2" /><input readonly value="3" /><input readonly value="4" /></div>
<div class="grid"><input readonly value="1" /><input readonly value="2" /><input readonly value="3" /><input readonly value="4" /><input readonly value="5" /></div>
<div class="grid"><input readonly value="1" /><input readonly value="2" /><input readonly value="3" /><input readonly value="4" /><input readonly value="5" /><input readonly value="6" /></div>

## Details and Summary

<details>
<summary>
A short summary, see full.
</summary>
<p>
The full description of the contents
</p>
</details>
        
## 🔄 Reverse Footnote

[^footnote]: The footnote source
[^fn-nth-2]: The 2nd footnote source
