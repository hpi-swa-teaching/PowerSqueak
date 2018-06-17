do not touch
exportAsPNGs

	self enablePresentationMode.
	self slideContainer enableNonInteractiveMode.
	self slides withIndexDo: [:each :index |
		self selectSlide: index.
		World doOneCycle.
		each exportAsPNGNamed: 'SlidesPNG\slide',index,'.png'].
	self disablePresentationMode