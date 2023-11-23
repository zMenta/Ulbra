import { BrowserRouter, Route, Routes } from 'react-router-dom';
import './App.css';
import Home from './Pages/Home';
import ProductFocus from './Pages/ProductFocus';
import Products from './Pages/Products';

function App() {
  return (
	  <BrowserRouter>
		<Routes>
			<Route path='/' element={<Home/>}/>
			<Route path='home' element={<Home/>}/>
			<Route path='products' element={<Products/>}/>
			<Route path='products/:id' element={<ProductFocus/>}/>
		</Routes>
	  </BrowserRouter>
  );
}

export default App;
