import { useCallback, useState } from "react";

function useDelete(){
	const [response, setResponse] = useState({})

	const sendDelete = useCallback(async (id) => {
		const resp = await fetch(`http://localhost:3001/products/${id}`, {
			method: "DELETE",
			headers: {"Content-Type": "application/json"},
		})
		setResponse(resp)
	}, [])


	return [response, sendDelete]
}

export default useDelete;
