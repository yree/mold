---
layout: default
---

# Tests

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
