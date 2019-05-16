toolbuilder buttons
magneticRasterButtonData

	^ Dictionary withAll: {
		#size -> self class bigButtonSize.
		#name -> #magneticRasterButton.
		#label -> 'Snap'.
		#action -> #toggleMagneticRaster.
		#color -> #magneticRasterButtonColor.
		#help -> 'Toggle grid snapping'}