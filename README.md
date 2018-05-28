# Guia Examen Fronted Almundo

El exámen está compuesto por dos aplicaciones, un backend escrito en NodeJS el cual expondráuna API REST para la interacción con la aplicación frontend

### Ejemplos de peticiones.

```http
GET https://angular-hotel-api.herokuapp.com
```
|Request| Parameter | Type | Description |
| ---- | --------- | ---- | ----------- |
| `GET` | `:table` | `string` |retorna todos los campos de una tabla |
| `POST` | [example](cuerpo-del-body-peticion-POST) | `object` |retorna todos los campos de una tabla |
| `PUT` | [example](cuerpo-del-body-peticion-PUT) | `object` |retorna respuesta del servidor |
| `DELETE` | [example](cuerpo-del-body-peticion-DELETE) | `object` |retorna respuesta del servidor |

#### GET MUESTRA TODA LA TABLA
```http
GET https://angular-hotel-api.herokuapp.com/admin/getAll/hoteles
```
#### GET MUESTRA CONSULTA

```http
GET https://angular-hotel-api.herokuapp.com/query/hoteles?name=Ho
```

#### cuerpo del body peticion POST

```http
{
	"table": "hoteles",
	"fields": {  
			"id": 99991,
            "name": "Hotel 99999 ",
            "stars": 3,
            "price": "99418.00",
            "image": "4900059_30_b.jpg",
            "amenities": [
                "safety-box",
                "nightclub",
                "deep-soaking-bathtub",
                "beach",
                "business-center" ]
	}
}
```

#### cuerpo del body peticion PUT
``` http
{
	"table": "hoteles",
	"fields": {  
            "name": "Hotel 999995",
            "stars": 3,
            "price": "99418.00",
            "image": "4900059_30_b.jpg"
	},
	"where": { "id" : 99991 },
	"returnValue": "*"
}
```

#### cuerpo del body peticion DELETE

``` http
{
	"table": "hoteles",
	"where": { "id" : 99991 },
	"returnValue": "*"
}
```

## Responses
Muchos puntos finales API devuelven la representación JSON de los recursos creados o editados. Sin embargo, si se envía una solicitud no válida o se produce algún otro error, devuelve una respuesta JSON en el siguiente formato:

```
{
  "message" : string,
  "success" : bool,
  "data"    : string
}
```

El atributo `mensaje` contiene un mensaje comúnmente utilizado para indicar errores o, en el caso de eliminar un recurso, el éxito de que el recurso se eliminó correctamente.

El atributo `status` describe si la transacción fue exitosa o no.

El atributo `data` contiene cualquier otro metadato asociado con la respuesta. Esta será una cadena escapada que contiene datos JSON.

## Status Codes
devuelve los siguientes códigos de estado en su API:

| Status Code | Description |
|-------------| ----------- |
| 200 | `OK` |
| 201 | `CREATED` |
| 400 | `BAD REQUEST` |
| 404 | `NOT FOUND` |
| 500 | `INTERNAL SERVER ERROR`|

## Despliegue entorno production heroku

el aplicativo se testeo con heroku subiendo el proyecto con un deploy en heroku manejando estandares de calidad en el desarrollo.

URL FRONTEND
[https://angular-hotel.herokuapp.com/](https://angular-hotel.herokuapp.com/)
URL BACKEND
[https://angular-hotel-api.herokuapp.com/admin/getAll/hoteles](https://angular-hotel-api.herokuapp.com/admin/getAll/hoteles)
