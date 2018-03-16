with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with P_Parcelle.Batiment; use P_Parcelle.Batiment;

package body P_Proprietaire is
	function Valeur_Totale(P: T_Proprietaire) return Float is
		Valeur: Float := 0.0;
		bat: T_Batiment_Access;
	begin
		for Propriete of P.Proprietes loop
			Valeur := Valeur + Propriete.Valeur;
			bat := T_Batiment_Access(Propriete);
			Put(bat.Surface);
			bat.Hello;
		end loop;
		return Valeur;
	end Valeur_Totale;

	procedure Buy(P: in out T_Proprietaire; Propriete: T_Vendable_Class_Access) is
	begin
		P.Proprietes.Append(Propriete);
	end Buy;

	procedure Put_Details(P: in out T_Proprietaire) is
	begin
		Put("Valeur totale: ");
		Put(P.Valeur_Totale, Aft => 0, Exp => 0);
		Put_Line(" €");
	end Put_Details;


end P_Proprietaire;