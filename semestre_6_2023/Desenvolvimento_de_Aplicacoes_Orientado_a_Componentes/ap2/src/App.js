import './App.css';
import Header from './components/Header';
import Footer from './components/Footer';
import Body from './components/Body';

function App() {
  return (
	<>
    <div className="App">
		<Header titleLeft={"Ulbra"} title={"Barbecue"}/>
		<Body/>
		<Footer title={"AP2 - Lucas Vianna Moog Brentano"}/>
    </div>
	</>
  );
}

export default App;
