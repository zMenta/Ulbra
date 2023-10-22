import "../styles/CepContent.css"
import useFetch from "../hooks/useFetch";

function CepContent({ isVisible = true, streetName="", dateTime=""}){
	const [data] = useFetch("https://viacep.com.br/ws/95560000/json/")
	console.log(data)

	if(!isVisible){
		return
	}

	return(
		<div className="CepContent">
			<h3>CEP | {data.cep}</h3>
			<p>City: {data.localidade} - {data.uf}</p>
			<p>Neighborhood: {data.bairro}</p>
			<p>Complement: {data.complemento}</p>
			<p>Street: {streetName}</p>
			<p>Time: {dateTime}</p>
		</div>
	)
}

export default CepContent;
