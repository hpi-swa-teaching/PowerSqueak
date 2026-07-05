A PSMiniatureController manages the miniature sidebar of a PSPresentationTool. It creates and caches slide miniatures, builds the miniature list including section headers, tracks drag state, and updates miniature previews.

Instance Variables
	tool:			<PSPresentationTool>
	miniatures:		<Dictionary>
	draggedSlide:	<PSSlide | nil>

tool
	- The presentation tool whose slides and presentation state are shown as miniatures

miniatures
	- A dictionary mapping slides to their cached PSMiniature instances

draggedSlide
	- The slide currently being dragged in the miniature sidebar, or nil if no drag is active