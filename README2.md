
| Método HTTP                    | URL||                                          |
|:-----------------------------|:--------------|:---------|:----------------------------------------------------|
| GET                      | /api/parks        |

**Query params**

| Params                    | Tipo          | Requerido | Descripción                                         |
|:-----------------------------|:--------------|:---------|:----------------------------------------------------|
| `order`                      | string        | No      | ASC (default) o DESC.                                 |
| `page` | integer | No       | Número de página.            |
| `limit`               | integer       | No       | Cantidad de X por página. |
| `sortBy`               | string       | No       | Id, name (default), description, price, id_province_fk. |

**Ejemplos de response 200 OK**

/api/parks?sortBy=name&limit=2

```[
    {
        "id": "7",
        "name": "Parque Nacional Aconquija",
        "description": "El Parque Nacional protege muestras de dos ecorregiones: el relicto de Yungas más austral de nuestro país y, en sus partes más altas, los Altos Andes. Su verde despampanante sorprende durante gran parte del recorrido, en un área que cobija más de 900 especies de fauna y flora nativa.",
        "price": "1200",
        "id_province_fk": "3"
    },
    {
        "id": "18",
        "name": "Parque Nacional Ansenuza",
        "description": "Conocida como Mar de Ansenuza por ser parte de un humedal de alrededor de un millón de hectáreas de extensión, que lo convierte en el quinto lago de agua salada más grande del planeta, reúne nada menos que el 66% de todas las especies de aves migratorias y playeras registradas en la Argentina.",
        "price": "1100",
        "id_province_fk": "4"
    }
]
```

/api/parks?sortBy=name&limit=2&page=2

```[
    {
        "id": "46",
        "name": "Parque Nacional Baritú",
        "description": "Es uno de los Parques Nacionales de Argentina con mayor biodiversidad. Conserva una interesantísima muestra de las selvas de montaña que se desarrollan a alturas entre los 1.800 y los 2.000 metros.",
        "price": "1200",
        "id_province_fk": "24"
    },
    {
        "id": "39",
        "name": "Parque Nacional Bosques Petrificados de Jaramillo",
        "description": "El paisaje del área protegida está dominado por la presencia del cerro Madre e Hija, que formó parte de un antiguo cono volcánico. Además de un sector de estepa, conserva una de las concentraciones más importantes de flora fósil de la Argentina continental americana.",
        "price": "1600",
        "id_province_fk": "15"
    }
]
```

**Ejemplos de response 400 Bad request**

/api/parks?sortBy=rating&limit=2&page=1

```

```



| Método HTTP                    | URL||                                          |
|:-----------------------------|:--------------|:---------|:----------------------------------------------------|
| GET                      | /api/parks/:ID        |

/api/parks/120

```
"El parque con el id 120 no existe."
```