# Simultaneous Measurement of Program Comprehension with fMRI and Eye Tracking

This repository contains information on our fMRI study on program comprehension with simultaneous eye tracking. We observed top-down and bottom-up comprehension and collected the following data for 22 student participants:

* demographic data (age, programming experience, ...)
* fMRI structucal brain data (T1-weighted, 1mm isotropic resolution)
* fMRI functional brain data (878 volumes using a continuous EPI sequence, 2000ms TR, 35 slices of 3mm)
* eye-tracking data (gaze, events, pupil dilation)
* physiological data (heart rate, respiration)
* behavioral data (task responses including click-down time)

Our long-term research goal is to understand how code aspects (like rich identifier names) influence program comprehension.

# Publications (PDFs)

*nothing yet*

# Experiment Details

## fMRI Imaging and Eye-Tracking 

The study was conducted on a 3-Tesla fMRI scanner (Philips Achieva dStream, Best, The Netherlands) equipped with a 32-channel head coil at the Leibniz Institute for Neurobiology in Magdeburg, Germany. We used an MRI-compatible EyeLink 1000 (SR Research Ltd, Ottawa, Ontario, Canada, http://www.sr-research.com) eye-tracker for simultaneous measurement of eye movements. The EyeLink eye tracker offers 1000 Hz temporal resolution, <0.5° average accuracy, and 0.01° root mean square (RMS). The eye-tracker collected eye gazes, events (i.e., fixations, blinks, saccades), and pupil dilation.

We calibrated the eye tracker with a randomized 9-dot grid. Afterward, we conducted a 9-dot validation to identify possible issues with the calibration. If the error during validation exceeded EyeLink's recommended thresholds, we repeated the calibration and validation process.

## Method Syncronization

The calibration and validation of the eye tracker was done after the pre-measurements, but before the functional fMRI scan. Once the eye tracker was calibrated and validated, the functional fMRI scan started. With the first scan period, our Presentation script showed the first code snippet, and commanded to the EyeLink eye tracker to record eye movements. The start time was logged to both systems (i.e., stimulus and eye-tracking computer). After every stimulus change (e.g., from comprehension to d2 task), we added an additional log with time stamp and stimulus name to the eye-tracker output. This way, we are able to accurately allocate the eye movements to the shown stimulus.

## Measurement Overview

We conducted one full pilot session in December 2017, and 22 measurements between February and March 2018.

| Participant | Eye-Tracking (% of Collected Frames) | fMRI Data (Movement) |
|-------------|-------------------------------------:|----------------------|
| Pilot       |                                  98% | OK                   |
| 01          |                                  33% | OK                   |
| 02          |                                  87% | OK                   |
| 03          |                                  96% | OK                   |
| 04          |                                  89% | OK                   |
| 05          |                                   0% | Exclusion            |
| 06          |                                  91% | Exclusion            |
| 07          |                                  67% | OK                   |
| 08          |                                  97% | OK                   |
| 09          |                                   9% | OK                   |
| 10          |                                  69% | OK                   |
| 11          |                                   0% | Careful              |
| 12          |                                  93% | OK                   |
| 13          |                                   8% | OK                   |
| 14          |                                  92% | OK                   |
| 15          |                                  27% | OK                   |
| 16          |                                   5% | OK                   |
| 17          |                                   1% | OK                   |
| 18          |                                  94% | Exclusion            |
| 19          |                                   1% | OK                   |
| 20          |                                   1% | OK                   |
| 21          |                                   8% | OK                   |
| 22          |                                  23% | OK                   |

Recording of behavioral and physiological data was successful for all participants.

## Participant Demographics

| Characteristic                   | N (in %) |   SD |
|----------------------------------|---------:|-----:|
| Participants                     |       22 |      |
| Male                             | 20 (91%) |      |
| Female                           |   2 (9%) |      |
| Age in years                     |    26.70 | 6.16 |
| Years of programming  experience |     6.14 | 4.57 |
| Experience score                 |     2.73 | 0.75 |
| Java experience                  |     1.93 | 0.33 |
| Bachelor students                |  9 (41%) |      |
| Master students                  | 13 (59%) |      |

# Replication Package

In the next sections are general information on the experiment. They *should* contain everything necessary to replicate the experiment, either in an fMRI scanner or in front of a PC.

As we conducted the study with German students, some elements are still in German (e.g., task, experience questionnaire). If you would like to replicate this experiment and the provided information are not sufficient (or you need a translation), please [contact me](norman.peitek@lin-magdeburg.de) for individual help.

## Preparing Experiment

We provided all images necessary for the an exact replication of our experiment under `/images/`. Attention, the tasks are in German.

If you would like to use different snippets (or a different task language), you may use our tool to generate images. To make the eye-tracking analysis later on more meaningful, we created images containing the code snippets. Thus, it is much easier to map eye-tracking gaze positions to the location within the presented code (instead of x/y coordinates without context). We used a custom Python script to create the images from a predefined set of code snippets: [CodeImageGenerator](https://github.com/peitek/CodeImageGenerator).

We also created images for a d2 attention task, which was used after each comprehension snippet. You can find the Python script for the d2 attention task image generation here: [AttentionTaskImageGenerator](https://github.com/peitek/AttentionTaskImageGenerator).

Once the images are created, you can proceed to the next step.

## Experiment Execution

We use [Presentation](https://neurobs.com/) to control the stimuli display, receive participant responses, and control the eye-tracker. You can find the script under `/presentation/`. Although we have not conducted a full study with it yet, [PsychoPy](http://www.psychopy.org/) may also be a way to replicate our experiment.

If you use the Presentation script, you may need to change the paths to the stimuli images. Our Presentation script assumes you are also using an EyeLink eye-tracker. You may start the experiment without an eye-tracker by setting `use_eyetracker` to `false`. 

For configuration of the EyeLink eye-tracker, please refer to EyeLink's manual (no special settings are necessary for the experiment, a standard configuration should be sufficient).

### Training

Our participant had to view, recall and review five code snippets before the fMRI session. This training before the fMRI session was done with [PROPHET](https://github.com/feigensp/Prophet). The tool guided the participant through this process.

You can find the Prophet experiment file and all code snippets under `/prophet/training.xml`.

### Programming Experience Questionnaire

We asked all participants to fill out a programming experience questionnaire<sup>[1](#footnote1)</sup>. You can find the Prophet experiment file [in German] under `/prophet/questionnaire.xml`.

### fMRI Experiment

We largely replicated our [previous FSE'17 study](https://github.com/brains-on-code/paper-esec-fse-2017) on contrasting bottom-up and top-down comprehension. The fMRI session consisted of five trials, where each trial contained the following five tasks:

* Top-down comprehension [Trained, including beacons]
* Bottom-up comprehension
* Top-down comprehension [Trained, no beacons]
* Top-down comprehension [Untrained, including beacons]
* Find syntax errors

Every task in the list above lasted for 30 seconds, plus a 2-seconds grace period to submit a late response. They were each followed by a 15-seconds d2 attention task and a 20-seconds rest condition. This results in an experiment execution time of approximately 28 minutes.

The full order of displayed tasks:

| Trial | Order | Condition          | Algorithm/Snippet            | Snippet Name                     | FileName (`/images/code/`)           |
|-------|-------|--------------------|------------------------------|----------------------------------|--------------------------------------|
| 1     | 1     | Top-Down Beacon    | ArrayAverage                 | arrayAverageTD_B                 | arrayAverageTD_B.png                 |
|       | 2     | Bottom-Up          | BinaryToDecimal              | BinaryToDecimal                  | grey.png                             |
|       | 3     | Top-Down No Beacon | ContainsSubstring            | containsSubstringTD_N            | ecnzaqnkKopkzvqnmTD_N.png            |
|       | 4     | Top-Down Untrained | ReverseWord                  | reverseWordTD_U                  | reverseWordTD_U.png                  |
|       | 5     | Syntax             | BubbleSort                   | bubbleSortSY                     | bubbleSortSY.png                     |
| 2     | 6     | Top-Down Beacon    | Power                        | powerTD_B                        | powerTD_B.png                        |
|       | 7     | Bottom-Up          | Factorial                    | Factorial                        | pink.png                             |
|       | 8     | Top-Down No Beacon | CountSameCharsAtSamePosition | countSameCharsAtSamePositionTD_N | ecoamKayiEoaikAmKayiEckqmqcaTD_N.png |
|       | 9     | Top-Down Untrained | CrossSum                     | crossSumTD_U                     | crossSumTD_U.png                     |
|       | 10    | Syntax             | IsPrimeNumber                | IsPrimeNumberSY                  | IsPrimeNumberSY.png                  |
| 3     | 11    | Top-Down Beacon    | FirstAboveTreshold           | firstAboveTresholdTD_B           | firstAboveTresholdTD_B.png           |
|       | 12    | Bottom-Up          | CountVowels                  | CountVowels                      | red.png                              |
|       | 13    | Top-Down No Beacon | ArrayAverage                 | arrayAverageTD_N                 | beebtBurebzrTD_N.png                 |
|       | 14    | Top-Down Untrained | SumUp                        | sumUpTD_U                        | sumUpTD_U.png                        |
|       | 15    | Syntax             | GetMiddleNumber              | GetMiddleNumberSY                | GetMiddleNumberSY.png                |
| 4     | 16    | Top-Down Beacon    | ContainsSubstring            | containsSubstringTD_B            | containsSubstringTD_B.png            |
|       | 17    | Bottom-Up          | Maximum                      | Maximum                          | lightgreen.png                       |
|       | 18    | Top-Down No Beacon | Power                        | powerTD_N                        | buycpTD_N.png                        |
|       | 19    | Top-Down Untrained | IsPalindrome                 | isPalindromeTD_U                 | isPalindromeTD_U.png                 |
|       | 20    | Syntax             | DoubleArray                  | doubleArraySY                    | doubleArraySY.png                    |
| 5     | 21    | Top-Down Beacon    | CountSameCharsAtSamePosition | countSameCharsAtSamePositionTD_B | countSameCharsAtSamePositionTD_B.png |
|       | 22    | Bottom-Up          | IntertwineTwoWords           | IntertwineTwoWords               | gold.png                             |
|       | 23    | Top-Down No Beacon | FirstAboveTreshold           | firstAboveTresholdTD_N           | vsjihAzmfwHjwitmpxTD_N.png           |
|       | 24    | Top-Down Untrained | SquareRoots                  | squareRootsTD_U                  | squareRootsTD_U.png                  |
|       | 25    | Syntax             | IndexOf                      | IndexOfSY                        | IndexOfSY.png                        |

Each snippet was followed by a 2-second grace period (there is no image as we used Presentation to display the same text), which was followed by a d2 task (`/images/d2/attention_task_[ORDER-1].png`). The rest condition was between every d2 task and snippet (there is no image as we used Presentation to display the fixation cross).

Note on the aspect ratio: the images are mostly created with an aspect ratio of 16:10 and a resolution of 1920x1080. However, the experiment itself was displayed in an aspect ratio of 5:4 and a resolution of 1280x1024 as that is the maximum for the projector and display in the fMRI scanner.

## Post-Experiment Analysis

### Analysis Procedure

After the experiment ended, our Presentation script exported EyeLink's eye-tracking data to the stimulus PC. We then used a vendor-provided script to convert EyeLink's `.edf` logging file into an ASCII-readable format. Next, we used a custom script to map the eye-tracking data to the respective position within a code, merge in behavioral data (responses) and physiological data (heart rate, respiration), and convert it into a CSV format. Finally, we imported the CSV file into [Ogama](https://github.com/avosskuehler/ogama), which we used to analyze the eye-tracking data. The last available Ogama version could not import a dataset of our size (presumably due to the 1000 Hz temporal resolution of the eye tracker and large participant pool). To this end, we created a custom 64-bit build of Ogama to increase the memory limit, which allowed us to import our data. 

*More details coming soon.*


# Raw and Pre-Processsed Data

Includes de-identified demographics, fMRI, behavioral, eye-tracking data.

*[intended to be provided after publication]*

# Acknowledgments

We thank all participants of the fMRI study. Furthermore, we thank Andreas Fügner, Anke Michalsky, and Jörg Stadler for their technical support during pilot studies and fMRI data acquisition.

# Missing Information? Feedback? Questions?

Please open an issue or contact me directly: `norman.peitek@lin-magdeburg.de`. Thank you!

---

<a name="footnote1">1</a>:Siegmund, J., Kästner, C., Liebig, J., Apel, S., & Hanenberg, S. (2014). Measuring and modeling programming experience. Empirical Software Engineering, 19(5), 1299-1334.
