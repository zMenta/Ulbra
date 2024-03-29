import "../styles/PersonCard.css"

const defaultImage = "https://as2.ftcdn.net/v2/jpg/02/15/84/43/1000_F_215844325_ttX9YiIIyeaR7Ne6EaLLjMAmy4GvPC69.jpg"

function PersonCard({
	name, 
	telephone, 
	isInvitee, 
	isPaid, 
	imageUrl = ""}){
	return (
		<div className="PersonCard">
			<img
				src={imageUrl === "" ? defaultImage : imageUrl}
				alt="Profile"
			/>
			<p>
				{name} <br/><br/>
				{telephone} <br/><br/>
				{isInvitee ? "Invitee": "Student"} <br/><br/>
				{isPaid ? "Confirmed": "Not Confirmed"} <br/><br/>
			</p>
		</div>
	)
}

export default PersonCard;
