with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

package P_Parcelle.Voie is

	type T_Circulation is (PIETON, SENS_UNIQUE, DOUBLE_SENS);
	type T_Voie is new T_Parcelle with private;
	type T_Voie_access is access all T_Voie;

	function New_And_Init(Largeur, Longueur: in Float; Nom: in Unbounded_string; Via: access T_Parcelle'Class; Circulation: in T_Circulation) return T_Voie_access;

private
	type T_Voie is new T_Parcelle with
	record
		Circulation: T_Circulation := DOUBLE_SENS;
	end record;
	
end P_Parcelle.Voie;