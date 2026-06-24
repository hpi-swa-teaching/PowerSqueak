instance creation
on: aPSPresentationTool duplicate: aPSSlide

	^ self new
		tool: aPSPresentationTool;
		slide: aPSSlide;
		duplicate: aPSSlide duplicate;
		yourself 