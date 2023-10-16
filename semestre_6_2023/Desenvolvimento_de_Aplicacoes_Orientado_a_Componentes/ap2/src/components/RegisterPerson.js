import { useState } from "react";
import "../styles/RegisterPerson.css"
import Button from "./Button";
import persons from "../staticData/persons";


function RegisterPerson() {
	const [name, setName] = useState()
	const [telephone, setTelephone] = useState()
	const [imageUrl, setImageUrl] = useState()
	const [isInvitee, setInvitee] = useState(false)
	const [isPaid, setPaid] = useState(false)
	const [personsList, setPersonsList] = useState(persons)

	console.log(personsList)

	const createPerson = () => {
		const person = {
			id: personsList.length + 1,
			name: name,
			telephone: telephone,
			isInvitee: isInvitee,
			isPaid: isPaid,
			imageUrl: imageUrl
		}

		// Clear form fields after creating a person.
		setName("")
		setTelephone("")
		setImageUrl("")

		//   Not working?
		// setInvitee(false)
		// setPaid()

		setPersonsList([...personsList, person])
	}

	return(
		<div className="RegisterPerson">
			<h4> Register a new person </h4>
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
					<input type="checkbox" value={isInvitee} onChange={(event) => {
						setInvitee(event.target.value)
					}} />
				</label>

				<br/>
				<br/>
				<label> Has paid: 
					<input type="checkbox" value={isPaid} onChange={(event) => {
						setPaid(event.target.value)
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
