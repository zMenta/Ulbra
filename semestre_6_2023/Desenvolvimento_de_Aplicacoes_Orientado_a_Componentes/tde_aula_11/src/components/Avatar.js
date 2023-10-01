const Avatar = ({sourceImage, size}) => {
	return <img 
		src={sourceImage}
		style={{ borderRadius: "28px"}}
		witdh={size}
		height={size}
		alt={"Avatar"}
		/>
}

export default Avatar;
