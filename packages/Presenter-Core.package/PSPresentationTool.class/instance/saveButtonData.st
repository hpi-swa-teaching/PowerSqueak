toolbuilder
saveButtonData

	^ Dictionary withAll: {
		#frame -> (0.7@0.0 corner: 0.8@1.0).
		#name -> #savingButton.
		#label -> 'Save'.
		#action -> #savePresentation}