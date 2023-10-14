import "../styles/HyperContent.css"

function HyperContent({ title, url, imageUrl , imageSize= 45}) {
	if(!imageUrl){
		return(
			<div className="HyperContent">
				<a href={url} target="_blank" rel="noreferrer">{title}</a>
			</div>
		)
	}

	else{
		return (
			<div className="HyperContent">
				<a href={url} target="_blank" rel="noreferrer">
					<img
						src={imageUrl}
						alt={title}
						width={imageSize}
						height={imageSize}
					/>
				</a>
				<a href={url} target="_blank" rel="noreferrer">{title}</a>
			</div>
			)
	}
}

export default HyperContent;
