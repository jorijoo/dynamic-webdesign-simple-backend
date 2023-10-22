//  JSON AND MYSQL BACKEND
//  OAMK assignment
//
//  Copyright Jori Hiltunen 2023

import './App.css';
import axios from 'axios';
import { useState } from 'react';
import { useEffect } from 'react';

const URL = 'http://localhost:3001'

function App() {
    const [databaseItems, setDatabaseItems] = useState('Fetching data from database, please wait...')

    useEffect(() => {
        axios.get(URL)
        .then(res => {
            setDatabaseItems(JSON.stringify(res.data))
        })
        .catch(err => {
            setDatabaseItems(JSON.stringify(err))
        })
    })
  return (
    <div className="App">
        {databaseItems}
    </div>
  );
}

export default App;
