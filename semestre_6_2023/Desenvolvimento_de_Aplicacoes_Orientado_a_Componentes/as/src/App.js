import { useState } from 'react';
import { BrowserRouter, Route, Routes } from 'react-router-dom';
import './App.css';
import Home from './pages/Home';
import ProductFocus from './pages/ProductFocus';
import Products from './pages/Products';

function App() {
	const [product, setProduct] = useState()


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
