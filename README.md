REQUERIMIENTOS FUNCIONALES MINIMOS
1. La API debe ser RESTful #filmina que es restfull segun la catedra.
2. Debe tener al menos un getAll, sea para parques, provincias o reseñas. OK 1 parques
3. Al getAll incorporar una dupla sortby orderby que permita ordenar de manera asc o desc por un campo de la tabla. kinda
4. Debe tener al menos un getById (parques, provincias o reseñas). OK 1 parques
5. Debe tener al menos un agregar o un modificar. OK POST y PUT parques
6. La API debe manejar de manera correcta las posibles respuesas HTTP (200, 201, 400, 404, 500).

REQUERIMIENTOS FUNCIONALES OPTATIVOS
7. El getAll debe poder paginarse.
8. El getAll debe poder filtrarse por un valor específico de cualquiera de sus columnas (filterby - reseñas).
9. Igual al punto 3 pero por cualquier columna.
10. API auth para agregar o modificar.

REQUERIMIENTOS NO FUNCIONALES OBLIGATORIOS
- Documentar cada api en un READMME.md para su posterior uso por un tercero (una descripción de cada endpoint, como se usan y ejemplos).
