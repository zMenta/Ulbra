import { useEffect, useState } from "react";

const useFetch = (url) => {
	const [data, setData] = useState({});

	async function getData() {
		const response = await fetch(url);
		const dataJson = await response.json();

		setData(() => dataJson);
	}

	useEffect(() => {
		getData();
	}, [url]);

	return [data];
};

export default useFetch;
