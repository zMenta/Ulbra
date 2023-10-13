import "../styles/Footer.css"
import HyperContent from "./HyperContent";

function Footer({ title }) {
	return(
		<footer className="Footer">
			<h5>{title}</h5>
			<HyperContent
				title={"github"}
				url={"https://github.com/zMenta/Ulbra/tree/main/semestre_6_2023/Desenvolvimento_de_Aplicacoes_Orientado_a_Componentes/ap2"}
				imageUrl={"https://www.pngall.com/wp-content/uploads/2016/04/Github-PNG-Image.png"}
			></HyperContent>
		</footer>
	)
}

export default Footer;
