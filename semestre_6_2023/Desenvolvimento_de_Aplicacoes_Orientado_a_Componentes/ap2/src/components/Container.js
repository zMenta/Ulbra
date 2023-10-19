import { Children } from "react";
import "../styles/Container.css"

function Container ({ children, wrap = false, column = false, alignStart = false }) {
	const styles = ["Container"];

	if(wrap){
		styles.push("wrap")}

	if(column){
		styles.push("column")}

	if(alignStart){
		styles.push("alignStart")}

	return (
		<div className={styles.join(" ")}>
			{Children.map(children, child => child)}
		</div>
	)
}

export default Container;
