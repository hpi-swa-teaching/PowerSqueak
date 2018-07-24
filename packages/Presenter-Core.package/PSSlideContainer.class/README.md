A PSSlideContainer is a container for a slide.
It manages displaying the slide, saves the corresponding PSPresentationTool when entering the presentation mode and handles keystroke events.
The PSSlideContainer pretends to be a system window in order to be in the foreground after closing a system window that was put on a slide.

Instance Variables
	currentSlide:		<PSSlide>
	isInteractive:		<Boolean>
	notification:		<PSFadingMessage>
	previousOwner:		<Morph>

currentSlide
	- The slide currently displayed

isInteractive
	- Shows whether the presentation is in interactive or noninteractive mode

notification
	- Contains the currently displayed PSFadingMessage in order to avoid overlapping messages

previousOwner
	- Saves the PSSlideContainer's owner when entering the presentation mode
