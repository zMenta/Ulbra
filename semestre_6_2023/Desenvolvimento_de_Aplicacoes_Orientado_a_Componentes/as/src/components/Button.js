function Button({ title, callback}) {
	return(
		<button className="bg-blue-900 rounded-lg hover:bg-blue-700 mt-20 w-20 text-center" onClick={callback} type="button">{title}</button>
	)
}

export default Button;
