package body P_Parcelle.Batiment is
		function New_And_Init(Largeur, Longueur: in Float; Nom: in Unbounded_string; Via: access T_Parcelle'Class; Niveaux: in Natural) return T_Batiment_Access is
		begin
			return new T_Batiment'(Largeur, Longueur, Nom, Via, Niveaux);
		end;

		overriding function Surface(P: T_Batiment) return Float is
		begin
			return P.Largeur * P.Longueur * Float(P.Niveaux);
		end Surface;

		overriding function Valeur(P: T_Batiment) return Float is
			Prix_Metre_Carre: Float := 500.0;
		begin
			return P.Surface * Prix_Metre_Carre;
		end Valeur;

		overriding procedure Put_Details(P: T_Batiment) is
		begin
			T_Parcelle(P).Put_Details;
			put("Valeur: ");
			put(P.Valeur, Aft => 0, Exp => 0);
			Put_Line(" €");

		end Put_Details;

		procedure Hello(P: T_Batiment) is
		begin
			Put_Line("Hello");
		end Hello;




end P_Parcelle.Batiment;