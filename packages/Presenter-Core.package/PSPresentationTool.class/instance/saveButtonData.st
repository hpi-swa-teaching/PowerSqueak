as yet unclassified
saveButtonData

	^ Dictionary withAll: {
		#frame -> (0.5@0.0 corner: 0.6@1.0).
		#name -> #savingButton.
		#label -> 'Save'.
		#action -> #savingConfirmation}