# Homework 5, ME 621
Code relating to ME 621 HW 5. This repo should contain deployable copies of the Simulink model and MATLAB initialization script. All further revisions need to be done via branches and pull requests.

> Don't panic. *-Douglas Adams*

### Update (20 Nov)
The loop passes the sniff test. It is stable up to approx. 920 Hz; unstable at 1000 Hz (resonant frequency of speaker), but regains stability for the 1500 Hz signal. I don't think the NaN error is a serious problem--just an artifact of an error setting. I don't recall the best way to make the scope output more visible; if you remember, let me know and I'll create the graphics. Also, I added you as a contributor to the repo, so you shouldn't have any issues committing code in the future. I'll add you to /vibproject as well.

### Update (19 Nov, Catherine)
Welp. Here I am on Sunday night with not much progress. Not for lack of effort though. I have been working on finding a solution to our problem with the plots but cannot seem to figure out why the error plot is outputting the same as the f(t) plot.

I went through every single aspect of the Simulink model to see if there were any issues but could not find anything that stood out to me. Here is a list of all the paths I travelled:
1.	Transfer function – in reality, the transfer function should be much more complex than what we have estimated (1/ms^2+cs+k)). The transfer function of a speaker needs certain parameters not given to us in this HW set, such as the field strength of the audio coil based on current and voltage input. This is obviously beyond the scope of this project so I think the transfer function you derived is correct.
2.	I removed the unit delays you had after the alphas. I don’t think they are necessary since you already have the unit delay at the start of each h().
3.	You diagram has the error feedback feeding directly into the transfer function Chat. I believe the error path should be passed into a product block and multiplied by the output of f(n)xChat. I made this update in the diagram but it seems to be changing the g(n) to decay…which doesn’t seem right. So you may have been right all along. Another dead end!
4.	I wondered if the conversion between rad/s and hz was tripping us up along the way so but after re-deriving the transfer function constants this does not seem to be the problem.
I double checked all other paths to make sure we were on the right track and even after hours of trouble shooting I could not find the problem. Looks like we’re going to have to take this one to Dr. Richards. I am more than happy to take on the report since you did the bulk of the work at the beginning.

I will post my revised block diagram.

- Catherine


## Resources
1. A quick guide to GitHub: [Hello world!](https://guides.github.com/activities/hello-world/)
2. adam-p's Markdown cheat sheet (for fancy ReadMe formatting): [Markdown Cheatsheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)
3. Using Git in MATLAB (completely optional): [Set up Git Source Control](https://www.mathworks.com/help/matlab/matlab_prog/set-up-git-source-control.html?requestedDomain=www.mathworks.com)
4. A Mathworks page on ANC using FxLMS: [Active Noise Control Using a Filtered-X LMS FIR Adaptive Filter](https://www.mathworks.com/help/audio/examples/active-noise-control-using-a-filtered-x-lms-fir-adaptive-filter.html#responsive_offcanvas)
