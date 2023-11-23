import { useCallback, useState } from "react";

function useFetch(url){
	const [data, setData] = useState()

	const request = useCallback(async () => {
		const response = await fetch(url)
		const dataJson = await response.json()

		setData(dataJson)
	}, [])

	return [data, request]
}

export default useFetch;

