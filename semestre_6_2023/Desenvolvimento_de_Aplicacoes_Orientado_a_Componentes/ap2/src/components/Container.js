import { Children } from "react";
import "../styles/Container.css"

function Container ({ children, wrap = false }) {
	if (wrap) {
		return (
			<div className="ContainerWrap">
				{Children.map(children, child => child)}
			</div>
		)
	}

	else {
		return (
			<div className="Container">
				{Children.map(children, child => child)}
			</div>
		)
	}
}
export default Container;
