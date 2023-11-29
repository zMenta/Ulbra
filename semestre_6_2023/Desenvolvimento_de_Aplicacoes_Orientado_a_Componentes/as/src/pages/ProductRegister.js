import { useState } from "react";
import { Link } from "react-router-dom";
import Button from "../components/Button";
import Header from "../components/Header";
import ErrorMessage from "../components/ErrorMessage"
import AboutUs from "../components/AboutUs";
import useCreate from "../customHooks/useCreate";
import SucessMessage from "../components/SucessMessage";

function ProductRegister(){
	const [name, setName] = useState("")
	const [price, setPrice] = useState(0)
	const [description, setDescription] = useState("")
	const [imageUrl, setImageUrl] = useState("")
	const [isValid, setValid] = useState(true)
	const [response, sendCreate] = useCreate()

	function createProduct(){
		const product = {
			name: name.charAt(0).toUpperCase() + name.slice(1),
			price: price,
			description: description,
			photo_url: imageUrl
		}

		if(product.name === "" ||
			product.price === 0 ||
			product.description === "" ||
			product.photo_url === ""
		){
			setValid(false)
			return
		}

		setValid(true)
		sendCreate(product)
	}

	return(
		<>
			<Header title={"Register a product"}/>
			<div className="flex flex-row">
				<AboutUs/>
				<div className="items-center bg-gray-900 rounded-lg flex flex-col justify-start m-10 mt-8 p-4 h-[65vh] w-[24vw] shadow-black">
					<form>
						<h2 className="mb-8 font-bold text-lg" >Register a new product</h2>
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
							<p className="mt-4" >Image URL:</p>
							<input className="bg-gray-600 rounded" type="text" value={imageUrl} onChange={(event) => {
								setImageUrl(event.target.value)
							}} />
						</div>
					</form>
					<Button title={"Register"} callback={createProduct}/>
					{response.status === 201 && isValid && <SucessMessage text="Product created!"/> }
					{!isValid && <ErrorMessage text="All values must be filled and price can't be 0!"/>}
				</div>
			</div>
		</>
	)
}

export default ProductRegister;
