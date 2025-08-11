# Entrega_Santiago_Eduardo_Sanchez_Marsili
Trabajo de entrega Coderhouse

Introduccion:

Bienvenidos al proyecto.
En el contexto actual, donde la eficiencia operativa y el control preciso de inventario son claves para la competitividad, contar con una infraestructura tecnológica sólida se vuelve esencial.
En esta presentación, exploraremos cómo nuestro sistema de gestión permite optimizar los procesos de stock, compras y ventas, mejorar la trazabilidad de los productos y ofrecer una base escalable para futuras integraciones, como el soporte técnico especializado. Este proyecto está orientado a brindar soluciones concretas para usuarios finales y pequeñas empresas, con foco en la eficiencia, la personalización y el crecimiento sostenido


Objetivo del trabajo: 

"Estamos desarrollando una base de datos integral y escalable para una distribuidora de hardware, orientada a optimizar la gestión de stock, compras y ventas. Esta infraestructura tecnológica permite centralizar procesos clave, mejorar la trazabilidad y reducir costos operativos, generando métricas confiables para decisiones estratégicas. Nuestro mercado objetivo son usuarios finales y pequeñas empresas que buscan soluciones accesibles, eficientes y personalizadas en tecnología. Como parte de nuestra estrategia de crecimiento, proyectamos incorporar servicios de soporte técnico especializado, ampliando nuestra propuesta de valor y fortaleciendo la fidelización de clientes. Este proyecto representa una oportunidad de inversión en un modelo ágil, con potencial de expansión sostenida y diferenciación competitiva en un segmento dinámico y en evolución."

Problema a resolver:

"Al ingresar recientemente al mercado de distribución de hardware, hemos realizado una apuesta comercial significativa al adquirir un stock amplio y variado de productos. Sin embargo, la falta de un sistema de gestión estructurado dificulta el control eficiente de ese inventario, exponiéndonos a riesgos como pérdidas por errores de registro, demoras en la reposición, y falta de visibilidad sobre el rendimiento comercial de cada ítem. Esta situación compromete la toma de decisiones estratégicas y limita nuestra capacidad de respuesta frente a clientes y proveedores. La implementación de una base de datos funcional y escalable se presenta como una solución clave para ordenar, automatizar y potenciar la operación desde sus cimientos."

Descripción del modelo de negocio:

"El modelo de negocio se basa en la comercialización de productos de hardware con un enfoque centrado en la atención personalizada y especializada. Cada cliente, ya sea usuario final o pequeña empresa, recibe asesoramiento directo por parte de profesionales con conocimiento técnico, capaces de recomendar soluciones adaptadas a sus necesidades específicas. Esta orientación permite no solo garantizar la calidad del producto ofrecido, sino también construir relaciones de confianza sostenidas en el tiempo.

La operación se apoya en una gestión eficiente del stock, con procesos optimizados para asegurar tiempos de entrega ágiles y trazables. La combinación entre excelencia técnica, cercanía en el trato y eficiencia logística constituye el núcleo diferenciador del negocio, permitiendo posicionarse en un segmento que valora tanto el producto como la experiencia de compra. Este modelo está diseñado para escalar de forma ordenada, manteniendo la calidad en cada etapa del crecimiento."

Conclusión de esta primera entrega:

"Este proyecto representa el primer paso en la construcción de una infraestructura tecnológica sólida para una distribuidora de hardware con visión estratégica. Si bien la base de datos se encuentra en una etapa inicial de desarrollo, ya se delinean los pilares fundamentales del modelo de negocio: atención personalizada, excelencia en producto y eficiencia operativa. La propuesta busca sentar las bases para un crecimiento ordenado, escalable y diferenciado, con capacidad de adaptación a las necesidades del mercado. Esta entrega inicial refleja el compromiso con una evolución constante, donde cada componente técnico responde a una lógica comercial clara y a una experiencia de usuario cuidada desde el origen."


Descripciond e la base de datos

La base de datso "cuchuflito_sa" es un esquea que almacena datos de una firma dedicada a la venta de hardware informatico.
Ahora procederemos a describiar las tablas.


Tabla Clientes

Clave primaria: ID_Cliente (identificador unico de los clientes)
No posee clave forranea.
La clave primaria "ID_Cliente" se seleccionó como identificador único para cada cliente, sea este eventual o habitual, garantizando la unicidad de cada registro.

Tabla Proveedores

Clave primaria: ID_Medio (identificador unico de los proveedores)
No posee clave forranea.
La clave primaria "ID_Medio" se seleccionó como identificador único para cada vbenta de productos, sea este eventual o habitual, garantizando la unicidad de cada registro. 

Tabla Medios de Pagos

Clave primaria: ID_Provedor (identificador unico de los proveedores)
No posee clave forranea.
La clave primaria "ID_Proveedor" se seleccionó como identificador único para cada venta, sea este eventual o habitual, garantizando la unicidad de cada registro. 

Tabla Productos

Clave primaria: ID_Producto (identificador unico de los clientes)
No posee clave forranea.
La clave primaria "ID_Producto" se seleccionó como identificador único para cada producto que comercializamos, sea este eventual o habitual, garantizando la unicidad de cada registro.


Tabla Compras

Clave primaria: ID_Compras (identificador unico de los clientes)
Se definio como clave forranea: ID_Proveedor.
La clave primaria "ID_Compras" se seleccionó como identificador único para cada compras, garantizando la unicidad de cada registro.
La clave forranea "ID_Proveedor" se selecciona como identificador para relacionarse con la tabla Proveedores, para que amabas tablas puedan interractuar.

