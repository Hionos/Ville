package P_Vendable is
	type I_Vendable is interface;
	type T_Vendable_Class_Access is access all I_Vendable'Class;

	function Valeur(Bien: in I_Vendable) return Float is abstract;
end P_Vendable;