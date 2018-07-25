# **PowerSqueak** [![Build Status](https://travis-ci.org/hpi-swa-teaching/SWT18-Project-09.svg?branch=release)](https://travis-ci.org/hpi-swa-teaching/SWT18-Project-09)[![Coverage Status](https://coveralls.io/repos/github/hpi-swa-teaching/SWT18-Project-09/badge.svg?branch=release)](https://coveralls.io/github/hpi-swa-teaching/SWT18-Project-09?branch=release)

A presentation tool for the Squeak development platform

Supported platforms:
* Squeak 5.1

Squeak 6.0/Trunk is also a target plattform, but due to the fast changing nature of Trunk, certain versions of Squeak Trunk may not work.
Please check [Travis-ci](https://travis-ci.org/hpi-swa-teaching/SWT18-Project-09) for the current build status.

Squeak 5.0 is officially unsupported (see [Travis-ci](https://travis-ci.org/hpi-swa-teaching/SWT18-Project-09)).

## **Overview**
* [Overview](https://github.com/hpi-swa-teaching/SWT18-Project-09#overview)
* [Installation Instructions](https://github.com/hpi-swa-teaching/SWT18-Project-09#installation-instructions)
* [Build status](https://github.com/hpi-swa-teaching/SWT18-Project-09#build-status)
* [Using PowerSqueak](https://github.com/hpi-swa-teaching/SWT18-Project-09#using-powersqueak)
	* [Edit mode](https://github.com/hpi-swa-teaching/SWT18-Project-09#edit-mode)
		* [Magnetic Raster](https://github.com/hpi-swa-teaching/SWT18-Project-09#magnetic-raster)
	* [Presentation mode](https://github.com/hpi-swa-teaching/SWT18-Project-09#presentation-mode)
		* [Interactive/Non-Interactive mode](https://github.com/hpi-swa-teaching/SWT18-Project-09#interactivenon-interactive-mode)
	* [saving and loading](https://github.com/hpi-swa-teaching/SWT18-Project-09#saving-and-loading)
	* [list of shortcuts](https://github.com/hpi-swa-teaching/SWT18-Project-09#list-of-shortcuts)

## **Installation Instructions**
For easy installation, please first install [Metacello](https://github.com/Metacello/metacello).

Then run the following code in your Squeak 5.1/6.0(trunk) image:
``` smalltalk
Metacello new
	baseline: 'Presenter';
	repository: 'github://hpi-swa-teaching/SWT18-Project-09:release/packages';
	load.
```

Alternatively, download the .sar file from the [latest release](https://github.com/hpi-swa-teaching/SWT18-Project-09/releases/latest) and install it into your Squeak image via drag and drop.

## **Build status**
| [Release](https://github.com/hpi-swa-teaching/SWT18-Project-09/releases/latest) | master
| ------------------------- | ------------------- |
| [![Build Status](https://travis-ci.org/hpi-swa-teaching/SWT18-Project-09.svg?branch=release)](https://travis-ci.org/hpi-swa-teaching/SWT18-Project-09) | [![Build Status](https://travis-ci.org/hpi-swa-teaching/SWT18-Project-09.svg?branch=master)](https://travis-ci.org/hpi-swa-teaching/SWT18-Project-09) |
| [![Coverage Status](https://coveralls.io/repos/github/hpi-swa-teaching/SWT18-Project-09/badge.svg?branch=release)](https://coveralls.io/github/hpi-swa-teaching/SWT18-Project-09?branch=release) | [![Coverage Status](https://coveralls.io/repos/github/hpi-swa-teaching/SWT18-Project-09/badge.svg?branch=master)](https://coveralls.io/github/hpi-swa-teaching/SWT18-Project-09?branch=master) |

## **Using PowerSqueak**
To open PowerSqueak either
*	run: ``` PSPresentationTool open. ```
*	click PowerSqueak in the "Apps" drop-down-menu\
	<img src="pictures/apps-drawer.png" alt="Open PowerSqueak in the Apps menu" width="250">

### **Edit mode**
During edit mode, you can use the buttons at the top to create and navigate slides.
To create slides from templates or delete slides, use the "Slide" menu in the menu bar.
To add slide elements like text or images, use the "Insert" menu to create a textfield/image in hand.
You may also drop other Morphs onto slides, but be aware, that some features of those Morphs might not work as expected (scaling most of the time does not work correctly).

For advanced features like deleting morphs or resizing text, right-click the Morph.\
<img src="pictures/right-click.png" alt="Right-click example" width="400">

#### **Magnetic Raster**
PowerSqueak supports a magnetic raster for easy layouting.
If the magnetic raster is active, resizing a Morph will automatically smap the corners of the Morph to an imaginary raster.\
To enable the magnetic raster click:\
<img src="pictures/magnetic-raster.png" alt="How to enable magnetic raster" width=250>\
The button will change color, to indicate, that the raster is active\
<img src="pictures/magnetic-raster-active.png" alt="Magnetic raster is enabled" width=250>

### **Presentation mode**
To enter presentation mode, click the "Present" button.

To control your presentation during presentation mode, use:

| Key | Action |
| ------- | ------- |
| Esc | Leave presentation mode |
| right arrow/arrow down/page down | next slide |
| left arrow/arrow up/page up | previous slide |
| Number keys | Jump to a slide number (0 = last slide) |
| i | (de-)activate interactivity and (un-)hide cursor |

Because PowerSqueak supports slide selection with both arrow and page keys, most wireless presenters will work correctly with PowerSqueak, but pressing the present button on your presenter will not work, as the Squeak VM does not support function keys.

#### **Interactive/Non-Interactive mode**
By pressing "i" during presentation mode, you can disable/enable interactivity and hide/unhide the cursor.
This mode is added to avoid the visual clutter of the cursor and to keep text on slides from grabbing the keyboard input, which prevents you from changing slides.

Leaving the presentation mode also enables interactivity and unhides the cursor.

### **Saving and loading**
PowerSqueak can save and load presentations to/from the file system.

Use the corresponding save/load buttons in the "File" menu to save/load the presentation.
If you want to view the saved files, go to the ```PSPresentation``` directory in your Squeak VMs directory.
You can share presentations by copying any presentation in the ```PSPresentation``` directory into the ```PSPresentation``` directory of another image.
In the other image you can then load the presentation as usual in PowerSqueak.

``` diff
- Warning: some morphs may crash your image if they are saved/loaded!
- It is recommended, that you save your image before every save/load operation in PowerSqueak
```

You may also export your presentation to a list of .png files, which will get exported into the ```PSPresentationsExports``` folder in your Squeak VMS directory

### **List of shortcuts**
#### **Global schortcuts**
| Key | Action|
| ---- | ---- |
| right arrow/arrow down/page down | next slide |
| left arrow/arrow up/page up | previous slide |
| Number keys | Jump to a slide number (0 = last slide) |
| Cmd + t | Create a text field in hand |

### **Edit mode shortcuts**
| Key | Action |
| --- | --- |
| Cmd + i | Create an image |

### **Presentation mode shortcuts **
| Key | Action |
| --- | --- |
| i | (de-)activate interactivity and (un-)hide cursor |
| Esc | Leave presentation mode |