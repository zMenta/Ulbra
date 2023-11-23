import { useState } from 'react';
import { BrowserRouter, Route, Routes } from 'react-router-dom';
import './App.css';
import { ProductContext } from './contexts/ProductContext';
import Home from './pages/Home';
import ProductFocus from './pages/ProductFocus';
import Products from './pages/Products';

function App() {
	const [products, setProducts] = useState()


  return (
	  <ProductContext.Provider value={{products, setProducts}}>
		  <BrowserRouter>
			<Routes>
				<Route path='/' element={<Home/>}/>
				<Route path='home' element={<Home/>}/>
				<Route path='products' element={<Products/>}/>
				<Route path='products/:id' element={<ProductFocus/>}/>
			</Routes>
		  </BrowserRouter>
	  </ProductContext.Provider>
  );
}

export default App;
