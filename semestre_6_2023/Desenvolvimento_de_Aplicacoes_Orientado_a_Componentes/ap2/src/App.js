import './App.css';
import Footer from './components/Footer';
import Header from './components/Header';
import PersonCard from './components/PersonCard';

function App() {
  return (
	<>
    <div className="App">
		<Header titleLeft={"Ulbra"} title={"Barbecue"}/>
		<div>
			<PersonCard
				name={"Name"}
				telephone={52348523}
				isInvitee={true}
				isPaid={false}
			/>
		</div>
		<div>
			<PersonCard
				name={"Name"}
				telephone={52348523}
				isInvitee={false}
				isPaid={false}
			/>
		</div>
		<div>
			<PersonCard
				name={"Name"}
				telephone={52348523}
				isInvitee={false}
				isPaid={true}
			/>
		</div>
		<div>
			<PersonCard
				name={"Name"}
				telephone={52348523}
				isInvitee={true}
				isPaid={true}
			/>
		</div>
		<Footer title={"AP2 - Lucas Vianna Moog Brentano"}/>
    </div>
	</>
  );
}

export default App;
