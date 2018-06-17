presentation mode
disablePresentationMode 

	self submorphsDo: [:each | each disablePresentationMode].
	self hideSlideNumberMorphHandles