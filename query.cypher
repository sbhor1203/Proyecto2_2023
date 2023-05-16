/// querys for the creation of the nodes, relations and all the things we are going to use

CREATE (u:User { name: "@andres" }), ({ name: "@luisa" }), ({ name: "@daniel" }) // primer ingreso de usuarios pruebas
CREATE (u:User { name: "@andrea" }), ({ name: "@adriana" }), ( { name: "@juan" }),({ name: "@Jorge" }),({ name: "@sofia" }) // other users

/////////////////////////////////

MATCH (t:Type)
WHERE t.name = 'Restaurante Italiano'
CREATE (u:User { name: '@Isabella'})-[a:LIKES]->(t)
return t

MATCH (t:Type)
WHERE t.name = 'Restaurante Japonés'
CREATE (u:User { name: '@Emanuel'})-[a:LIKES]->(t)
return t

MATCH (t:Type)
WHERE t.name = 'Restaurante Italiano'
CREATE (u:User { name: '@Martina'})-[a:LIKES]->(t)
return t

MATCH (t:Type)
WHERE t.name = 'Restaurante Indú'
CREATE (u:User { name: '@Andrés'})-[a:LIKES]->(t)
return t

MATCH (t:Type)
WHERE t.name = 'Restaurante Mexicano'
CREATE (u:User { name: '@Andrés'})-[a:LIKES]->(t)
return t



/////////////////////////////

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

/////////////////ITALIANO///////////////////
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

////////////////JAPONÉS/////////////////



MATCH (t:Type)
WHERE t.name ="Restaurante Japonés"
CREATE (t)-[v:Variedad]->(r2:Nombre { name: "Nikkei" })
return t

MATCH (t:Type)
WHERE t.name ="Restaurante Japonés"
CREATE (t)-[v:Variedad]->(r2:Nombre { name: "Nokiate" })
return t

MATCH (t:Type)
WHERE t.name ="Restaurante Japonés"
CREATE (t)-[v:Variedad]->(r2:Nombre { name: "Mr. Sushi" })
return t

MATCH (t:Type)
WHERE t.name ="Restaurante Japonés"
CREATE (t)-[v:Variedad]->(r2:Nombre { name: "Teppanyaki" })
return t

//////////////INDÚ///////////////////


MATCH (t:Type)
WHERE t.name ="Restaurante Indú"
CREATE (t)-[v:Variedad]->(r1:Nombre { name: "Tikka Masala" })
return t

MATCH (t:Type)
WHERE t.name ="Restaurante Indú"
CREATE (t)-[v:Variedad]->(r1:Nombre { name: "Little India" })
return t

MATCH (t:Type)
WHERE t.name ="Restaurante Indú"
CREATE (t)-[v:Variedad]->(r1:Nombre { name: " Everest Restaurant & Bar" })
return t

MATCH (t:Type)
WHERE t.name ="Restaurante Indú"
CREATE (t)-[v:Variedad]->(r1:Nombre { name: "Balam Ganesh" })
return t

//////////////MEXICANO///////////////////

MATCH (t:Type)
WHERE t.name ="Restaurante Mexicano"
CREATE (t)-[v:Variedad]->(r1:Nombre { name: " Los Cebollines" })
return t

MATCH (t:Type)
WHERE t.name ="Restaurante Mexicano"
CREATE (t)-[v:Variedad]->(r1:Nombre { name: "Cielito Lindo" })
return t

MATCH (t:Type)
WHERE t.name ="Restaurante Mexicano"
CREATE (t)-[v:Variedad]->(r1:Nombre { name: "Tacontento" })
return t

MATCH (t:Type)
WHERE t.name ="Restaurante Mexicano"
CREATE (t)-[v:Variedad]->(r1:Nombre { name: "Tacos El Camioncito" })
return t


//////////////CHINO///////////////////

MATCH (t:Type)
WHERE t.name ="Restaurante Chino"
CREATE (t)-[v:Variedad]->(r1:Nombre { name: "Celeste Imperio" })
return t

MATCH (t:Type)
WHERE t.name ="Restaurante Chino"
CREATE (t)-[v:Variedad]->(r1:Nombre { name: " Panda Express" })
return t

MATCH (t:Type)
WHERE t.name ="Restaurante Chino"
CREATE (t)-[v:Variedad]->(r1:Nombre { name: "Tao Yuen" })
return t

MATCH (t:Type)
WHERE t.name ="Restaurante Chino"
CREATE (t)-[v:Variedad]->(r1:Nombre { name: "Lai Lai" })
return t