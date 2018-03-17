package body P_Parcelle.Voie is
		function New_And_Init(Largeur, Longueur: in Float; Nom: in Unbounded_string; Via: access T_Parcelle'Class; Circulation: in T_Circulation) return T_Voie_Access is
		begin
			return new T_Voie'(Largeur, Longueur, Nom, Via, Circulation);
		end;
end P_Parcelle.Voie;