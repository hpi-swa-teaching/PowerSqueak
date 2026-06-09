styling
selectionEmphasisCode: aCode
	| interval emphasis newRuns |

	interval := self textMorph editor selectionInterval.
	interval size <= 0
		ifTrue: [interval := 1 to: self textMorph text size].
	emphasis := TextEmphasis new emphasisCode: aCode.
	newRuns := self textMorph text runs
		copyReplaceFrom: interval first
		to: interval last
		with: ((self textMorph text runs copyFrom: interval first to: interval last)
			replace: [:attributes |
				| newAttributes |
				newAttributes := attributes reject: [:attr | attr class = TextEmphasis].
				aCode = 0
					ifTrue: [newAttributes]
					ifFalse: [Text addAttribute: emphasis toArray: newAttributes]]).
	self textMorph text instVarAt: 2 put: newRuns.
	self textMorph releaseParagraph.
	self textMorph paragraph