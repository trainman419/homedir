syntax keyword messageDef BO_ contained
syntax keyword signalDef SG_ contained
syntax keyword nodeDef BU_ contained
syntax keyword commentDef CM_ contained
syntax keyword valTableDef VAL_ contained

syntax match messageName "\w\+:"me=e-1 contained
syntax match messageLength ": \d\+"ms=s+2 contained
syntax match transmitter "\w\+$" contained
syntax match messageID "\d\+" contained
syntax match messageDefGroup "^BO_ \d\+" contains=messageDef,messageID contained
syntax match message "^BO_ \d\+ \w\+: \d\+ \w\+" contains=messageDefGroup,messageName,messageLength,transmitter transparent

syntax match sigReceiver "\w\+" contained
syntax match sigReceivers "\w\+\(,\w\+\)*$" contains=sigReceiver contained
syntax match sigUnits '"[^"]*"'ms=s+1,me=e-1 contained
syntax match sigMaxVal "|[^\]]*\]"ms=s+1,me=e-1 contained
syntax match sigMinVal "\[[^|]*|"ms=s+1,me=e-1 contained
syntax match sigOffset ",[^)]*)"ms=s+1,me=e-1 contained
syntax match sigScale "([^,]*,"ms=s+1,me=e-1 contained
syntax match sigType "@\(1\|0\)\(+\|-\) "ms=s+1 contained
syntax match sigLength "|\d\+@"ms=s+1,me=e-1 contained
syntax match sigStartBit " \d\+|"me=e-1 contained
syntax match sigMultiplexorVal "m\d\+ :"me=e-2 contained
syntax match signalName "\w\+" contained
syntax match messageMultiplexor "\w\+ M " contained
syntax match signalDefGroup "^ SG_ \w\+ \(M \)\?" contains=signalDef,messageMultiplexor,signalName contained
syntax match signal ' SG_ \w\+ \(\w\+ \)\?: \d\+|\d\+@\(1\|0\)\(+\|-\) ([^,]*,[^)]*) \[[^|]*|[^\]]*\] "[^"]*" \w\+\(,\w\+\)*$' contains=signalDefGroup,sigMultiplexorVal,sigStartBit,sigLength,sigType,sigScale,sigOffset,sigMinVal,sigMaxVal,sigUnits,sigReceivers transparent

syntax match messageName2 "\a\w\+" contained
syntax match nodeName "\w\+" contained
syntax match dbcComment '"[^"]*"'ms=s+1,me=e-1 contained
syntax match dbcNodeComment '^CM_ BU_ \w\+ "[^"]*";' contains=commentDef,nodeDef,nodeName,dbcComment
syntax match dbcMsgComment '^CM_ BO_ \d\+ "[^"]*";' contains=commentDef,messageDef,messageID,dbcComment
syntax match dbcSigComment '^CM_ SG_ \d\+ \w\+ "[^"]*";' contains=commentDef,signalDef,messageID,messageName2,dbcComment

syntax match valTableMessageID "\d\+" contained
syntax match valTableValue '\d\+' contained
syntax match valTableEnum '"[^"]*"'hs=s+1,he=e-1 contained
syntax match valTableEntry '\d\+ "[^"]*" ' contains=valTableValue,valTableEnum transparent
syntax match valTableMessageName "\a\w\+" contained
syntax match valTable 'VAL_ \d\+ \w\+ \(\d\+ "[^"]*" \)\+;' contains=valTableDef,valTableEntry,valTableMessageID,valTableMessageName transparent

hi def link messageDef Type
hi def link messageID Constant
hi def link messageName Identifier
hi def link messageLength Constant
hi def link transmitter Special

hi def link signalDef Type
hi def link messageMultiplexor Special
hi def link signalName Identifier
hi def link sigMultiplexorVal Statement
hi def link sigStartBit Constant
hi def link sigLength Constant
hi def link sigType Type
hi def link sigScale Constant
hi def link sigOffset Constant
hi def link sigMinVal Constant
hi def link sigMaxVal Constant
hi def link sigUnits Identifier
hi def link sigReceiver Special

hi def link nodeDef Type
hi def link commentDef Type
hi def link nodeName Special
hi def link dbcComment Constant
hi def link messageName2 Identifier

hi def link valTableDef Type
hi def link valTableMessageID Constant
hi def link valTableMessageName Special
hi def link valTableEnum Identifier
hi def link valTableValue Constant
