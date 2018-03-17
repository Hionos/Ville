with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with P_Vendable; use P_Vendable;

package P_Parcelle.Batiment is

	type T_Batiment is new T_Parcelle and I_Vendable with private;
	type T_Batiment_access is access all T_Batiment;

	function New_And_Init(Largeur, Longueur: in Float; Nom: in Unbounded_string; Via: access T_Parcelle'Class; Niveaux: Natural) return T_Batiment_access;

	procedure Hello(P: T_Batiment);

	overriding function Surface(P: T_Batiment) return Float;
	overriding function Valeur(P: T_Batiment) return Float;
	overriding procedure Put_Details(P: T_Batiment);

private
	type T_Batiment is new T_Parcelle and I_Vendable with
	record
		Niveaux: Natural := 1; -- dans l'idéal, il faudrait seulement les entiers positifs
	end record;
	
end P_Parcelle.Batiment;