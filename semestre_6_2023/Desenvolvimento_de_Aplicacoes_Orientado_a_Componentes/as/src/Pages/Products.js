import { useEffect, useState } from "react";
import Header from "../Components/Header";

function Products(){
	// TODO Future custom hook?
	const [products, setProducts] = useState([])
	useEffect(() => {
		async function fetchProducts() {
			const result = await fetch("http://localhost:3001/products")
			setProducts(await result.json())
		}

		fetchProducts()
	}, [])

	return(
		<>
			<Header title={"Products page"}/>
			{products && products.map((product) =>{
				return <h1>{product.name}</h1>
			})}
		</>
	)
}

export default Products;
