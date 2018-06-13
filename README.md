# PowerSqueak [![Build Status](https://travis-ci.org/hpi-swa-teaching/SWT18-Project-09.svg?branch=release)](https://travis-ci.org/hpi-swa-teaching/SWT18-Project-09)[![Coverage Status](https://coveralls.io/repos/github/hpi-swa-teaching/SWT18-Project-09/badge.svg?branch=release)](https://coveralls.io/github/hpi-swa-teaching/SWT18-Project-09?branch=release)

A presentation tool for the Squeak development platform

Supported platforms:
* Squeak 5.1

Squeak 6.0/Trunk is also a target plattform, but due to the fast changing nature of Trunk, certain versions of Squeak Trunk may not work.
Please check [Travis-ci](https://travis-ci.org/hpi-swa-teaching/SWT18-Project-09) for the current build status.

Squeak 5.0 is officially unsupported (see [Travis-ci](https://travis-ci.org/hpi-swa-teaching/SWT18-Project-09)).

## Installation Instructions
For easy installation, please first install [Metacello](https://github.com/Metacello/metacello).

Then run the following code in your Squeak 5.1/6.0(trunk) image:
``` smalltalk
Metacello new
	baseline: 'Presenter';
	repository: 'github://hpi-swa-teaching/SWT18-Project-09:release/packages';
	load.
```

## Build status
| [Release](https://github.com/hpi-swa-teaching/SWT18-Project-09/releases/latest) | master
| ------------------------- | ------------------- |
| [![Build Status](https://travis-ci.org/hpi-swa-teaching/SWT18-Project-09.svg?branch=release)](https://travis-ci.org/hpi-swa-teaching/SWT18-Project-09) | [![Build Status](https://travis-ci.org/hpi-swa-teaching/SWT18-Project-09.svg?branch=master)](https://travis-ci.org/hpi-swa-teaching/SWT18-Project-09) |
| [![Coverage Status](https://coveralls.io/repos/github/hpi-swa-teaching/SWT18-Project-09/badge.svg?branch=release)](https://coveralls.io/github/hpi-swa-teaching/SWT18-Project-09?branch=release) | [![Coverage Status](https://coveralls.io/repos/github/hpi-swa-teaching/SWT18-Project-09/badge.svg?branch=master)](https://coveralls.io/github/hpi-swa-teaching/SWT18-Project-09?branch=master) |

## Using PowerSqueak
To open PowerSqueak either
* run: ``` PSPresentationTool open. ```
* click PowerSqueak in the "Apps" drop-down-menu<br><img src="/pictures/apps-drawer.png" alt="Open PowerSqueak in the Apps menu" width="250">

### Edit mode
During edit mode, you can use the buttons at the top to create, delete and navigate slides and to create different slide elements (like text boxes, and images) and drop them onto the slide.
You may also drop in other Morphs, but be aware, that some features of those Morphs might not work as expected.

For advanced features like deleting morphs or resizing text, right-click the morph.
<br><img src="/pictures/right-click.png" alt="Right-click example" width="400">

### Presentation mode
To enter presentation mode, click the "Present" button.

To control your presentation during presentation mode, use:

| Key | Action |
| ------- | ------- |
| Esc | Leave presentation mode |
| right arrow/page down | next slide |
| left arrow/page up | previous slide |
| Number keys | Jump to a slide number |
