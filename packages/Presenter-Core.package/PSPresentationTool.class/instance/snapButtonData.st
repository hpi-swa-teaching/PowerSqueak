toolbuilder buttons
snapButtonData

	^ Dictionary withAll: {
		#name -> #magneticRasterButton.
		#label -> 'Snap'.
		#action -> #toggleMagneticRaster.
		#color -> #snapButtonColor.
		#frame ->  (0.75@0.0 corner: 0.85@1.0).
		#help -> 'Toggle grid snapping'}