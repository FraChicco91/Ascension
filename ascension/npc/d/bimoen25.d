///////////////////////////////////////////////////////////////////////
// Ascension : BIMOEN25 
///////////////////////////////////////////////////////////////////////
// Weimer: looks mostly like bugfixes to prevent Immy's banter from
// happening if the people are just standing around but not actually
// in the party. 
//
// [DW: and they are all fixed in EE and in the Fixpack, so we skip them]
//
// However, states 81, 91 and 100 (which deal with her getting her Bhaal
// powers) have been given lower weights (thus, they are always checked
// first). 
///////////////////////////////////////////////////////////////////////

SET_WEIGHT BIMOEN25 81 #-3
SET_WEIGHT BIMOEN25 91 #-2
SET_WEIGHT BIMOEN25 100 #-1

///////////////////////////////////////////////////////////////////////
// DW addition: Imoen has conditions to trigger her conversations, but
// those triggers aren't in the dialog file itself, which can result in
// them firing implausibly early. Add them.
///////////////////////////////////////////////////////////////////////

ADD_STATE_TRIGGER bimoen25 91 ~Global("YagaShuraHeart1","GLOBAL",2)~
ADD_STATE_TRIGGER bimoen25 101 ~Global("METBAL","GLOBAL",1)~
