do not touch
exportAsPNGs: name

	| directory |
	directory := FileDirectory default / 'PSSlidePNGs' / name. 
	directory assureExistence. 
	self enablePresentationMode.
	self slideContainer enableNonInteractiveMode.
	self slides withIndexDo: [:each :index |
		self selectSlideNumber: index.
		World doOneCycle.
		each exportAsPNGNamed: (directory / ('slide', index, '.png')) fullName].
	self disablePresentationMode