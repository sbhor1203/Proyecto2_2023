/// querys for the creation of the nodes, relations and all the things we are going to use

CREATE (:User { name: "@andres" }), (:User { name: "@luisa" }), (:User { name: "@daniel" }) // primer ingreso de usuarios pruebas
CREATE (:User { name: "@andrea" }), (:User { name: "@adriana" }), (:User { name: "@juan" }),(:User { name: "@Jorge" }),(:User { name: "@sofia" }) // other users



CREATE (r:Restaurants { name: "Restaurantes" }) // query para poder almacenar restaurantes

MATCH (r:Restaurants)
WHERE r.name = 'Restaurantes'
CREATE (r)-[x:HAS]->(t:Type { name: "Restaurante Italiano" })
return r


MATCH (r:Restaurants)
WHERE r.name = 'Restaurantes'
CREATE (r)-[x:HAS]->(t:Type { name: "Restaurante Japonés" })
return r


MATCH (r:Restaurants)
WHERE r.name = 'Restaurantes'
CREATE (r)-[x:HAS]->(t:Type { name: "Restaurante Indú" })
return r

MATCH (r:Restaurants)
WHERE r.name = 'Restaurantes'
CREATE (r)-[x:HAS]->(t:Type { name: "Restaurante Mexicano" })
return r

MATCH (r:Restaurants)
WHERE r.name = 'Restaurantes'
CREATE (r)-[x:HAS]->(t:Type { name: "Restaurante Chino" })
return r


"""MATCH (r:Restaurants)
WHERE r.name = 'Restaurantes'
CREATE (r)-[x:HAS]->(t:Type { name: Restaurante Indú }),({ name: Restaurante Chino}),({ name: Restaurante Méxicano})
return r"""


MATCH (t:Type)
WHERE t.name ="Restaurante Italiano"
CREATE (t)-[v:Variedad]->(r1:Nombre { name: "Tre Fratelli" })
return t

MATCH (t:Type)
WHERE t.name ="Restaurante Italiano"
CREATE (t)-[v:Variedad]->(r1:Nombre { name: "L'Aperó" })
return t

MATCH (t:Type)
WHERE t.name ="Restaurante Italiano"
CREATE (t)-[v:Variedad]->(r1:Nombre { name: " Pizzeria Vesuvio" })
return t

MATCH (t:Type)
WHERE t.name ="Restaurante Italiano"
CREATE (t)-[v:Variedad]->(r1:Nombre { name: " Gianni's" })
return t