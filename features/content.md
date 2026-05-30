# Beyond Prose

Not everything fits in paragraphs. Footnotes for citations, tables for comparisons, code for precision.

## Footnotes

A footnote[^fn1] lets you cite or clarify[^fn2] without breaking the sentence. Definitions appear at the bottom of the page with a back-link.

## Tables

Good for structured comparisons. Columns can be left, centre, or right aligned:

| Element   | When to use                   | Alignment |
| :-------- | :---------------------------- | --------: |
| Table     | Structured comparisons        |      Data |
| Code      | Exact syntax matters          |   Literal |
| Footnote  | Citation without interruption |    Inline |

Tables work best when the data is genuinely tabular — rows that mean the same kind of thing, columns that apply consistently across all rows. For anything more narrative, a list or paragraph reads better.

## Code

Inline `code` for names and short expressions. Blocks for anything longer:

```bash
if [ $? -ne 0 ]; then
  echo "Command failed."
fi
```

For keyboard combinations: <kbd>Ctrl</kbd> + <kbd>C</kbd> to copy, <kbd>Ctrl</kbd> + <kbd>V</kbd> to paste.

## Links

Bare URL: <https://yree.io>

Inline: [mold on GitHub](https://github.com/yree/mold)

[^fn1]: Fowler's *Modern English Usage* makes this case well — structure should serve the content, not impose on it.
[^fn2]: Like this. Click the arrow to return.
