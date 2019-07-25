A PSSlideContainer is a container for a slide.
It manages displaying the slide, saves the previous owner when entering the presentation mode and handles keystroke events.
The PSSlideContainer pretends to be a system window in order to be in the foreground after closing a system window that was put on a slide.

Instance Variables
	currentSlide:		<PSSlide>
	isInteractive:		<Boolean>
	notification:		<PSFadingMessage>
	previousOwner:		<Morph>
	snapSize: 			<Number>

currentSlide
	- The slide currently displayed

isInteractive
	- Shows whether the presentation is in interactive or noninteractive mode

notification
	- Contains the currently displayed PSFadingMessage in order to avoid overlapping messages

previousOwner
	- Saves the PSSlideContainer's owner when entering the presentation mode

snapSize
	- A value from 0 to 1 indicating the ratio in which the slide is divided into magnetic raster points
