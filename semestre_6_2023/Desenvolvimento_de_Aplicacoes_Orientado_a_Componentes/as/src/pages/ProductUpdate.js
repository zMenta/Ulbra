import { useState } from "react";
import AboutUs from "../components/AboutUs";
import Button from "../components/Button";
import ErrorMessage from "../components/ErrorMessage";
import Header from "../components/Header";
import SucessMessage from "../components/SucessMessage";

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

		if(	product.name === "" ||
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
			<div className="flex flex-row">
				<AboutUs/>
				<div className="items-center bg-gray-900 rounded-lg flex flex-col justify-start m-10 mt-8 p-4 h-[65vh] w-[24vw] shadow-black">
					<form>
						<h2 className="mb-8 font-bold text-lg" >Update a product</h2>
						<div>
							<p>Id:</p>
							<input className="bg-gray-600 rounded" type="number" value={id} onChange={(event) => {
								setId(event.target.value)
							}} />
						</div>
						<div>
							<p>Name:</p>
							<input className="bg-gray-600 rounded" type="text" value={name} onChange={(event) => {
								setName(event.target.value)
							}} />
						</div>
						<div>
							<p className="mt-4" >Price:</p>
							<input className="bg-gray-600 rounded" type="number" value={price} onChange={(event) => {
								setPrice(event.target.value)
							}} />
						</div>
						<div>
							<p className="mt-4" >Description:</p>
							<input className="bg-gray-600 rounded" type="text" value={description} onChange={(event) => {
								setDescription(event.target.value)
							}} />
						</div>
						<div>
							<p className="mt-4" >Description:</p>
							<input className="bg-gray-600 rounded" type="text" value={imageUrl} onChange={(event) => {
								setImageUrl(event.target.value)
							}} />
						</div>
					</form>
					<Button title={"Update"} callback={updateProduct}/>
					{!isValid && <ErrorMessage text="All values must be filled and price can't be 0."/>}
					{response.status === 200 && isValid && <SucessMessage text="Product updated!"/> }
					{response.status !== 200 && response.status && <ErrorMessage text={`Error: ${response.status} - ${response.statusText}`}/>}
				</div>
			</div>
		</>
	)
}

export default ProductUpdate;
