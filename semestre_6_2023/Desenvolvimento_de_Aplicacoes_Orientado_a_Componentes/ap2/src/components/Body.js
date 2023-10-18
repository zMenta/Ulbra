import { useState } from "react";
import persons from "../staticData/persons";
import CardContainer from "./CardContainer";
import RegisterPerson from "./RegisterPerson";

function Body() {
	const [personsArray, setPersonsArray] = useState(persons)

	return(
		<>
			<RegisterPerson personsArray={personsArray} setPersons={setPersonsArray}/>
			<CardContainer personsArray={personsArray}/>
		</>
	)
}

export default Body;
