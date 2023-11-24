function Button({ title, callback}) {
	return(
		<button className="Button" onClick={callback} type="button">{title}</button>
	)
}

export default Button;
