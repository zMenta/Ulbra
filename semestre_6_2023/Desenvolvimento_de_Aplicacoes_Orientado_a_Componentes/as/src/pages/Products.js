import { useContext, useEffect, useState } from "react";
import Header from "../components/Header";
import ProductCard from "../components/ProductCard";
import { ProductContext } from "../contexts/ProductContext";

function Products(){
	const productContext = useContext(ProductContext)
	// TODO Future custom hook?
	const [products, setProducts] = useState([])
	useEffect(() => {
		async function fetchProducts() {
			const result = await fetch("http://localhost:3001/products")
			const products = await result.json()
			setProducts(products)
			productContext.setProducts(products)
		}

		fetchProducts()
	}, [])

	return(
		<>
			<Header title={"Products page"}/>
			{products && products.map((product) =>{
				return <ProductCard product={product}/>
			})}
		</>
	)
}

export default Products;
