import './App.css';
import Footer from './components/Footer';
import Header from './components/Header';

function App() {
  return (
	<>
    <div className="App">
		<Header titleLeft={"Ulbra"} title={"Entrevero"}></Header>
		<Footer></Footer>
    </div>
	</>
  );
}

export default App;
