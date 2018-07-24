A PSContentContainer is a container for a single morph put on a slide.
It manages resizing and the context menu for its morph.
Resizing is done with "handles", small rectangles, which can be dragged to resize the child morph.

Instance Variables
	content:		<Morph>
	hasHandles:		<Boolean>
	resizeHandles:		<Dictionary>

content
	- The morph the container contains

hasHandles
	- Shows whether the container's handles exist

resizeHandles
	- Dictionary containing the resizeHandles at the container's corners
