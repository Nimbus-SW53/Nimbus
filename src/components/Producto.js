import React from "react";
import PropTypes from "prop-types";
import { FaStar } from "react-icons/fa";
import "./Producto.css";

function Producto({ imagen, descripcion, calificacion, precio, esMejor, filtro }) {
  const productoClase = esMejor && filtro === "calificacion" ? "resaltado" : "";

  return (
    <div className={`producto ${productoClase}`}>
      <img src={imagen} alt={descripcion} />
      <p className="descripcion">{descripcion}</p>
      <div>
        {Array.from({ length: calificacion }).map((_, index) => (
          <span key={index} className="estrella">
            <FaStar />
          </span>
        ))}
      </div>
      <p className="precio">Precio: {precio}</p>
    </div>
  );
}

Producto.propTypes = {
  imagen: PropTypes.string.isRequired,
  descripcion: PropTypes.string.isRequired,
  calificacion: PropTypes.number.isRequired,
  precio: PropTypes.number.isRequired,
  esMejor: PropTypes.bool.isRequired,
  filtro: PropTypes.string.isRequired,
};

export default Producto;
