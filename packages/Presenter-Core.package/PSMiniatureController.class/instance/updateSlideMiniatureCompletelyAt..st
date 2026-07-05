updating
updateSlideMiniatureCompletelyAt: aNumber

	| slide |
	slide := self tool presentation slideAt: aNumber.
	slide changed.
	slide world ifNotNil: [:world | world displayWorldSafely].
	(self miniatureOf: slide) updateImage