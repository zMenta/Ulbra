import { useCallback, useState } from "react";

function useUpdate(){
	const [response, setResponse] = useState({})

	const sendUpdate = useCallback(async (id, product) => {
		const resp = await fetch(`http://localhost:3001/products/${id}`, {
			method: "PUT",
			headers: {"Content-Type": "application/json"},
			body: JSON.stringify(product)
		})
		setResponse(resp)
	}, [])


	return [response, sendUpdate]
}

export default useUpdate;
