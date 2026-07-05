slide miniatures
highlightCurrentMiniature

	self miniatureController miniatures do: [:each | each unHighlight].
	self currentMiniature highlight