package body P_Parcelle.Terrain_Libre is

	function New_And_Init(Largeur, Longueur: in Float; Nom: in Unbounded_string; Via: access T_Parcelle'Class; Prix_Metre_Carre: Float) return T_Terrain_Libre_Access is
	begin
		return new T_Terrain_Libre'(Largeur, Longueur, Nom, Via, Prix_Metre_Carre);
	end New_And_Init;

	overriding function Valeur(P: T_Terrain_Libre) return Float is
	begin
		return P.Surface * P.Prix_Metre_Carre;
	end Valeur;

	overriding procedure Put_Details(P: T_Terrain_Libre) is
	begin
		T_Parcelle(P).Put_Details;
		put("Valeur: ");
		put(P.Valeur, Aft => 0, Exp => 0);
		Put_Line(" €");
	end Put_Details;
		
end P_Parcelle.Terrain_Libre;