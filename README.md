# [PowerSqueak](https://github.com/hpi-swa-teaching/SWT18-Project-09/releases/latest)

A presentation tool for the Squeak development platform

Supported platforms:
* Squeak 5.1

Squeak Trunk is also a target plattform, but due to the fast changing nature of Trunk, certain versions of Squeak Trunk may not work.
Please check [Travis-ci](https://travis-ci.org/hpi-swa-teaching/SWT18-Project-09) for the current build status.

Squeak 5.0 is officially unsupported (see [Travis-ci](https://travis-ci.org/hpi-swa-teaching/SWT18-Project-09)).

## Build status
| [Release](https://github.com/hpi-swa-teaching/SWT18-Project-09/releases/latest) | Master |
| ----------------------- | ------------|
| [![Build Status](https://www.travis-ci.org/hpi-swa-teaching/SWT18-Project-09.svg?branch=release)](https://www.travis-ci.org/hpi-swa-teaching/SWT18-Project-09) | [![Build Status](https://travis-ci.org/hpi-swa-teaching/SWT18-Project-09.svg?branch=master)](https://travis-ci.org/hpi-swa-teaching/SWT18-Project-09) |
| [![Coverage Status](https://coveralls.io/repos/github/hpi-swa-teaching/SWT18-Project-09/badge.svg?branch=release)](https://coveralls.io/github/hpi-swa-teaching/SWT18-Project-09?branch=release) | [![Coverage Status](https://coveralls.io/repos/github/hpi-swa-teaching/SWT18-Project-09/badge.svg?branch=master)](https://coveralls.io/github/hpi-swa-teaching/SWT18-Project-09?branch=master) |

## Installation Instructions
For easy installation, please first install [Metacello](https://github.com/Metacello/metacello).

Then run the following code in your Squeak 5.1/trunk image to install the latest release:
``` smalltalk
Metacello new
	baseline: 'Presenter';
	repository: 'github://hpi-swa-teaching/SWT18-Project-09:release/packages';
	load.
```

## Using PowerSqueak
To open PowerSqueak run: ``` PSPresentationTool open. ```

### Editing mode
Use the buttons at the top to create, delete and navigate slides and to create different slide elements (like text boxes, and images).

To gain access to advanced features of certain morphs (like text coloring and resizing), right click the morph.

You may also drop other morphs onto slides, but be aware, that some features of those Morphs might not work as expected.

### Presentation mode
To enter the presentation mode, click the "Present" button (it is recommended, that you enter fullscreen mode in your Squeak image first).

During presentation mode, the editing handles on your morphs will disappear, to give your presentation a clean and beatiful appereance.

The morphs will stay interactive however, allowing you to show code in a browser, run code in a Workspace or to just play some Tetris during your presentation.

To control your presentation:

| Key | Action |
| ---- 	| ---- |
| Right arrow/Page down | next slide |
| Left arrow/Page up | previous slide|
| Number keys | Select slide by number |
| Esc | Exit presentation mode |
