slide management
confirmAndDeleteSlideAt: anIndex

	| slide section choice |
	(anIndex between: 1 and: self presentation slideCount) ifFalse: [^ self].
	slide := self presentation slideAt: anIndex.
	section := self presentation sectionStartingAt: slide.
	section ifNil: [^ self deleteSlideAt: anIndex].
	choice := UIManager default
		chooseFrom: #('Delete only this slide (reanchor section)' 'Delete slide and entire section contents' 'Cancel')
		values: #(#reanchor #cascade #cancel)
		title: 'This slide anchors section "' , section name , '"'.
	self deleteAnchorSlideAt: anIndex choice: (choice ifNil: [#cancel])
