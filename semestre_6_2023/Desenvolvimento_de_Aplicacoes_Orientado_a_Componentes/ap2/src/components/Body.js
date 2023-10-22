import { useState } from "react";
import persons from "../staticData/persons";
import Button from "./Button";
import CardContainer from "./CardContainer";
import CepContent from "./CepContent";
import Container from "./Container";
import RegisterPerson from "./RegisterPerson";
import Welcome from "./Welcome";

function Body() {
	const [personsArray, setPersonsArray] = useState(persons)
	const [cepVisible, setCepVisible] = useState(true)

	function switchCepVisible(){
		setCepVisible(!cepVisible)
	}

	return(
		<>
			<Welcome name={"Daniel"}/>
			<Container alignStart={true}>
				<Container column={true}>
					<Button title={"CEP Button"} callback={switchCepVisible}/>
					<CepContent isVisible={cepVisible} streetName={"A street name"} dateTime={"15:40"}/>
				</Container>
				<RegisterPerson personsArray={personsArray} setPersons={setPersonsArray}/>
				<CardContainer personsArray={personsArray}/>
			</Container>
		</>
	)
}

export default Body;
