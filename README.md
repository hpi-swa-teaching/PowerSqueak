# PowerSqueak [![Build Status](https://travis-ci.org/hpi-swa-teaching/SWT18-Project-09.svg?branch=master)](https://travis-ci.org/hpi-swa-teaching/SWT18-Project-09)[![Coverage Status](https://coveralls.io/repos/github/hpi-swa-teaching/SWT18-Project-09/badge.svg?branch=master)](https://coveralls.io/github/hpi-swa-teaching/SWT18-Project-09?branch=master)

A presentation tool for the Squeak development platform

Supported platforms:
* Squeak 5.1
* Squeak 6.0 (Trunk)

## Installation Instructions
For easy installation, please first install [Metacello](https://github.com/Metacello/metacello).

Then run the following code in your Squeak 5.1/6.0(trunk) image:
``` smalltalk
Metacello new
	baseline: 'Presenter';
	repository: 'github://hpi-swa-teaching/SWT18-Project-09:master/packages';
	load.
```

## Using PowerSqueak
To open PowerSqueak run: ``` PSPresentationTool open. ```

You can then use the buttons at the top to create, delete and navigate slides and to create different slide elements (like text boxes, and images) and drop them onto the slide.
You may also drop in other Morphs, but be aware, that some features of those Morphs might not work as expected.
