function Button({ title, callback}) {
	return(
		<button class="Button" onClick={callback} type="button">{title}</button>
	)
}

export default Button;
