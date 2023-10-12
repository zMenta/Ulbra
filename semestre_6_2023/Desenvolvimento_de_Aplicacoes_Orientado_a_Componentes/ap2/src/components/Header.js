import "../styles/Header.css";

function Header({ titleLeft, title, titleRight }) {
	return (
		<>
		<header class="Header">
		<div>
			<h2> {titleLeft} </h2>
		</div>
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
