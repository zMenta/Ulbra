import "../styles/Header.css";
import HyperContent from "./HyperContent";

function Header({ title, titleRight }) {
	return (
		<>
		<header class="Header">
		<HyperContent
			url={"https://www.ulbra.br/"}
			imageUrl={"https://servicos.ulbra.br/login/bd06ba234c939a31f5c29d1b0a8d2840.png"}
			imageSize={50}
		/>
		<div>
			<h1> {title} </h1>
		</div>
		<div>
			<h2> {titleRight} </h2>
		</div>

		</header>
		</>
	)
}

export default Header;
