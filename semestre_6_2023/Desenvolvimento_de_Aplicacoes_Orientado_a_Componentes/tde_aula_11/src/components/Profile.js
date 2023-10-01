import Avatar from "./Avatar.js";

const Profile = ({name, profession, awards, discovered, sourceImage}) => {
	return (
		<div style={{
				border: "1px solid black",
				borderRadius: "8px",
				padding: "4px",
				margin: "10px"
		}}>

		<h2 style={{margin: "8px"}}>{name}</h2>
		<ul>
			<Avatar sourceImage={sourceImage} size={72}/>
			<li><b>Profession:</b> {profession}</li>
			<li><b>Awards:</b> {awards}</li>
			<li><b>Discovered:</b> {discovered}</li>
		

		</ul>
		</div>
	)
}

export default Profile;
