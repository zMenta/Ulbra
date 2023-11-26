import { useCallback, useState } from "react";

function useCreate(){
	const [response, setResponse] = useState({})

	const sendCreate = useCallback(async (product) => {
		const resp = await fetch("http://localhost:3001/products", {
			method: "POST",
			headers: {"Content-Type": "application/json"},
			body: JSON.stringify(product)
		})
		setResponse(resp)
	}, [])


	return [response, sendCreate]
}

export default useCreate;
