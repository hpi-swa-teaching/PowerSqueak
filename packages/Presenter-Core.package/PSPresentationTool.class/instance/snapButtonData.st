toolbuilder buttons
snapButtonData

	^ Dictionary withAll: {
		#name -> #magneticRasterButton.
		#label -> 'Snap'.
		#action -> #toggleMagneticRaster.
		#color -> #snapButtonColor.
		#frame ->  (0.72@0.0 corner: 0.82@1.0).
		#help -> 'Toggle grid snapping'}