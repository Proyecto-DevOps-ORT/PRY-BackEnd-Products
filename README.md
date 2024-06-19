# Payments Service Example

Este proyecto es un ejemplo de un servicio de productos utilizando java y Docker.

## Construir imagen
```
docker build -t products-service-example:1 .
```
## Crear contenedor
```
docker run --name products-service-example-container -d  -p 8082:8080 products-service-example:1
```
## Obtener Ip del contenedor
```
docker inspect products-service-example-container
```
=> IPAddress": "172.17.0.3"

=> http://localhost:8082/products

### Verificacion de app en POSTMAN

- Request tipe: GET
- URL: http://localhost:8082/products

    Resultado:
    ```
    [
        {
            "id": "111",
            "name": "Producto 111",
            "stock": 10,
            "description": "Este es un producto"
        },
        {
            "id": "123",
            "name": "Producto 123",
            "stock": 10,
            "description": "Este es un producto"
        },
        {
            "id": "321",
            "name": "Producto 321",
            "stock": 10,
            "description": "Este es un producto"
        }
    ]
    ```