Tabla Ventas

Clave primaria: ID_Ventas (identificador unico de los clientes)
Se definio como clave forranea: ID_Cliente y Medio_de_Pago
La clave primaria "ID_Ventas" se seleccionó como identificador único para cada venta, garantizando la unicidad de cada registro.
La clave forranea "ID_Cliente" se selecciona como identificador para relacionarse con la tabla Cliente, para que amabas tablas puedan interractuar.
La clave forranea "Medio_de_Pago" se selecciona como identificador para relacionarse con la de medios de pago, para que amabas tablas puedan interractuar.

Tabla compras_productos

Clave primaria: No se asigna.
Se definen como claves forraneas "ID_Compras" y "ID_Productos"
La clave forranea "ID_Compras" se selecciona como identificador para relacionarse con la tabla compras, para que mabas tablas puedan interractuar.
La clave forranea "ID_Productos" se selecciona como identificador para relacionarse con la tabla productos, para que amabas tablas puedan interractuar.

Tabla ventas_productos

Clave primaria: No se asigna.
Se definen como claves forraneas "ID_Ventas" y "ID_Productos"
La clave forranea "ID_Ventas" se selecciona como identificador para relacionarse con la tabla ventas, para que mabas tablas puedan interractuar.
La clave forranea "ID_Productos" se selecciona como identificador para relacionarse con la tabla productos, para que amabas tablas puedan interractuar.


Las tablas se relacionan mediante el uso de claves primarias y claves foráneas. Por ejemplo:

La tabla "compras_productos" tiene claves foráneas "ID_Compras" y "ID_Productos" que se relacionan con las tablas "Compras" y "Productos" respectivamente, para indicar el producto y la operacion de compras registrada.

La tabla "ventas_productos" tiene claves foráneas "ID_Ventas" y "ID_Productos" que se relacionan con las tablas "Ventas" y "Productos" respectivamente, para indicar el producto y la operacion de venta registrada.

La tabla "Ventas" tiene una clave foránea "ID_Cliente" que se relaciona con la tabla "Clientes" para indicarnos el cliente que esta comprandonos

Listado de Vistas: (inicial)

Vista vista_ventas_detalladas

Descripción:
Esta vista consolida de manera estructurada y precisa cada venta registrada en nuestra base de datos. Presenta información esencial como la fecha de la operación, los productos adquiridos, los datos del cliente y el medio de pago utilizado. Su construcción refleja buenas prácticas en el modelado relacional, facilitando tanto el análisis comercial como la enseñanza de conceptos clave en gestión de datos y trazabilidad de transacciones.
Objetivo:Permitir una identificación rápida y precisa de los elementos clave de cada operación de venta: quién fue el cliente, qué productos adquirió, cuántas unidades compró, en qué fecha se realizó la transacción, a qué precio se vendieron los productos y cuál fue el medio de pago utilizado. Esta vista no solo optimiza el análisis comercial, sino que también ejemplifica cómo estructurar consultas orientadas a la trazabilidad, la toma de decisiones y la enseñanza de modelos de gestión relacional.
Tablas que componen la vista:
- ventas: permite identificar la operación realizada.
- ventas_producto: detalla los productos vendidos en cada operación.
- producto: permite extraer el nombre del producto.
- clientes: contiene los datos del cliente, como nombre, apellido o si se trata de un cliente eventual.
- medio_de_pago: muestra cómo se efectuó el pago.

Vista vista_compras_detalladas

Descripción:
Esta vista permite visualizar de manera estructurada y exhaustiva cada compra registrada en nuestra base de datos. Presenta información clave como la fecha de la operación, los productos adquiridos, los datos del proveedor, la forma de contacto y otros detalles relevantes. Su diseño busca no solo facilitar el análisis técnico, sino también ofrecer una herramienta didáctica que ejemplifica cómo integrar múltiples fuentes de información en un modelo relacional coherente y funcional.

Objetivo:
Brindar una visualización clara y eficiente de cada operación de compra, permitiendo identificar con rapidez qué productos se adquirieron, en qué fecha, en qué cantidad, a qué precio y a qué proveedor fueron comprados. Esta vista facilita el seguimiento de decisiones comerciales y ejemplifica cómo estructurar consultas orientadas al análisis estratégico dentro de un entorno relacional.

Tablas que componen la vista:
- compras: identificamos la operación.
- compra_producto: identifocamos que es lo que compramos, que cantidad y que precio tenia por unidad.
- proveedores: identificamos a quien le compramos y un dato de contacto.

Vista vista_productos_agrupado

Descripción:
Esta vista permite visualizar los productos disponibles en nuestro sistema, incluyendo su descripción, costo y nivel de existencia actual. La información se presenta de forma independiente del proveedor, ya que un mismo producto puede estar asociado a múltiples proveedores. Este diseño facilita el análisis de stock y costos desde una perspectiva centralizada, ejemplificando cómo abstraer entidades clave en un modelo relacional sin perder flexibilidad operativa

Objetivo:
Centralizar la información de productos disponibles, permitiendo conocer su descripción, existencia y costo, independientemente del proveedor asociado.

Tabla que la compone:
- producto: de esta tabla extraemos el producto, agrupándolo independientemente del proveedor. También obtenemos su descripción, el stock disponible y su precio.

- 
