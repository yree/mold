---
layout: default
---

# dont<span id="text"></span>

Hey there,

Quiet your mind.<br>
Let go of the constant urge to do.<br>
Just stop, and don’t.

<button class="breathe">breathe</button> <span id="breathing-box"></span><span id="breathing-state"></span>

## You’ve been idle for **<span id="counter">0</span> seconds**

This timer tracks the time you've chosen not to act. No chasing goals, no distractions, no tasks calling for attention. It's a space where stopping is the point—away from the endless stream of things to do.

Stay as long as you like or move on. There’s no goal here, just the simple act of stopping. Sometimes, the most meaningful choice is to stop everything and simply let yourself be still.

### Your max dont time is <span id="most-dont-time">0</span> seconds.

<script>
    // Idle Timer variables
    let idleTime = 0, mostIdleTime = 0, idleInterval;
    let exclamations = 0, maxExclamations = 4, mouseTimeout;

    const text = document.getElementById('text');
    const counterElem = document.getElementById("counter");
    const maxDontTimeElem = document.getElementById("most-dont-time");

    // Box breathing variables
    let breatheLines = 0, breatheState = 0;
    const maxBreatheLines = 16;
    const breathingBox = document.getElementById('breathing-box');
    const breathingState = document.getElementById('breathing-state');
    const breathingLabels = ["Inhale", "Hold", "Exhale"];
    let breathingInterval;

    // ======== Utility Functions ========

    // Update the max idle time if exceeded
    function updateMaxTime() {
        if (idleTime > mostIdleTime) {
            mostIdleTime = idleTime;
            maxDontTimeElem.textContent = mostIdleTime;
        }
    }

    // Reset idle counter
    function resetCounter() {
        updateMaxTime();
        idleTime = 0;
        counterElem.textContent = idleTime;
    }

    // Update text based on exclamations
    function updateText() {
        text.textContent = `${'!'.repeat(exclamations)}`;
    }

    // Schedule exclamation removal
    const scheduleRemoval = () => {
        if (exclamations > 0) {
            setTimeout(() => {
                exclamations--;
                updateText();
                if (exclamations > 0) scheduleRemoval(); // Recursively remove exclamations
            }, 2000);
        }
    };

    // Start the idle timer
    function startIdleTimer() {
        idleInterval = setInterval(() => {
            idleTime++;
            counterElem.textContent = idleTime;
            updateMaxTime();
        }, 1000);
    }

    // ======== Breathing Functions ========

    // Update the breathing box content
    const updateBreathingBox = () => {
        const boxContent = "+".repeat(breatheLines) + "-".repeat(maxBreatheLines - breatheLines);
        breathingBox.textContent = `[${boxContent}] ${breathingLabels[breatheState]}`;
    };

    // Handle the inhale phase (4 seconds)
    const startInhale = () => {
        breatheState = 0;
        breatheLines = 0;
        breathingInterval = setInterval(() => {
            if (breatheLines < maxBreatheLines) {
                breatheLines++;
                updateBreathingBox();
            } else {
                clearInterval(breathingInterval);
                startHold(); // Move to hold phase after inhale
            }
        }, 250); // 16 lines in 4 seconds (250ms per line)
    };

    // Handle the hold phase (4 seconds)
    const startHold = () => {
        breatheState = 1;
        let isBold = false, holdTime = 0;
        updateBreathingBox();
        breathingInterval = setInterval(() => {
            breathingBox.style.fontWeight = isBold ? 'bold' : 'normal';
            isBold = !isBold;
            holdTime++;
            if (holdTime >= 8) {
                clearInterval(breathingInterval);
                startExhale(); // Move to exhale phase after hold
            }
        }, 500); // 4 seconds for hold
    };

    // Handle the exhale phase (8 seconds)
    const startExhale = () => {
        breatheState = 2;
        breathingInterval = setInterval(() => {
            if (breatheLines > 0) {
                breatheLines--;
                updateBreathingBox();
            } else {
                clearInterval(breathingInterval);
                startInhale(); // Restart cycle after exhale
            }
        }, 400); // 16 lines (400ms per line removal)
    };

    // ======== Event Listeners ========

    document.onclick = () => {
        resetCounter();
        if (exclamations < maxExclamations) {
            exclamations++;
            updateText();
        }
    };

    document.onmousemove = () => {
        clearTimeout(mouseTimeout);
        resetCounter();
        if (exclamations === 0) {
            exclamations++;
            updateText();
        }
        mouseTimeout = setTimeout(() => {
            exclamations--;
            updateText();
            if (exclamations > 0) scheduleRemoval();
        }, 2000);
    };

    // ======== Initialization ========

    window.onload = function() {
        startIdleTimer();  // Start idle timer
        startInhale();     // Start breathing cycle
    };

</script>
