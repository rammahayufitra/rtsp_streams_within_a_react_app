import React from 'react';
import ReactPlayer from 'react-player';

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <ReactPlayer url='http://0.0.0.0:8000/playlist.m3u8' playing controls />
        <ReactPlayer url='http://0.0.0.0:8000/playlist.m3u8' playing controls />
      </header>
    </div>
  );
}

export default App;
