This program takes a sound files (.wav) and the filtered output will sound as if it was moving in a circle. 
Headphones must be used rather than speakers.
Quality of the output could be improved as it has some annoying lagging noise.

1. Start by running the script readall.m to read all sound impulses.
2. outputSound = moving(inputSound, degrees), where degrees specifies the height in relation to the listener. 
E.g 0 degrees is the same height as the listener, 90 degrees means that the sound comes from above and -90 means below.

inputSound.wav is a random sound file that can be used to test the program. 
360sound.wav is an example of the output (with inputSound.wav as input). The reason for including this file is because the program is very slow
