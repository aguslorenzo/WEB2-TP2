
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
| `filterBy`               | string       | No       | Id, name, description, price, id_province_fk. |

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
"Bad request"
```

/api/parks&order=descendente

```
"Bad request"
```

| Método HTTP                    | URL||                                          |
|:-----------------------------|:--------------|:---------|:----------------------------------------------------|
| GET                      | /api/parks/:ID        |

**Ejemplo de response 200 OK**

/api/parks/25

```{
    "id": "25",
    "name": "Parque Nacional Campos del Tuyú",
    "description": "El Parque Nacional se ubica en la costa sur de la Bahía Samborombón y protege uno de los últimos remanentes de pastizales pampeanos, cuya importancia se acrecienta por estar asociado a un estuario natural: en conjunto conforman un humedal de gran valor de conservación. Además, representa uno de los últimos refugios del venado de las pampas.",
    "price": "1300",
    "id_province_fk": "1"
}
```

**Ejemplo de response 400 Bad request**
/api/parks/120

```
"El parque con el id 120 no existe."
```

| Método HTTP                    | URL||                                          |
|:-----------------------------|:--------------|:---------|:----------------------------------------------------|
| DELETE                      | /api/parks/:ID        |

**Ejemplo de response 200 OK**

/api/parks/23
```{
    "id": "23",
    "name": "Parque Nacional Pre-Delta",
    "description": "Tiene un paisaje dominado por islas, arroyos, lagunas y riachos con la influencia del gran río Paraná, cuyas crecidas modelan un paisaje que está en continuo cambio. Además, el Paraná es un corredor de biodiversidad que aporta a la región animales y plantas típicos de la selva misionera y el Chaco.",
    "price": "1600",
    "id_province_fk": "2"
}
```

**Ejemplo de response 400 Bad request**

/api/parks/96

```
"El parque con el id 96 no existe."
```

| Método HTTP                    | URL||                                          |
|:-----------------------------|:--------------|:---------|:----------------------------------------------------|
| POST                      | /api/parks        |

**Ejemplo de response 200 OK**

/api/parks

**Sample body**

```
{
    "name": "Parque Nacional Pre-Delta",
    "description": "Tiene un paisaje dominado por islas, arroyos, lagunas y riachos con la influencia del gran río Paraná, cuyas crecidas modelan un paisaje que está en continuo cambio. Además, el Paraná es un corredor de biodiversidad que aporta a la región animales y plantas típicos de la selva misionera y el Chaco.",
    "price": "1600",
    "id_province_fk": "2"
}
```
**Sample Response**

```
{
    "id": "80",
    "name": "Parque Nacional Pre-Delta",
    "description": "Tiene un paisaje dominado por islas, arroyos, lagunas y riachos con la influencia del gran río Paraná, cuyas crecidas modelan un paisaje que está en continuo cambio. Además, el Paraná es un corredor de biodiversidad que aporta a la región animales y plantas típicos de la selva misionera y el Chaco.",
    "price": "1600",
    "id_province_fk": "2"
}
```

**Ejemplo de response 400 Bad request**

/api/parks

**Sample Body**
```
{
    "name": "Parque Nacional Pre-Delta",
    "description": "Tiene un paisaje dominado por islas, arroyos, lagunas y riachos con la influencia del gran río Paraná, cuyas crecidas modelan un paisaje que está en continuo cambio. Además, el Paraná es un corredor de biodiversidad que aporta a la región animales y plantas típicos de la selva misionera y el Chaco.",
    "id_province_fk": "2"
}
```
**Sample Response**

```
"Debe completar los datos."
```

| Método HTTP                    | URL||                                          |
|:-----------------------------|:--------------|:---------|:----------------------------------------------------|
| PUT                      | /api/parks/:ID        |

**Ejemplo de response 200 OK**

/api/parks/28

**Sample Body**
```
{
    "name": "Parque Nacional Lanín",
    "description": "Además del emblemático e imponente volcán Lanín que con sus 3.776 metros sobre el nivel del mar domina el paisaje, el área protegida incluye unos 24 lagos. Aquí se conserva una importante muestra del Bosque Patagónico y varias especies de plantas exclusivas de la región.",
    "price": "2500",
    "id_province_fk": "12"
}
```
**Sample Response**
```
{
    "id": "28",
    "name": "Parque Nacional Lanín",
    "description": "Además del emblemático e imponente volcán Lanín que con sus 3.776 metros sobre el nivel del mar domina el paisaje, el área protegida incluye unos 24 lagos. Aquí se conserva una importante muestra del Bosque Patagónico y varias especies de plantas exclusivas de la región.",
    "price": "2500",
    "id_province_fk": "12"
}
```

**Ejemplo de response 400 Bad request**

/api/parks/83

**Sample Body**
```
{
"name": "Parque Nacional actualizado",
"description": "El mejor parque para disfrutar de la naturaleza en familia y con amigos.",
"price": "2300",
"id_province_fk": "3"
 }
```

**Sample Response**
```
"El parque con el id 83 no existe."
```