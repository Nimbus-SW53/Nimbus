import React, { useState } from "react";
import "./Filtro.css";

function Filtro({ onFiltroChange, onResaltarMejorProducto }) {
  const [filtro, setFiltro] = useState("calificacion");

  const handleFiltroChange = (event) => {
    setFiltro(event.target.value);
    onFiltroChange(event.target.value); // Llamar a la función para cambiar el filtro
  };

  const handleResaltarClick = () => {
    onResaltarMejorProducto(filtro); // Pasar el filtro seleccionado para resaltar
  };

  return (
    <div className="filtro">
      <select value={filtro} onChange={handleFiltroChange}>
        <option value="calificacion">Calificación</option>
        <option value="precio">Precio</option>
      </select>
      <button onClick={handleResaltarClick}>Resaltar</button>
    </div>
  );
}

export default Filtro;
