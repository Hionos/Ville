package body P_Parcelle is

	function Surface(P : T_Parcelle) return Float is
	begin -- surface
		return P.Largeur * P.Longueur;
	end surface;

	procedure Put_Details(p: T_Parcelle) is
	begin -- put_details
		new_line;
		put_line("type: " & ada.tags.expanded_name(T_Parcelle'class(p)'tag));
		put_line("name: " & to_string(p.nom));
		put("surface: ");
		put(P.Surface, aft => 2, exp => 0);
		put_line("m2");
	end Put_Details;

end P_Parcelle;