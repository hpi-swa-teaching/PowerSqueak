slide miniatures
updateSlideMiniatureCompletelyAt: aNumber

	| slide |
	slide := self presentation slideAt: aNumber.
	slide changed.
	slide world ifNotNil: [:world | world displayWorldSafely].
	(self miniatureOf: slide) updateImage