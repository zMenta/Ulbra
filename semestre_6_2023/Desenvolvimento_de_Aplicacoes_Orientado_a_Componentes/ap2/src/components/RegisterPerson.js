import { useState } from "react";
import persons from "../staticData/persons";
import "../styles/RegisterPerson.css"
import Button from "./Button";

function RegisterPerson({ personsArray = persons ,setPersons }) {
	const [name, setName] = useState("")
	const [telephone, setTelephone] = useState("")
	const [imageUrl, setImageUrl] = useState("")
	const [isInvitee, setInvitee] = useState(false)
	const [isPaid, setPaid] = useState(false)
	const [isValid, setValid] = useState(true)

	const createPerson = () => {
		const person = {
			id: personsArray.length + 1,
			name: name.charAt(0).toUpperCase() + name.slice(1),
			telephone: telephone,
			isInvitee: isInvitee,
			isPaid: isPaid,
			imageUrl: imageUrl
		}

		if(person.name === "" || person.telephone === ""){
			setValid(false)
			return
		}

		// Clear form fields after creating a person.
		setName("")
		setTelephone("")
		setImageUrl("")
		setValid(true)

		personsArray.push(person)
		personsArray.sort(function(a, b){
			if(a.name < b.name) {return -1;}
			if(a.name > b.name) {return 1;}
			return 0;
		})
		setPersons([...personsArray])
	}

	return(
		<div className="RegisterPerson">
			<h4> Register a new person </h4>
			{!isValid && <h4 class="WarningMsg"> Name and Telephone must be filled! </h4>}
			<form>
				<label> Name: 
					<input type="text" value={name} onChange={(event) => {
						setName(event.target.value)
					}} />
				</label>
				<br/>
				<br/>
				<label> Telephone: 
					<input type="number" value={telephone} onChange={(event) => {
						setTelephone(event.target.value)
					}} />
				</label>

				<br/>
				<br/>
				<label> Is invitee: 
					<input type="checkbox" value={isInvitee} onChange={() => {
						setInvitee(!isInvitee)
					}} />
				</label>

				<br/>
				<br/>
				<label> Has paid: 
					<input type="checkbox" value={isPaid} onChange={() => {
						setPaid(!isPaid)
					}} />
				</label>

				<br/>
				<br/>
				<label> Image URL: 
					<input type="text" value={imageUrl} onChange={(event) => {
						setImageUrl(event.target.value)
					}} />
				</label>
			</form>
			<br/>
			<br/>
			<Button title={"Register"} callback={createPerson}/>
		</div>
	)
}

export default RegisterPerson;
