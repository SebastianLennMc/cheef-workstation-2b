# Cookbook Nginx — Proyecto con Chef Workstation

Este proyecto fue realizado con **Chef Workstation en modo local** para automatizar la instalación y configuración del servidor web **Nginx** sobre Ubuntu Server. La receta está diseñada como un *cookbook profesional*, estructurado, replicable y documentado para uso colaborativo y pruebas locales.

---

## Estructura del proyecto

---

## ⚙️ Descripción técnica

En la receta principal `default.rb` se automatizan los siguientes recursos:

| Recurso   | Acción                                                               |
|-----------|----------------------------------------------------------------------|
| `package` | Instala el paquete `nginx`                                           |
| `service` | Habilita e inicia el servicio `nginx`                                |
| `directory` | Crea la ruta `/var/www/misweb/html` si no existe                 |
| `file`    | Genera un archivo `index.html` con contenido personalizado de prueba |

---

## Ejecución del cookbook (modo local)

```bash
sudo chef-client --local-mode cookbooks/Nginx/recipes/default.rb

