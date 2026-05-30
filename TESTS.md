# Tests

## Heading spacing

# A short title

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident.

## A section that follows right after a large paragraph

Sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa quae ab illo inventore veritatis.

### Subsection under a medium paragraph

A short paragraph.

### Another subsection immediately following

Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.

---

## Long headings

# This is a very long page title that intentionally wraps across multiple lines to test overflow and underline clipping behavior

This paragraph follows a wrapping h1. The `====` underline should clip to the text width, not overflow the container. Spacing between the underline and this paragraph should feel consistent with the short-title case above.

## This is a long section heading that also wraps to check that the dash underline clips correctly and does not extend beyond the heading text

Following paragraph. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.

### A reasonably long subsection heading to see bold weight at width

Text after a long h3. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.

---

## Emoji in headings

# 🌱 Growing ideas

Emoji at the start of an h1. The underline should match the full heading width including the emoji character. Sed posuere consectetur est at lobortis. Cras justo odio, dapibus ac facilisis in, egestas eget quam.

## 🔧 Tools and configuration

Emoji in an h2. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam quis risus eget urna mollis ornare vel eu leo.

### ✅ Done items

Emoji in h3 — no underline, just bold. Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam.

---

## Dense content

# Introduction

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.

## Background

Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

## Problem statement

Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.

### Root cause

Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet.

### Proposed solution

At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident.

## Conclusion

Similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio.

---

## Password form

This document is password protected.

<form>
<label>Password <input type="password"></label>
<button>Unlock</button>
</form>

## Mixed form

<form>
<label>Name <input type="text" placeholder="Your name"></label>
<label>Email <input type="email" placeholder="you@example.com"></label>
<label><input type="checkbox"> Subscribe to updates</label>
<label><input type="checkbox"> Agree to terms</label>
<div class="grid">
<button type="reset">Reset</button>
<button type="submit">Submit</button>
</div>
</form>

## Search

<form>
<div class="grid">
<input type="search" placeholder="Search...">
<button>Go</button>
</div>
</form>

## Settings panel

<form>
<fieldset>
<legend>Notifications</legend>
<label><input type="radio" name="notif"> All</label>
<label><input type="radio" name="notif"> Mentions only</label>
<label><input type="radio" name="notif"> None</label>
</fieldset>
<fieldset>
<legend>Theme</legend>
<label><input type="radio" name="theme"> Light</label>
<label><input type="radio" name="theme"> Dark</label>
<label><input type="radio" name="theme"> System</label>
</fieldset>
<button>Save settings</button>
</form>

## Card with content

<div class="grid">
<div class="card">
<b>Storage</b>
<p>Used 2 of 10 GB</p>
<meter value="2" min="0" max="10">2 of 10</meter>
</div>
<div class="card">
<b>Upload</b>
<p>Transferring file...</p>
<progress value="70" max="100">70%</progress>
</div>
</div>

## Inline elements

Text with `inline code`, **bold**, _italic_, and a [link](#).

> Blockquote followed by a details element.

<details>
<summary>More context</summary>
<p>Additional detail that was hidden.</p>
</details>

## Table then form

| Field | Value |
| :---- | :---- |
| Name  | Alice |
| Role  | Admin |

<form>
<label>Override role <input type="text" value="Admin"></label>
<button>Update</button>
</form>

## Nested grid

<div class="grid">
<div>
<input readonly value="A">
<input readonly value="B">
</div>
<div class="grid">
<input readonly value="C">
<input readonly value="D">
</div>
</div>
