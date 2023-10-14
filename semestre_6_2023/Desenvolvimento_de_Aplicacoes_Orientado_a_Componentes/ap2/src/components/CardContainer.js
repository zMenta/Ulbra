import Container from "./Container";
import PersonCard from "./PersonCard";

function CardContainer () {
	return (
		<Container wrap={true}>
			<PersonCard
				name={"Name"}
				telephone={52348523}
				isInvitee={true}
				isPaid={false}
			/>
			<PersonCard
				name={"Name"}
				telephone={52348523}
				isInvitee={false}
				isPaid={false}
			/>
			<PersonCard
				name={"Name"}
				telephone={52348523}
				isInvitee={false}
				isPaid={true}
			/>
			<PersonCard
				name={"Name"}
				telephone={52348523}
				isInvitee={true}
				isPaid={true}
			/>
		</Container>
	)
}

export default CardContainer;
