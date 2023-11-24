import { Link } from "react-router-dom"

function Header({title}) {
	return(
		<>
		<div style={{width: "100%", height: "50px", backgroundColor: "lightblue"}}>
			<h1>{title}</h1>
		</div>
		<nav>
			<Link style={{ marginRight: 15}} to="/home">Home</Link>
			<Link style={{ marginRight: 15}} to="/products">Products</Link>
			<Link to="/products/register">Register Products</Link>
		</nav>
		</>
	)
}

export default Header