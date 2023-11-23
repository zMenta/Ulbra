import { useNavigate } from "react-router-dom";

function ProductCard({product}) {
	const navigate = useNavigate()

	function focusProduct(id){
		navigate(`${id}`)
	}

	return(
		<div onClick={() => focusProduct(product.id)} style={{ backgroundColor: "lightgrey", padding:8, margin:10, width: 450 }}>
			<h2>{product.name}</h2>
			<p>Price: ${product.price} </p>
			<p>{product.description}</p>
		</div>
	)
}

export default ProductCard;
