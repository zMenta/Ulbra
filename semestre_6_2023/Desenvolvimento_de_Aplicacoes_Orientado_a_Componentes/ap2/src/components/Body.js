import { useState } from "react";
import persons from "../staticData/persons";
import CardContainer from "./CardContainer";
import CepContent from "./CepContent";
import Container from "./Container";
import RegisterPerson from "./RegisterPerson";

function Body() {
	const [personsArray, setPersonsArray] = useState(persons)

	return(
		<>
			<Container>
				<CepContent/>
				<RegisterPerson personsArray={personsArray} setPersons={setPersonsArray}/>
			</Container>
			<CardContainer personsArray={personsArray}/>
		</>
	)
}

export default Body;
