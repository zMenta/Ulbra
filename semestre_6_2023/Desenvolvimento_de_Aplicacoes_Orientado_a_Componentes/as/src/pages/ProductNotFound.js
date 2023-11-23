import { Link, useParams } from "react-router-dom";
import Header from "../components/Header";

function ProductNotFound(){
	const params = useParams()

	return(
		<>
		<Header title={"Product not found!"}/>
		<h1>:(</h1>
		<p>Product not found of id: {params.id}</p>
		<Link to="/products">Go back</Link>
		</>
	)
}

export default ProductNotFound;
