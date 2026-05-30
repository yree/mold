# Arranging Things

**Box** and **Card** are containers — they hold content. **Grid** and **Flex** are layouts — they arrange those containers. **Scroll** adds a fixed-height overflow area to either.

## Box

A simple bordered container — each box is only as tall as its content:

<div class="grid">
  <div class="box"><p>Small.</p></div>
  <div class="box"><p>Medium — a bit more content here than the first.</p></div>
  <div class="box"><p>Large — the most content of the three. All three heights differ because boxes don't stretch to fill their row.</p></div>
</div>

## Card

Cards stretch to fill the row height — all siblings end up the same height regardless of content:

<div class="grid">
  <div class="card"><p>Small.</p></div>
  <div class="card"><p>Medium — more content than the first card.</p></div>
  <div class="card"><p>Large — the most content. All three cards stretch to match this height. Compare to the boxes above.</p></div>
</div>

Cards can be static or linked. Linked cards get hover and press effects:

<div class="grid">
  <div class="card"><p><strong>Static card</strong></p><p>Not clickable.</p></div>
  <a href="#card" class="card"><p><strong>Linked card</strong></p><p>Clickable — hover for shadow, click for press.</p></a>
</div>

## Grid

Equal columns regardless of child count:

<input readonly value="1" />
<div class="grid"><input readonly value="1" /><input readonly value="2" /></div>
<div class="grid"><input readonly value="1" /><input readonly value="2" /><input readonly value="3" /></div>
<div class="grid"><input readonly value="1" /><input readonly value="2" /><input readonly value="3" /><input readonly value="4" /></div>

## Flex

A wrapping row that distributes children evenly. Resize the window to see the columns reflow to a single stack:

<div class="flex">
  <div class="box">
    <p><strong>Typography</strong></p>
    <p>Headings, paragraphs, lists, blockquotes, and horizontal rules.</p>
  </div>
  <div class="box">
    <p><strong>Components</strong></p>
    <p>Buttons, forms, details, dialogs, meters, and tabs.</p>
  </div>
  <div class="box">
    <p><strong>Layout</strong></p>
    <p>Flex, grid, scroll, box, and card.</p>
  </div>
</div>

## Scroll

A fixed-height scrollable area. Default height is `10ch`, overridable with `--scroll-h`:

<div class="scroll">
  <p>CSS</p><p>HTML</p><p>Markdown</p><p>Jekyll</p>
  <p>Sass</p><p>Liquid</p><p>MathJax</p><p>Mermaid</p>
</div>

Custom height via `style="--scroll-h: 6ch"`:

<div class="scroll" style="--scroll-h: 6ch">
  <p>CSS</p><p>HTML</p><p>Markdown</p><p>Jekyll</p>
  <p>Sass</p><p>Liquid</p><p>MathJax</p><p>Mermaid</p>
</div>

Inside `.flex` — the scroll area stretches to match the tallest non-scrollable sibling:

<div class="flex">
  <div class="scroll">
    <p>CSS</p><p>HTML</p><p>Markdown</p><p>Jekyll</p>
    <p>Sass</p><p>Liquid</p><p>MathJax</p><p>Mermaid</p>
  </div>
  <div class="card">
    <p><strong>Related technologies</strong></p>
    <p>The scroll area on the left matches this card's height and scrolls independently within it.</p>
  </div>
</div>
