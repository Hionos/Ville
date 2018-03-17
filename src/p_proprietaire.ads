with P_Vendable; use P_Vendable;
with Ada.Containers.Doubly_Linked_Lists;

package P_Proprietaire is

	package P_Proprietes is new Ada.Containers.Doubly_Linked_Lists(T_Vendable_Class_Access);
	use P_Proprietes;

	type T_Proprietaire is tagged private;

	function Valeur_Totale(P: T_Proprietaire) return Float;
	procedure Buy(P:in out T_Proprietaire; Propriete: T_Vendable_Class_Access);
	procedure Put_Details(P: in out T_Proprietaire);
private
	type T_Proprietaire is tagged
	record
		Proprietes: List;
	end record;
end P_Proprietaire;