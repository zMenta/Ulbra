function Button({ title, callback}) {
	return(
		<button onClick={callback} type="button">{title}</button>
	)
}

export default Button;
