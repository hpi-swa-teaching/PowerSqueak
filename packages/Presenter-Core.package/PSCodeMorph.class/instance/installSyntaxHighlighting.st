as yet unclassified
installSyntaxHighlighting
	| styled |

	styled := SHTextStylerST80 new styledTextFor: self textMorph text.
	self setText: styled.