import { useContext, useEffect, useState } from "react";
import { Link,useParams } from "react-router-dom";
import { ProductContext } from "../contexts/ProductContext";

function ProductFocus(){
	const params = useParams()
	const productContext = useContext(ProductContext)
	const [product, setProducts] = useState([])

	useEffect(() => {
		if(productContext.products){
			const filteredProduct = productContext.products.filter((produc => produc.id == params.id))
			setProducts(filteredProduct[0])
		} else {
			async function fetchData(){
				const data = await fetch("http://localhost:3001/products")
				const result = await data.json()
				const filteredProduct = result.filter((produc => produc.id == params.id))
				setProducts(filteredProduct[0])
			}
			fetchData()
		}
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
