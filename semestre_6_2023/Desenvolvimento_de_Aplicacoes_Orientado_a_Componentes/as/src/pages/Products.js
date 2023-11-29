import { useContext, useEffect } from "react";
import Header from "../components/Header";
import ProductCard from "../components/ProductCard";
import { ProductContext } from "../contexts/ProductContext";
import useFetch from "../customHooks/useFetch";

function Products(){
	const [products, request] = useFetch("http://localhost:3001/products")

	const productContext = useContext(ProductContext)
	if(products){
		productContext.setProducts(products)
	}

	useEffect(() => {
		request()
	}, [request])

	return(
		<>
			<Header title={"Products page"}/>
			<div className="flex justify-center flex-wrap mt-10">
			{products && products.map((product) =>{
				return <ProductCard product={product}/>
			})}
			</div>
		</>
	)
}

export default Products;
