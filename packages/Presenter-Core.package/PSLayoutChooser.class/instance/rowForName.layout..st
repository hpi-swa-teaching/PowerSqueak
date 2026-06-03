building
rowForName: aName layout: aLayout

    | row |
    row := Morph new
        color: Color transparent;
        layoutPolicy: TableLayout new;
        listDirection: #leftToRight;
        wrapCentering: #center;
        cellPositioning: #leftCenter;
        hResizing: #shrinkWrap;
        vResizing: #shrinkWrap;
        cellInset: self class contentSpacing;
        yourself.
    row
        addMorphBack: (self labelFor: aName);
        on: #mouseDown send: #value to: [self applyLayout: aLayout];
        on: #mouseEnter send: #value to: [self showPreviewFor: aLayout near: row];
        on: #mouseLeave send: #value to: [self hidePreview].
    ^ row

