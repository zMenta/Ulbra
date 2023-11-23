import { useContext, useEffect, useState } from "react";
import { Link,useParams } from "react-router-dom";
import { ProductContext } from "../contexts/ProductContext";

function ProductFocus(){
	const params = useParams()
	const productContext = useContext(ProductContext)
	const [product, setProducts] = useState([])
	//TODO Custom hook?
	useEffect(() => {
		//Old method
		// async function fetchProducts() {
		// 	const result = await fetch("http://localhost:3001/products")
		// 	const products = await result.json()
		// 	const filteredProduct = products.filter((produc => produc.id == params.id))
		// 	setProducts(filteredProduct[0])
		// }
		//
		// fetchProducts()
		const filteredProduct = productContext.products.filter((produc => produc.id == params.id))
		setProducts(filteredProduct[0])
	}, [])

	return(
		<>
		{product &&
		<>
			<Link to="/home">Home</Link>
			<Link to="/products">Products</Link>
			<h1>About the product {product.id} | {product.name}</h1>
			<h3>${product.price}</h3>
			<p>{product.description}</p>
		</>
		}
		</>
	)

}

export default ProductFocus;
