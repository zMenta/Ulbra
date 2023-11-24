import { useState } from "react";
import Button from "../components/Button";
import Header from "../components/Header";

function ProductUpdate(){
	const [id, setId] = useState(-1)
	const [name, setName] = useState("")
	const [price, setPrice] = useState(0)
	const [description, setDescription] = useState("")
	const [imageUrl, setImageUrl] = useState("")
	const [isValid, setValid] = useState(true)
	const [response, setResponse] = useState({})

	async function updateProduct(){
		const product = {
			name: name.charAt(0).toUpperCase() + name.slice(1),
			price: price,
			description: description,
			imageUrl: imageUrl
		}

		console.log(`Product id: ${id}`)
		if( id <= -1 ||
			product.name === "" ||
			product.price === 0 ||
			product.description === "" ||
			product.imageUrl === ""
		){
			setValid(false)
			return
		}

		setValid(true)
		const resp = await fetch(`http://localhost:3001/products/${id}`, {
			method: "PUT",
			headers: {"Content-Type": "application/json"},
			body: JSON.stringify(product)
		})
		setResponse(resp)
	}

	return(
		<>
			<Header title={"Update a product"}/>
			{!isValid && <h4>All values must be filled and price can't be 0! Id must be higher than -1</h4>}
			{response.status === 200 && isValid && <h3>Product updated</h3>}
			{response.status !== 200 && isValid && <h3>Error: {response.status} - {response.statusText}</h3>}
			<form>
				<label> Product ID: 
					<input type="number" value={id} onChange={(event) => {
						setId(event.target.value)
					}} />
				</label>
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
			<Button title={"Update"} callback={updateProduct}/>
		</>
	)
}

export default ProductUpdate;
