Scriptname SLP_fcts_outfits extends Quest  

ObjectReference Property DanicaPureSpringRef Auto
ObjectReference Property AcolyteJenssenRef Auto

Outfit Property PriestWhiterunOutfit Auto

Keyword Property ArmorCuirass  Auto  
Keyword Property ClothingBody  Auto  

Function SetPriestOutfits()
	ActorBase DanicaActorBase = (DanicaPureSpringRef as Actor).GetActorBase()

	DanicaActorBase.SetEssential()

	If (StorageUtil.GetIntValue(none, "_SLP_togglePriestOutfits" ))
		(DanicaPureSpringRef as Actor).SetOutfit(PriestWhiterunOutfit)
		(AcolyteJenssenRef as Actor).SetOutfit(PriestWhiterunOutfit)
	Endif
	
EndFunction


Bool Function isActorNaked( Actor akActor )
	; Debug.Trace("[SLP]   	Is actor naked - ArmorCuirass: " + akActor.WornHasKeyword(ArmorCuirass))
	; Debug.Trace("[SLP]      Is actor naked - ClothingBody: " + akActor.WornHasKeyword(ClothingBody))
	If (!akActor.WornHasKeyword(ArmorCuirass) && !akActor.WornHasKeyword(ClothingBody))
		return true
	EndIf
	
	Return False
EndFunction

