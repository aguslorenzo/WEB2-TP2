REQUERIMIENTOS FUNCIONALES MINIMOS
1. La API debe ser RESTful.
[x]. Debe tener al menos un getAll, sea para parques, provincias o reseñas. OK 1 parques
[x]. Al getAll incorporar una dupla sortby orderby que permita ordenar de manera asc o desc por un campo de la tabla. OK
[x]. Debe tener al menos un getById (parques, provincias o reseñas). OK 1 parques
[x]. Debe tener al menos un agregar o un modificar. OK POST y PUT parques
[x]. La API debe manejar de manera correcta las posibles respuesas HTTP (200, 201, 400, 404, 500).

REQUERIMIENTOS FUNCIONALES OPTATIVOS
[-]. El getAll debe poder paginarse. creo q está listo
[]. El getAll debe poder filtrarse por un valor específico de cualquiera de sus columnas (filterby - reseñas).
[]. Igual al punto 3 pero por cualquier columna.
[]. API auth para agregar o modificar.

REQUERIMIENTOS NO FUNCIONALES OBLIGATORIOS
- Documentar cada api en un READMME.md para su posterior uso por un tercero (una descripción de cada endpoint, como se usan y ejemplos).
