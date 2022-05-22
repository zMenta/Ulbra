CREATE PROCEDURE GetPersonsFromCargo (id_param INT)
BEGIN
	select Cargo.name as CargoName, Person.name as PersonName, Person.birth_date as PersonBirthDate
	from Person 
	join Cargo on Person.Cargo_id = Cargo.id
	where Cargo.id = id_param;
END


CREATE PROCEDURE GetRaceTracks (name_param VARCHAR(40))
BEGIN
	select RaceName, count(TrackName) as TrackQuantity, sum(TrackLengthKm) as TotalKm
	from Tracks_from_races
	where RaceName = name_param;
END


CREATE PROCEDURE GetTeamSize (name_param VARCHAR(40))
BEGIN
	select TeamName, count(PersonName) as TeamSize
	from Persons_from_team
	where TeamName = name_param;
END


CREATE PROCEDURE GetTeamSponsorSize (name_param VARCHAR(40))
BEGIN
	select TeamName, count(SponsorName) as SponsorQuantity
	from Sponsorships_from_team
	where TeamName = name_param;
END