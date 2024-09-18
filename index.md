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
    let idleTime = 0;
    let mostIdleTime = 0;
    let idleInterval;

    let exclamations = 0, max = 4, mouseTimeout;
    const text = document.getElementById('text');
    const breathingBox = document.getElementById('breathing-box');    
    const breathingState = document.getElementById('breathing-state');

    // Box breathing state variables
    let breatheState = 0; // 0 = inhale, 1 = hold, 2 = exhale
    let breatheLines = 0;
    const maxBreatheLines = 16;
    let breathingInterval;
    const breathingLabels=["Inhale", "Hold  ", "Exhale"]

    // Function to update the breathing box display
    const updateBreathingBox = () => {
        const boxContent = "+".repeat(breatheLines) + "-".repeat(maxBreatheLines-breatheLines);
        
        breathingBox.textContent = `[${boxContent}] ${breathingLabels[breatheState]}`;
    };

    function setBreathingState(state) {
        breathingState.textContent = state;
    }

    // Box breathing cycle: 4s inhale, 4s hold, 8s exhale
    const startBreathingCycle = () => {
        clearInterval(breathingInterval); // Clear previous intervals
        
        // Inhale phase (0.25s interval for each line to appear, 4s total)
        breatheState = 0;
        breatheLines = 0;
        breathingInterval = setInterval(() => {
            if (breatheLines < maxBreatheLines) {
                breatheLines++;
                updateBreathingBox();
            } else {
                clearInterval(breathingInterval);
                holdBreathing(); // Move to hold phase after inhale
            }
        }, 250); // 16 lines in 4 seconds (250ms for each line)
    };

    // Hold phase (pulsate every second for 4s)
    const holdBreathing = () => {
        breatheState = 1;
        let bold = false;
        let holdTime = 0;
        updateBreathingBox();

        breathingInterval = setInterval(() => {
            breathingBox.style.fontWeight = bold ? "bold" : "normal";
            bold = !bold;
            holdTime++;
            if (holdTime >= 8) {
                clearInterval(breathingInterval);
                exhaleBreathing(); // Move to exhale phase after hold
            }
        }, 500); // 4 seconds for hold, alternating bold
    };

    // Exhale phase (remove 1 line every 0.5 second for 8s)
    const exhaleBreathing = () => {
        breatheState = 2;
        breathingInterval = setInterval(() => {
            if (breatheLines > 0) {
                breatheLines--;
                updateBreathingBox();
            } else {
                clearInterval(breathingInterval);
                startBreathingCycle(); // Restart the cycle after exhale
            }
        }, 400); // 16 lines in 8 seconds (500ms for each line removal)
    };

    // Start the first breathing cycle on window load
    window.onload = function() {
        startBreathingCycle(); // Start the breathing animation
        startIdleTimer(); // Start the idle timer
    };

    // Other parts of your existing script (idle timer, exclamations)
    function updateMaxTime() {
        if (idleTime > mostIdleTime) {
            mostIdleTime = idleTime;
            document.getElementById("most-dont-time").textContent = mostIdleTime;
        }
    }

    function resetCounter() {
        updateMaxTime();
        idleTime = 0;
        document.getElementById("counter").textContent = idleTime;
    }

    const scheduleRemoval = () => {
        if (exclamations > 0) {
            setTimeout(() => {
                exclamations--;
                updateText();
                if (exclamations > 0) scheduleRemoval();
            }, 2000);
        }
    };

    document.onclick = () => {
        resetCounter();
        if (exclamations < max) {
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

    function startIdleTimer() {
        idleInterval = setInterval(() => {
            idleTime++;
            document.getElementById("counter").textContent = idleTime;
            updateMaxTime();
        }, 1000);
    }
</script>
