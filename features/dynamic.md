---
layout: default
---

# 🌟 Dynamic Features

## Buttons

Here are some buttons:

<nav class="grid">
    <button>Reset</button>
    <button class="primary">Save</button>
</nav>

## Forms

Basic form elements:

<form class="grid">
<label>First name <input type="text" placeholder="Placeholder..." /></label>
<label>Last name <input type="text" placeholder="Text goes here..." /></label>
<label>Age <input type="text" value="30" /></label>
</form>

### Radio Button Group

<fieldset>
  <legend>Choose programming language</legend>
  <label><input type="radio" name="lang" value="python"> Python</label>
  <label><input type="radio" name="lang" value="javascript"> JavaScript</label>
  <label><input type="radio" name="lang" value="ruby"> Ruby</label>
</fieldset>

### Input Fields

<form>
    <fieldset id="forms__input">
        <legend>Input fields</legend>
    
        <div class="table rows">
            <p>
                <label for="input__text">Text Input</label>
                <input id="input__text" type="text" placeholder="Text Input">
            </p>
            <p>
                <label for="input__password">Password</label>
                <input id="input__password" type="password" placeholder="Type your Password">
            </p>
            <p>
                <label for="input__webaddress">Web Address</label>
                <input id="input__webaddress" type="url" placeholder="https://yoursite.com">
            </p>
            <p>
                <label for="input__emailaddress">Email Address</label>
                <input id="input__emailaddress" type="email" placeholder="name@email.com">
            </p>
            <p>
                <label for="input__phone">Phone Number</label>
                <input id="input__phone" type="tel" placeholder="(999) 999-9999">
            </p>
            <p>
                <label for="input__search">Search</label>
                <input id="input__search" type="search" placeholder="Enter Search Term">
            </p>
            <p>
                <label for="input__text2">Number Input</label>
                <input id="input__text2" type="number" placeholder="Enter a Number">
            </p>
            <p>
                <label for="input__file">File Input</label>
                <input id="input__file" type="file">
            </p>
        </div>
    </fieldset>

    <fieldset id="forms__select">
        <legend>Select menus</legend>
        <p>
            <label for="select">Select</label>
            <select id="select">
                <optgroup label="Option Group">
                    <option>Option One</option>
                    <option>Option Two</option>
                    <option>Option Three</option>
                </optgroup>
            </select>
        </p>
        <p>
            <label for="select_multiple">Select (multiple)</label>
            <select id="select_multiple" multiple="multiple">
                <optgroup label="Option Group">
                    <option>Option One</option>
                    <option>Option Two</option>
                    <option>Option Three</option>
                </optgroup>
            </select>
        </p>
    </fieldset>

    <fieldset id="forms__checkbox">
        <legend>Checkboxes</legend>
        <ul>
            <li><label for="checkbox1"><input id="checkbox1" name="checkbox" type="checkbox" checked="checked"> Choice A</label></li>
            <li><label for="checkbox2"><input id="checkbox2" name="checkbox" type="checkbox"> Choice B</label></li>
            <li><label for="checkbox3"><input id="checkbox3" name="checkbox" type="checkbox"> Choice C</label></li>
        </ul>
    </fieldset>
    
    <fieldset id="forms__radio">
        <legend>Radio buttons</legend>
        <ul>
            <li><label for="radio1"><input id="radio1" name="radio" type="radio" checked="checked"> Option 1</label></li>
            <li><label for="radio2"><input id="radio2" name="radio" type="radio"> Option 2</label></li>
            <li><label for="radio3"><input id="radio3" name="radio" type="radio"> Option 3</label></li>
        </ul>
    </fieldset>
    
    <fieldset id="forms__textareas"><grammarly-extension data-grammarly-shadow-root="true" style="position: absolute; top: -1px; left: -1px; pointer-events: none;" class="dnXmp"></grammarly-extension><grammarly-extension data-grammarly-shadow-root="true" style="position: absolute; top: -1px; left: -1px; pointer-events: none;" class="dnXmp"></grammarly-extension>
        <legend>Textareas</legend>
        <p>
            <label for="textarea">Textarea</label>
            <textarea id="textarea" rows="8" cols="48" placeholder="Enter your message here" spellcheck="false"></textarea>
        </p>
    </fieldset>
    
    <fieldset id="forms__html5" class="table rows">
        <legend>HTML5 inputs</legend>
        <p>
            <label for="ic">Color input</label>
            <input type="color" id="ic" value="#000000">
        </p>
        <p>
            <label for="in">Number input</label>
            <input type="number" id="in" min="0" max="10" value="5">
        </p>
        <p>
            <label for="ir">Range input</label>
            <input type="range" id="ir" value="10">
        </p>
        <p>
            <label for="idd">Date input</label>
            <input type="date" id="idd" value="1970-01-01">
        </p>
        <p>
            <label for="idm">Month input</label>
            <input type="month" id="idm" value="1970-01">
        </p>
        <p>
            <label for="idw">Week input</label>
            <input type="week" id="idw" value="1970-W01">
        </p>
        <p>
            <label for="idt">Datetime input</label>
            <input type="datetime" id="idt" value="1970-01-01T00:00:00Z">
        </p>
        <p>
            <label for="idtl">Datetime-local input</label>
            <input type="datetime-local" id="idtl" value="1970-01-01T00:00">
        </p>
        <p>
            <label for="idl">Datalist</label>
            <input type="text" id="idl" list="example-list">
            <datalist id="example-list">
                <option value="Example #1">
                </option><option value="Example #2">
                </option><option value="Example #3">
            </option></datalist>
        </p>
        <div role="radiogroup" aria-labelledby="radio-buttons-lbl">
            <span id="radio-buttons-lbl">Radio buttons</span>
            <div>
                <div><label for="radiobtn1">
                    <input type="radio" name="radiobtn" id="radiobtn1">
                    Option 1</label>
                </div>
                <div><label for="radiobtn2">
                    <input type="radio" name="radiobtn" id="radiobtn2">
                    Option 2</label>
                </div>
                <div><label for="radiobtn3">
                    <input type="radio" name="radiobtn" id="radiobtn3">
                    Option 3</label>
                </div>
            </div>
        </div>
    </fieldset>
</form>

## Grids

Add the `grid` class to a container to divide up the horizontal space evenly:

<input readonly value="1" />
<div class="grid"><input readonly value="1" /><input readonly value="2" /></div>
<div class="grid"><input readonly value="1" /><input readonly value="2" /><input readonly value="3" /></div>
<div class="grid"><input readonly value="1" /><input readonly value="2" /><input readonly value="3" /><input readonly value="4" /></div>

## Details and Summary

<details>
<summary>
A short summary, see full.
</summary>
<p>
The full description of the contents
</p>
</details>

## 📊 Meters and Progress

### Meter
<label>Storage usage: <meter value="2" min="0" max="10">2 out of 10</meter></label>
<label>Completion rate: <meter value="0.6">60%</meter></label>

### Progress
<label>Download progress: <progress value="70" max="100">70%</progress></label>
