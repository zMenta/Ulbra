import { useContext, useEffect, useState } from "react";
import { Link,useParams } from "react-router-dom";
import Header from "../components/Header";
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

	if(product){
		return(
			<>
				<Header title={"About this product"}/>
				<div className="flex justify-center">
					<div className="bg-gray-900 rounded-lg flex flex-col justify-start m-10 mt-8 p-4 h-[85vh] w-[44vw] shadow-black items-center">
						<img className="rounded h-[32rem] w-[48rem]" src="https://media.gettyimages.com/id/185318363/photo/office-armchair-clipping-path.jpg?s=612x612&w=0&k=20&c=cqlTWgGE1msfJmsA8hYFUYGvS3AkWUCd08Vuw3Pudjs=" alt={product.name}/>
						<h1 className="text-2xl font-bold mt-5 mb-5">{product.id} | {product.name}</h1>
						<h3 className="text-lg mb-2">${product.price}</h3>
						<p>{product.description}</p>
						<Link className="bg-blue-900 rounded-lg hover:bg-blue-700 mt-20 w-20 text-center" to="/products">  Go back  </Link>
					</div>
				</div>
			</>
		)
	} else {
		window.location.href = "http://localhost:3000/products/notFound"
	}
}

export default ProductFocus;
