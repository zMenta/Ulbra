import { useState } from "react";
import AboutUs from "../components/AboutUs";
import Button from "../components/Button";
import ErrorMessage from "../components/ErrorMessage";
import Header from "../components/Header";
import SucessMessage from "../components/SucessMessage";
import useDelete from "../customHooks/useDelete";

function ProductDelete(){
	const [id, setId] = useState(-1)
	const [response, sendDelete] = useDelete()

	function updateProduct(){
		sendDelete(id)
	}

	return(
		<>
			<Header title={"Delete a product"}/>
			<div className="flex flex-row">
				<AboutUs/>
				<div className="items-center bg-gray-900 rounded-lg flex flex-col justify-start m-10 mt-8 p-4 h-[65vh] w-[24vw] shadow-black">
					<form>
						<h2 className="mb-8 font-bold text-lg" >Delete a product</h2>
						<div>
							<p>Id:</p>
							<input className="bg-gray-600 rounded" type="number" value={id} onChange={(event) => {
								setId(event.target.value)
							}} />
						</div>
					</form>
					<Button title={"Delete"} callback={updateProduct}/>
					{response.status === 200 &&  <SucessMessage text="Product deleted!"/> }
					{response.status !== 200 && response.status && <ErrorMessage text={`Error: ${response.status} - ${response.statusText}`}/>}
				</div>
			</div>
		</>
	)
}

export default ProductDelete;
