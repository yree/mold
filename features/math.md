# Math and Diagrams

Equations and diagrams rendered client-side — no build step, no static images to maintain.

## Math

Written in LaTeX, rendered by [MathJax](https://www.mathjax.org/). Block equations:

$$
\begin{equation}
  \sum_{n=1}^\infty \frac{1}{n^2} = \frac{\pi^2}{6}
\end{equation}
$$

Inline math works too — the Pythagorean theorem is $$a^2 + b^2 = c^2$$.

## Diagrams

Written as text, rendered by [Mermaid](https://mermaid.js.org/). Several chart types are supported:

### Flowchart

{% include mermaid.html content="
graph LR;
    Markdown-->HTML;
    HTML-->Core;
    HTML-->Components;
    Components-->UI;"
%}

### Sequence diagram

{% include mermaid.html content="
sequenceDiagram
    Browser->>Jekyll: build request
    Jekyll->>Browser: HTML
    Browser->>CDN: load fonts
    CDN->>Browser: JetBrains Mono;"
%}

### State diagram

{% include mermaid.html content="
stateDiagram-v2
    [*] --> Draft
    Draft --> Review : submit
    Review --> Draft : revise
    Review --> Published : approve
    Published --> [*]"
%}

### Class diagram

{% include mermaid.html content="
classDiagram
    Mold <|-- Core
    Mold <|-- Components
    Core : typography()
    Core : darkMode()
    Components : buttons()
    Components : forms()
    Components : layout()"
%}
