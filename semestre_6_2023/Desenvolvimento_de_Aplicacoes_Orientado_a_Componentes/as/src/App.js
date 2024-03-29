import { useState } from 'react';
import { BrowserRouter, Route, Routes } from 'react-router-dom';
import './App.css';
import { ProductContext } from './contexts/ProductContext';
import Home from './pages/Home';
import ProductDelete from './pages/ProductDelete';
import ProductFocus from './pages/ProductFocus';
import ProductNotFound from './pages/ProductNotFound';
import ProductRegister from './pages/ProductRegister';
import Products from './pages/Products';
import ProductUpdate from './pages/ProductUpdate';

function App() {
	const [products, setProducts] = useState()

  return (
	  <div className='text-gray-50'>
	  <ProductContext.Provider value={{products, setProducts}}>
		  <BrowserRouter>
			<Routes>
				<Route path='/' element={<Home/>}/>
				<Route path='home' element={<Home/>}/>
				<Route path='products' element={<Products/>}/>
				<Route path='products/:id' element={<ProductFocus/>}/>
				<Route path='products/notFound' element={<ProductNotFound/>}/>
				<Route path='products/register' element={<ProductRegister/>}/>
				<Route path='products/update' element={<ProductUpdate/>}/>
				<Route path='products/delete' element={<ProductDelete/>}/>
			</Routes>
		  </BrowserRouter>
	  </ProductContext.Provider>
	  </div>
  );
}

export default App;
