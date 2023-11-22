function ProductCard({product}) {
	return(
		<div style={{ backgroundColor: "lightgrey", padding:8, margin:10, width: "20%" }}>
			<h2>{product.name}</h2>
			<p>Price: ${product.price} </p>
			<p>Description: {product.description}</p>
		</div>
	)
}

export default ProductCard;
