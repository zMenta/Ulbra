import { Link } from "react-router-dom";
import Header from "../components/Header";

function ProductNotFound(){
	return(
		<>
		<Header title={"Product not found!"}/>
		<div className="items-center justify-center bg-red-800 rounded-lg flex flex-col m-10 mt-8 p-4 h-[75vh] w-[54vw] shadow-black">
			<h1 className="font-bold text-3xl mb-10">Product not found! :(</h1>
			<Link className="bg-blue-900 rounded-lg hover:bg-blue-700 mt-20 w-20 text-center" to="/products">  Go back  </Link>
		</div>
		</>
	)
}

export default ProductNotFound;
