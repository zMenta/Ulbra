import './App.css';
import Header from './components/Header';
import CardContainer from './components/CardContainer';
import Footer from './components/Footer';
import Container from './components/Container';
import RegisterPerson from './components/RegisterPerson';

function App() {
  return (
	<>
    <div className="App">
		<Header titleLeft={"Ulbra"} title={"Barbecue"}/>
		<Container>
			<CardContainer/>
			<RegisterPerson/>
		</Container>
		<Footer title={"AP2 - Lucas Vianna Moog Brentano"}/>
    </div>
	</>
  );
}

export default App;
