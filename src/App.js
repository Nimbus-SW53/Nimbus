import React, { useState } from "react";
import Header from "./header/Header";
import Proveedor from "./components/Proveedor";
import Card from "./components/Card";
import Footer from "./footer/Footer";
import Testimonio from "./components/Testimonio";
import Producto from "./components/Producto";
import Filtro from "./components/Filtro"; // Importa el componente Filtro
import "./App.css";

function App() {
  const [productos, setProductos] = useState([
    {
      nombre: "Producto 1",
      imagen: "/images/ProductoNube.jpg",
      descripcion: "Este es el primer producto para comparar.",
      calificacion: 4.5,
      precio: 199.99,
    },
    {
      nombre: "Producto 2",
      imagen: "/images/ProductoBasedeDatos.jpg",
      descripcion: "Este es el segundo producto para comparar.",
      calificacion: 3.8,
      precio: 149.99,
    },
  ]);

  const [filtro, setFiltro] = useState("calificacion");

  // Función para cambiar el filtro
  const handleFiltroChange = (nuevoFiltro) => {
    setFiltro(nuevoFiltro);
  };

  // Función para resaltar el mejor producto según el filtro
  const resaltarMejorProducto = () => {
    if (filtro === "calificacion") {
      const mejorCalificacion = Math.max(
        ...productos.map((producto) => producto.calificacion)
      );
      setProductos((prevProductos) =>
        prevProductos.map((producto) => ({
          ...producto,
          esMejor: producto.calificacion === mejorCalificacion,
        }))
      );
    } else if (filtro === "precio") {
      const menorPrecio = Math.min(
        ...productos.map((producto) => producto.precio)
      );
      setProductos((prevProductos) =>
        prevProductos.map((producto) => ({
          ...producto,
          esMejor: producto.precio === menorPrecio,
        }))
      );
    }
  };

  return (
    <div className="App">
      <Header />
      <Card />
      <Proveedor />
      <Testimonio
        nombre="Carlos Bernal"
        imagenPerfil="/images/Usuario.jpg"
        comentario="No creía encontrar el software que buscaba tan rápido. Estoy muy contento."
        calificacion={5}
      />
      <Testimonio
        nombre="Miriam Mendoza"
        imagenPerfil="/images/Usuario.jpg"
        comentario="Me han estado llegando muchas peticiones últimamente, y ahora puedo vivir de esto. La plataforma es muy buena y ayuda e incentiva la sana competencia."
        calificacion={4}
      />
      <Testimonio
        nombre="Anyelo Vázquez"
        imagenPerfil="/images/Usuario.jpg"
        comentario="¡Increíble! No puedo creer lo fácil que es comparar los precios. Esta función hace que los proveedores ofrezcan un mejor servicio."
        calificacion={5}
      />

      {/* Componente Filtro */}
      <Filtro
        onFiltroChange={handleFiltroChange}
        onResaltarMejorProducto={resaltarMejorProducto}
      />

      {/* Contenedor de productos */}
      <div className="productos-container">
        {productos.map((producto, index) => (
          <Producto
            key={index}
            imagen={producto.imagen}
            descripcion={producto.descripcion}
            calificacion={producto.calificacion}
            precio={producto.precio}
            esMejor={producto.esMejor}
            filtro={filtro}
          />
        ))}
      </div>

      <Footer />
    </div>
  );
}

export default App;
