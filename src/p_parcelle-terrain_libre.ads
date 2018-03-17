with P_Vendable; use P_Vendable;

package P_Parcelle.Terrain_Libre is
	type T_Terrain_Libre is new T_Parcelle and I_Vendable with private;
	type T_Terrain_Libre_Access is access all T_Terrain_Libre;

	function New_And_Init(Largeur, Longueur: in Float; Nom: in Unbounded_string; Via: access T_Parcelle'Class; Prix_Metre_Carre: Float) return T_Terrain_Libre_Access;

	overriding function Valeur(P: T_Terrain_Libre) return Float;
	overriding procedure Put_Details(P: T_Terrain_Libre);

private
	type T_Terrain_Libre is new T_Parcelle and I_Vendable with
	record
		Prix_Metre_Carre: Float := 500.0;
	end record;
end P_Parcelle.Terrain_Libre;