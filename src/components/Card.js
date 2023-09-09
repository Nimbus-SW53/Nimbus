// components/Card.js

import React, { useState } from 'react';
import './Card.css';

const Card = () => {
  const [isDropdownOpen, setIsDropdownOpen] = useState(false);
  const [selectedDistrito, setSelectedDistrito] = useState(null);
  const distritos = ['Miraflores', 'San Isidro', 'San Borja', 'Surco'];

  const toggleDropdown = () => {
    setIsDropdownOpen(!isDropdownOpen);
  };

  const handleDistritoSelect = (distrito) => {
    setSelectedDistrito(distrito);
    setIsDropdownOpen(false);
  };

  return (
    <div className="card-container">
      <div className="card-content">
        <div className="card-text">
          <h2 className="card-title">El mejor software al mejor precio</h2>
          <p>Selecciona el distrito en el que vives</p>
          <div className={`dropdown-container ${isDropdownOpen ? 'open' : ''}`}>
            <button className="dropdown-button" onClick={toggleDropdown}>
              {selectedDistrito ? selectedDistrito : 'Selecciona un Distrito'}
            </button>
            <div className="dropdown-menu">
              {distritos.map((distrito) => (
                <div
                  key={distrito}
                  className={`dropdown-item ${
                    selectedDistrito === distrito ? 'selected' : ''
                  }`}
                  onClick={() => handleDistritoSelect(distrito)}
                >
                  {distrito}
                </div>
              ))}
            </div>
          </div>
        </div>
      </div>
      <div className="card-image-container">
        <img
          src="/images/Imagen_Principal.jpg"
          alt="Imagen Principal"
          className="card-image"
        />
      </div>
    </div>
  );
};

export default Card;
