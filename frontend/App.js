import logo from './logo.svg';
import './App.css';
import { Link, Routes, Route, Form } from 'react-router-dom';
import WebsiteHome from './components/WebsiteHome';
import LoginComp from './components/LoginComp';
import RegisterComp from './components/RegisterComp';
import HomeComp from './components/HomeComp';
import { useSelector } from 'react-redux';
import PostReact from './components/PostReact';
import InserDBReact from './components/FetchDBReact';
import FetchDBReact from './components/FetchDBReact';
import React from './components/Containing';
import Containing from './components/Containing';

function App() {
  const mystate = useSelector(state => state.logged)
  return (
    <div>
      <header>
        {/* <div style = {{display: mystate.loggedIN?"none":"block"}}>
          <ul>
            <li>
              <Link to="/login">Login</Link>
            </li>
            <li>
              <Link to="/register">Register</Link>
            </li>
          </ul>
        </div>
        <Routes>
          <Route path="/" element={<WebsiteHome/>}></Route>
          <Route path="/login" element={<LoginComp/>}></Route>
          <Route path="/register" element={<RegisterComp/>}></Route>
          <Route path="/home" element={<HomeComp/>}></Route>
        </Routes> 
        // POST 
        <PostReact />  
        <FetchDBReact/> */}
        <Containing/>
      </header>
    </div>
  );
}

export default App;
