toolbuilder buttons
magneticRasterButtonData

	^ Dictionary withAll: {
		#frame -> (0.75@0.0 corner: 0.85@1.0).
		#name -> #magneticRasterButton.
		#label -> 'Snap'.
		#action -> #toggleMagneticRaster.
		#color -> #magneticRasterButtonColor.
		#help -> 'Toggle grid snapping'}