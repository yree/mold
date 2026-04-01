# Dynamic Elements

This page demonstrates styled interactive elements.

## Buttons

Basic button styles:

<nav class="grid">
    <button>Reset</button>
    <button class="primary">Save</button>
</nav>

## Forms

Basic form fields:

<form class="grid">
<label>First name <input type="text" placeholder="First name" /></label>
<label>Last name <input type="text" placeholder="Last name" /></label>
<label>Age <input type="text" value="30" /></label>
</form>

### Input types

Common input elements:

<form>
    <fieldset id="forms__input">
        <legend>Inputs</legend>

        <div class="table rows">
            <p>
                <label for="input__text">Text</label>
                <input id="input__text" type="text" placeholder="Text input">
            </p>
            <p>
                <label for="input__password">Password</label>
                <input id="input__password" type="password" placeholder="Password">
            </p>
            <p>
                <label for="input__webaddress">URL</label>
                <input id="input__webaddress" type="url" placeholder="https://example.com">
            </p>
            <p>
                <label for="input__emailaddress">Email</label>
                <input id="input__emailaddress" type="email" placeholder="name@example.com">
            </p>
            <p>
                <label for="input__phone">Phone</label>
                <input id="input__phone" type="tel" placeholder="(555) 123-4567">
            </p>
            <p>
                <label for="input__search">Search</label>
                <input id="input__search" type="search" placeholder="Search">
            </p>
            <p>
                <label for="input__text2">Number</label>
                <input id="input__text2" type="number" placeholder="0">
            </p>
            <p>
                <label for="input__file">File</label>
                <input id="input__file" type="file">
            </p>
        </div>
    </fieldset>

    <fieldset id="forms__select">
        <legend>Selects</legend>
        <p>
            <label for="select">Single select</label>
            <select id="select">
                <optgroup label="Options">
                    <option>Option one</option>
                    <option>Option two</option>
                    <option>Option three</option>
                </optgroup>
            </select>
        </p>
        <p>
            <label for="select_multiple">Multi select</label>
            <select id="select_multiple" multiple="multiple">
                <optgroup label="Options">
                    <option>Option one</option>
                    <option>Option two</option>
                    <option>Option three</option>
                </optgroup>
            </select>
        </p>
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
        <p>
            <label for="textarea">Message</label>
            <textarea id="textarea" rows="8" cols="48" placeholder="Write here" spellcheck="false"></textarea>
        </p>
    </fieldset>

    <fieldset id="forms__html5" class="table rows">
        <legend>Other inputs</legend>
        <p>
            <label for="ic">Color</label>
            <input type="color" id="ic" value="#000000">
        </p>
        <p>
            <label for="in">Number</label>
            <input type="number" id="in" min="0" max="10" value="5">
        </p>
        <p>
            <label for="ir">Range</label>
            <input type="range" id="ir" value="10">
        </p>
        <p>
            <label for="idd">Date</label>
            <input type="date" id="idd" value="1970-01-01">
        </p>
    </fieldset>
</form>

## Grid layout

Grid examples:

<input readonly value="1" />
<div class="grid"><input readonly value="1" /><input readonly value="2" /></div>
<div class="grid"><input readonly value="1" /><input readonly value="2" /><input readonly value="3" /></div>
<div class="grid"><input readonly value="1" /><input readonly value="2" /><input readonly value="3" /><input readonly value="4" /></div>

## Details

Expandable content:

<details>
<summary>
More information
</summary>
<p>
Hidden content appears here.
</p>
</details>

## Meters and progress

### Meters

<label>Storage: <meter value="2" min="0" max="10">2 out of 10</meter></label>
<label>Completion: <meter value="0.6">60%</meter></label>

### Progress

<label>Upload: <progress value="70" max="100">70%</progress></label>

## Cards

Card styles:

<div class="grid">

<div class="card">
  <b>Static card</b>
  <p>This card is <i>not clickable</i>.</p>
</div>

<div href="#" class="card">
  <b>Linked card</b>
  <p>This card is <i>clickable</i>.</p>
</div>

</div>
