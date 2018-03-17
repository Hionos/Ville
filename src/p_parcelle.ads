with ada.strings.unbounded; use ada.strings.unbounded;
with ada.text_io; use ada.text_io;
with ada.float_text_io; use ada.float_text_io;
with ada.tags;

package P_Parcelle is
	
	type T_Parcelle is abstract tagged private;
	type T_Parcelle_Access is access all T_Parcelle;

	function Surface(P : T_Parcelle) return Float;
	procedure Put_Details(P: T_Parcelle);

private
	type T_Parcelle is abstract tagged
	record
		Largeur, Longueur: float;
		Nom: unbounded_string;
		Via: access T_Parcelle'Class := null;
	end record;

end P_Parcelle;