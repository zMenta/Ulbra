import { useState } from "react";
import Button from "../components/Button";
import Header from "../components/Header";

function ProductRegister(){
	const [name, setName] = useState("")
	const [price, setPrice] = useState(0)
	const [description, setDescription] = useState("")
	const [imageUrl, setImageUrl] = useState("")

	function createProduct(){
		const product = {
			name: name.charAt(0).toUpperCase() + name.slice(1),
			price: price,
			description: description,
			imageUrl: imageUrl
		}

		console.log(product)
	}

	return(
		<>
			<Header title={"Register a product"}/>
			<form>
				<label> Name: 
					<input type="text" value={name} onChange={(event) => {
						setName(event.target.value)
					}} />
				</label>
				<label> Price: 
					<input type="number" value={price} onChange={(event) => {
						setPrice(event.target.value)
					}} />
				</label>
				<label> Description: 
					<input type="text" value={description} onChange={(event) => {
						setDescription(event.target.value)
					}} />
				</label>
				<label> Image URL: 
					<input type="text" value={imageUrl} onChange={(event) => {
						setImageUrl(event.target.value)
					}} />
				</label>
			</form>
			<br/>
			<br/>
			<Button title={"Register"} callback={createProduct}/>
		</>
	)
}

export default ProductRegister;
