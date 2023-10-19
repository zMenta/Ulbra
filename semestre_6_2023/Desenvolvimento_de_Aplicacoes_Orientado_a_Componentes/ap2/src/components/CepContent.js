import useFetch from "../hooks/useFetch";

function CepContent(){
	const [data] = useFetch("https://viacep.com.br/ws/95560000/json/")
	console.log(data)

	return(
		<div>
			<h3>CEP | {data.cep}</h3>
			<p>Cidade: {data.localidade} - {data.uf}</p>
			<p>Bairro: {data.bairro}</p>
			<p>Complemento: {data.complemento}</p>
		</div>
	)
}

export default CepContent;
