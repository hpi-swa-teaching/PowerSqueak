do not touch
exportAsPNGs: name

	(FileDirectory default / 'PSSlidePNGs' / name) assureExistence. 
	self enablePresentationMode.
	self slideContainer enableNonInteractiveMode.
	self slides withIndexDo: [:each :index |
		self selectSlide: index.
		World doOneCycle.
		each exportAsPNGNamed: 'PSSlidePNGs\', name, '\slide',index,'.png'].
	self disablePresentationMode