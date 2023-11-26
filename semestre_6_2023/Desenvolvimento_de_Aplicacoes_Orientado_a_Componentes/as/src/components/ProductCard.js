import { useNavigate } from "react-router-dom";

function ProductCard({product}) {
	const navigate = useNavigate()

	function focusProduct(id){
		navigate(`${id}`)
	}

	return(
		<div onClick={() => focusProduct(product.id)} className='flex-col flex justify-start bg-gray-900 border-zinc-100 m-2 h-96 w-96 shadow-black rounded-lg hover:bg-gray-700 hover:scale-105' >
			<img className="rounded h-72 " src={product.photo_url} alt={product.name}/>
			<div className="m-2">
			<h2 className="font-bold text-lg mb-2">{product.name}</h2>
			<p>Price: ${product.price} </p>
			</div>
		</div>
	)
}

export default ProductCard;
