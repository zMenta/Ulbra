create view Persons_from_team as
select Team.name as TeamName, Person.name as PersonName, Cargo.name as CargoName
from Team_has_Person 
join Team on Team.id = Team_has_Person.Team_id
join Person on Team_has_Person.Person_id = Person.id
join Cargo on Person.Cargo_id = Cargo.id


create view Sponsorships_from_team as
select Team.name as TeamName, Sponsorship.name as SponsorName
from Team_has_Sponsorship 
join Team on Team.id = Team_has_Sponsorship.Team_id
join Sponsorship on Sponsorship.id = Team_has_Sponsorship.Sponsorship_id


create view Tracks_from_races as 
select Race.name as RaceName, Tracks.name as TrackName, Tracks.length_km as TrackLengthKm, address.street_name, address.number, address.city_name, address.state
from Race_has_Tracks
join Race on Race.id = Race_has_Tracks.Race_id
join Tracks on Tracks.id = Race_has_Tracks.Tracks_id
join address on address.id = Tracks.address_id









