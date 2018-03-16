with P_Parcelle; use P_Parcelle;
with P_Parcelle.Voie; use P_Parcelle.Voie;
with P_Vendable; use P_Vendable;
with P_Parcelle.Batiment; use P_Parcelle.Batiment;
with P_Parcelle.Terrain_Libre; use P_Parcelle.Terrain_Libre;
with P_Proprietaire; use P_Proprietaire;
with ada.strings.unbounded; use ada.strings.unbounded;
with ada.text_io; use ada.text_io;
with Ada.Unchecked_Deallocation;

procedure Ville is
	Voie_Acces : T_Voie_Access := New_And_Init(30.0, 30.0, to_unbounded_string("Seine"), null, DOUBLE_SENS);
	Voie_1: T_Voie_Access := New_And_Init(10.0, 100.0, to_unbounded_string("Saint-Denis"), Voie_Acces, DOUBLE_SENS);
	Batiment_1: access T_Batiment := New_And_Init(10.0, 8.0, to_unbounded_string("Deskeo"), Voie_1, 5);
	Garage: access T_Batiment := New_And_Init(5.0, 3.0, to_unbounded_string("Garage"), Voie_1, 1);
	Terrain_0: T_Terrain_Libre_Access := New_And_Init(400.0, 400.0, to_unbounded_string("Champs"), Voie_1, 100.0);
	Terrain_Libre_1: T_Terrain_Libre_Access := New_And_Init(400.0, 400.0, to_unbounded_string("Champs"), Voie_1, 100.0);
	MrDupont: T_Proprietaire;

	procedure Free is new Ada.Unchecked_Deallocation(T_Voie, T_Voie_Access);
begin -- ville
	-- Voie_Acces.put_details;
	-- Voie_1.put_details;
	-- Batiment_1.put_details;
	-- Terrain_Libre_1.put_details;

	MrDupont.buy(T_Vendable_Class_Access(Batiment_1));
	MrDupont.buy(T_Vendable_Class_Access(Garage));
	MrDupont.buy(T_Vendable_Class_Access(Terrain_0));

	MrDupont.Put_Details;

	free(Voie_Acces);
	free(Voie_1);

end ville;