import { useNavigate } from "react-router-dom";

function ProductCard({product}) {
	const navigate = useNavigate()

	function focusProduct(id){
		navigate(`${id}`)
	}

	return(
		<div onClick={() => focusProduct(product.id)} className='bg-gray-900 border-zinc-100 m-2 h-80 w-96 p-5 shadow-black rounded-lg hover:bg-gray-700' >
			<h2>{product.name}</h2>
			<p>Price: ${product.price} </p>
			<p>{product.description}</p>
		</div>
	)
}

export default ProductCard;
