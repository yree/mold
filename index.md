---
layout: default
---

# dont<span id="text"></span>

Hey there,

Quiet your mind.<br>
Let go of the constant urge to do.<br>
Just stop, and don’t.

## You’ve been idle for **<span id="counter">0</span> seconds**

This timer tracks the time you've chosen not to act. No chasing goals, no distractions, no tasks calling for attention. It's a space where stopping is the point—away from the endless stream of things to do.

Stay as long as you like or move on. There’s no goal here, just the simple act of stopping. Sometimes, the most meaningful choice is to stop everything and simply let yourself be still.


## Your max dont time is <span id="most-dont-time">0</span> seconds.

<script>


</script>

<script>
    let idleTime = 0;
    let mostIdleTime = 0;
    let idleInterval;
    
    let exclamations = 0, max = 4, mouseTimeout;
    const text = document.getElementById('text');

    // Function to update the displayed text with the correct number of exclamations
    const updateText = () => text.textContent = `${'!'.repeat(exclamations)}`;

    function resetCounter() {
        if (idleTime > mostIdleTime) {
            mostIdleTime = idleTime;
            document.getElementById("most-dont-time").textContent = mostIdleTime;
        }

        idleTime = 0;
        document.getElementById("counter").textContent = idleTime;
        idleTime = -1;
    }
    // Function to remove one exclamation mark after a delay (used for both click and mouse movement)
    const scheduleRemoval = () => {
        if (exclamations > 0) {
            setTimeout(() => {
                exclamations--;
                updateText();
                if (exclamations > 0) scheduleRemoval(); // Recursively call to remove all exclamations
            }, 2000);
        }
    };

    // Handle click anywhere on the page
    document.onclick = () => {
        resetCounter();
        if (exclamations < max) {
            exclamations++;
            updateText();
        }
    };

    // Handle mouse movement and add exclamation mark if none are present
    document.onmousemove = () => {
        clearTimeout(mouseTimeout); 
        clearTimeout(scheduleRemoval); // Clear any previous mouse inactivity timeout
        resetCounter();
        if (exclamations === 0) {
            exclamations++;
            updateText();
        }
        mouseTimeout = setTimeout(() => {
            exclamations--;
            updateText();
            if (exclamations > 0) scheduleRemoval(); // Start the removal process if first exclamation
        }, 2000);
    };

    function startIdleTimer() {
        idleInterval = setInterval(() => {
            idleTime++;
            if (idleTime > 0)
            document.getElementById("counter").textContent = idleTime;
        }, 1000);
    }

    window.onload = function() {
        startIdleTimer();
    };
</script>