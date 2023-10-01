import Profile from "./Profile.js";

const Gallery = ({ title }) => {
	return (
		<>
			<h1>{title}</h1>
			<Profile name="Maria" profession="Physicist" awards="Nobel Prize" discovered="Stuff" sourceImage="https://i.imgur.com/YfeOqp2.jpeg"/>
			<Profile name="Maria" profession="Physicist" awards="Nobel Prize" discovered="Stuff" sourceImage="https://i.imgur.com/YfeOqp2.jpeg"/>
			<Profile name="Maria" profession="Physicist" awards="Nobel Prize" discovered="Stuff" sourceImage="https://i.imgur.com/szV5sdG.jpeg"/>
		</>
	)
}

export default Gallery;
