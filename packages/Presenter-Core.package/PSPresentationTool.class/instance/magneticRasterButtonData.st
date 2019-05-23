toolbuilder buttons
magneticRasterButtonData

	^ Dictionary withAll: {
		#size -> #bigButtonSize.
		#name -> #magneticRasterButton.
		#label -> 'Snap'.
		#action -> #toggleMagneticRaster.
		#color -> #magneticRasterButtonColor.
		#help -> 'Toggle grid snapping'}