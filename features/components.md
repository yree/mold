# Building Interfaces

Standard HTML elements — inputs, buttons, dialogs — styled consistently out of the box. Custom components built on top for the patterns that come up in every project.

## Nav

A navigation bar that wraps at narrow widths:

<nav>
  <a href="#">Home</a>
  <a href="#">About</a>
  <a href="#">Work</a>
  <a href="#">Contact</a>
</nav>

## Mark

Inline <mark>highlight</mark> for drawing attention without bold or italic.

## Aside

For notes, warnings, or tips that sit outside the main flow:

<aside>
<p><strong>Note:</strong> This content is supplementary — important enough to call out, not important enough to inline.</p>
</aside>

## Buttons

<nav class="grid">
  <button>Cancel</button>
  <button>Confirm</button>
</nav>

## Forms

<form class="grid">
<label>Name <input type="text" placeholder="Your name" /></label>
<label>Email <input type="email" placeholder="you@example.com" /></label>
<label>Role <input type="text" placeholder="Your role" /></label>
</form>

### All input types

<form>
  <fieldset>
    <legend>Text inputs</legend>
    <p><label for="i-text">Text</label><input id="i-text" type="text" placeholder="Text input"></p>
    <p><label for="i-pass">Password</label><input id="i-pass" type="password" placeholder="Password"></p>
    <p><label for="i-url">URL</label><input id="i-url" type="url" placeholder="https://example.com"></p>
    <p><label for="i-email">Email</label><input id="i-email" type="email" placeholder="name@example.com"></p>
    <p><label for="i-search">Search</label><input id="i-search" type="search" placeholder="Search"></p>
    <p><label for="i-file">File</label><input id="i-file" type="file"></p>
  </fieldset>
  <fieldset>
    <legend>Select</legend>
    <p><label for="i-select">Single</label><select id="i-select"><optgroup label="Options"><option>Option one</option><option>Option two</option><option>Option three</option></optgroup></select></p>
    <p><label for="i-multi">Multiple</label><select id="i-multi" multiple><optgroup label="Options"><option>Option one</option><option>Option two</option><option>Option three</option></optgroup></select></p>
  </fieldset>
  <fieldset>
    <legend>Checkboxes</legend>
    <ul>
      <li><label><input type="checkbox" checked> Option A</label></li>
      <li><label><input type="checkbox"> Option B</label></li>
      <li><label><input type="checkbox"> Option C</label></li>
    </ul>
  </fieldset>
  <fieldset>
    <legend>Radio buttons</legend>
    <ul>
      <li><label><input type="radio" name="r" checked> Choice 1</label></li>
      <li><label><input type="radio" name="r"> Choice 2</label></li>
      <li><label><input type="radio" name="r"> Choice 3</label></li>
    </ul>
  </fieldset>
  <fieldset>
    <legend>Textarea</legend>
    <p><label for="i-ta">Message</label><textarea id="i-ta" rows="4" placeholder="Write here"></textarea></p>
  </fieldset>
  <fieldset>
    <legend>Other</legend>
    <p><label for="i-color">Color</label><input type="color" id="i-color" value="#000000"></p>
    <p><label for="i-range">Range</label><input type="range" id="i-range" value="40"></p>
    <p><label for="i-date">Date</label><input type="date" id="i-date" value="1970-01-01"></p>
  </fieldset>
</form>

## Details

Click to expand — useful for FAQs, supplementary content, or anything that shouldn't be visible by default:

<details>
<summary>Why monospace?</summary>
<p>Monospace fonts make spacing predictable. Every character is the same width, which means layouts built in <code>ch</code> units are consistent across text and UI.</p>
</details>

## Dialog

A modal that makes everything outside inert while open:

<div class="grid">
<button onclick="document.getElementById('dlg-short').showModal()">Short</button>
<button onclick="document.getElementById('dlg-long').showModal()">Long</button>
</div>

<dialog id="dlg-short">
<p>Short dialog.</p>
<form method="dialog"><button>Close</button></form>
</dialog>

<dialog id="dlg-long">
<h2>Longer Dialog</h2>
<p>The dialog caps its width so long content wraps cleanly rather than stretching across the screen.</p>
<hr>
<p>A second section, separated by a rule.</p>
<form method="dialog"><button>Close</button></form>
</dialog>

## Meters

Visual indicators for values with known ranges:

<label>Storage used: <meter value="7" min="0" max="10">7 out of 10</meter></label>
<label>Test coverage: <meter value="0.82">82%</meter></label>
<label>Upload progress: <progress value="60" max="100">60%</progress></label>

## Tabs

Pure CSS tab switcher, no JavaScript:

<div class="tabs">
  <input type="radio" name="demo-tabs" id="dt1" checked>
  <input type="radio" name="demo-tabs" id="dt2">
  <input type="radio" name="demo-tabs" id="dt3">
  <div>
    <label for="dt1">Overview</label>
    <label for="dt2">Details</label>
    <label for="dt3">References</label>
  </div>
  <div><p>The high-level view. Start here to understand what this component does and when to use it.</p></div>
  <div><p>The specifics — behaviour, edge cases, and things to watch out for when integrating.</p></div>
  <div><p>Related reading, prior art, and links to the standards that informed this design.</p></div>
</div>
