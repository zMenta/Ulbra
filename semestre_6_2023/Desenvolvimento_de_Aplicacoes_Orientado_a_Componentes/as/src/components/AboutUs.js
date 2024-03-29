import { Link } from "react-router-dom";

function AboutUs(){
	return(
		<div className="items-center bg-gray-900 rounded-lg flex flex-col justify-start m-10 mt-8 p-4 h-[75vh] w-[54vw] shadow-black">
			<h1 className="font-bold text-3xl mb-10">About us</h1>
			<p className="mb-20">We are a proud company with really cool products, please check them out. We are based on Ulbra Torres</p>
			<Link className="text-lime-300 hover:text-lg hover:underline hover:text-lime-200" to={"/products/register"}>Register a new product</Link>
			<Link className="text-yellow-300 hover:text-lg hover:underline hover:text-yellow-200" to={"/products/update"}>Update a Product</Link>
			<Link className="text-red-400 hover:text-lg hover:underline hover:text-red-300" to={"/products/delete"}>Delete a Product</Link>
		</div>
	)
}

export default AboutUs;
