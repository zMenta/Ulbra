import persons from "../staticData/persons";
import Container from "./Container";
import PersonCard from "./PersonCard";

function CardContainer ({ personsArray = persons}) {
	return (
		<Container wrap={true}>
			{personsArray.map(person => 
				<PersonCard
					key={person.id}
					name={person.name}
					telephone={person.telephone}
					isInvitee={person.isInvitee}
					isPaid={person.isPaid}
					/>
			)}
		</Container>
	)
}

export default CardContainer;
