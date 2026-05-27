slide management
confirmAndDeleteSlideAt: anIndex

	| slide section choice |
	slide := self presentation slideAt: anIndex ifAbsent: [^ self].
	section := self presentation sectionStartingAt: slide.
	section ifNil: [^ self deleteSlideAt: anIndex].
	choice := UIManager default
		chooseFrom: #('Delete only this slide (reanchor section)' 'Delete slide and entire section contents' 'Cancel')
		values: #(#reanchor #cascade #cancel)
		title: 'This slide anchors section "' , section name , '"'.
	self deleteAnchorSlideAt: anIndex choice: (choice ifNil: [#cancel])
