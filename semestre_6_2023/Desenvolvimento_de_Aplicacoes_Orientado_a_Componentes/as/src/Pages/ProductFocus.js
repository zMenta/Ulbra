import { useEffect, useState } from "react";
import { Link,useParams } from "react-router-dom";

function ProductFocus(){
	const params = useParams()
	const [product, setProducts] = useState([])
	useEffect(() => {
		async function fetchProducts() {
			const result = await fetch("http://localhost:3001/products")
			const products = await result.json()
			const filteredProduct = products.filter((produc => produc.id == params.id))
			setProducts(filteredProduct[0])
		}

		fetchProducts()
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
