import { Link } from "react-router-dom"

function Header({title}) {
	return(
		<>
		<div className="text-2xl flex center w-screen bg-gray-800 text-center text-gray-50 h-20 p-6"> 
			<div className="ml-10">
			<Link className="mr-2 hover:underline" to="/home">Home</Link>
			<text className="mr-2">|</text>
			<Link className="mr-2 hover:underline" to="/products">Products</Link>
			<text className="mr-2">|</text>
			<Link className="hover:underline" to="/products/register">About us</Link>
			</div>
			<h1 className="ml-80 font-bold">{title}</h1>
		</div>
		</>
	)
}

export default Header
