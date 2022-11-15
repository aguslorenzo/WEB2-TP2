-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-10-2022 a las 03:39:06
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `turismoarg`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parks`
--

CREATE TABLE `parks` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` int(11) NOT NULL,
  `id_province_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `parks`
--

INSERT INTO `parks` (`id`, `name`, `description`, `price`, `id_province_fk`) VALUES
(7, 'Parque Nacional Aconquija', 'El Parque Nacional protege muestras de dos ecorregiones: el relicto de Yungas más austral de nuestro país y, en sus partes más altas, los Altos Andes. Su verde despampanante sorprende durante gran parte del recorrido, en un área que cobija más de 900 especies de fauna y flora nativa.', 1200, 3),
(8, 'Parque Nacional Calilegua', 'Debe su nombre a las sierras de Calilegua, en donde está asentado. Es la mayor área de conservación de la ecorregión de las Yungas. Incluye sectores con bosques chaqueños, a 200 ms.n.m., y distintos ambientes selváticos y boscosos hasta alcanzar los pastizales de altura de los cerros.', 1300, 5),
(9, 'Parque Nacional Copo', 'Es uno de los últimos reductos del quebrachal que sobrevivió a la explotación sufrida en la región gracias a que es de difícil acceso y está alejado del ferrocarril. Además del quebracho colorado santiagueño, crecen allí el quebracho blanco, el itín, el guayacán, el mistol y el yuchán, entre muchos otros. Por su parte, en antiguos cauces de ríos se desarrollan pastizales.', 1000, 20),
(10, 'Parque Nacional Chaco', 'Montes, sabanas, esteros y lagunas sujetas a épocas de lluvia y sequía conforman los variados paisajes del primer parque chaqueño, que cobija más de 300 especies de aves y resguarda el quebracho colorado que fuera explotado indiscriminadamente para diferentes usos desde fines del siglo XIX.', 1200, 7),
(11, 'Parque Nacional El Impenetrable', 'En el Gran Chaco, los ríos Bermejo y Bermejito albergan al Parque protector de 128 mil hectáreas del legendario Impenetrable chaqueño. Su nombre guarda la clave de la diversidad de flora tupida y lo agreste de su extensión.', 1100, 7),
(12, 'Parque Nacional Iguazú', 'Al norte de la provincia de Misiones, en el límite con Brasil, se encuentran las majestuosas cataratas del Iguazú: una de las Siete Maravillas Naturales del Mundo y, sin dudas, uno de los lugares más espectaculares de Latinoamérica.', 1500, 6),
(13, 'Parque Nacional Mburucuyá', 'Esta área protegida tiene una alta biodiversidad ya que cuenta con especies del Espinal, el Chaco Húmedo y la Selva Paranense. Se ubica dentro de la gran depresión del Iberá, alimentada principalmente por las lluvias.', 1300, 22),
(14, 'Parque Nacional Iberá', 'El Parque se compone de cuatro portales con ingresos independientes y está inmerso dentro de la Reserva Natural del Iberá de la provincia de Corrientes, que fue creada en 1983 y abarca 1.300.000 hectáreas. El Portal Cambyretá se ubica en el margen norte de la reserva, mientras que el Portal San Nicolás y el Portal Carambola se encuentran en el margen oeste y el Portal Laguna Iberá en el sureste.', 1600, 22),
(15, 'Parque Nacional Río Pilcomayo', 'Este Parque Nacional resguarda una gran diversidad de ambientes acuáticos, terrestres e inundables que van desde lagunas y esteros, pastizales con palmeras, islas de bosques y selvas en galería que acompañan las márgenes de ríos.', 1200, 21),
(16, 'Parque Nacional Quebrada del Condorito', 'Sus quebradas, serranías y pampas exhiben una fascinante gama de especies de fauna y flora exclusivas (endemismos) que son resultado de su relativo aislamiento, aun cuando reciben influencia de las ecorregiones vecinas.', 1200, 4),
(17, 'Parque Nacional Traslasierra', 'El Parque está emplazado en la antigua Estancia Pinas, un predio rural al noroeste de la provincia de Córdoba que presenta vestigios de la cultura comechingón y una capilla del siglo XIX.  Dentro de la muestra representativa que conserva del Chaco Seco, una de las ecorregiones más amenazadas a nivel mundial, incluye en su superficie una porción de un ambiente poco representado en el sistema de áreas protegidas: el bosque chaqueño serrano, que puede observarse en los faldeos occidentales de las Sierras de Pocho.', 1300, 4),
(18, 'Parque Nacional Ansenuza', 'Conocida como Mar de Ansenuza por ser parte de un humedal de alrededor de un millón de hectáreas de extensión, que lo convierte en el quinto lago de agua salada más grande del planeta, reúne nada menos que el 66% de todas las especies de aves migratorias y playeras registradas en la Argentina.', 1100, 4),
(19, 'Parque Nacional San Guillermo', 'Aunque por su difícil acceso se ganó la fama de lugar aislado, solitario y extremo, posee una singular belleza producto de sus abruptas quebradas y los vastos llanos de altura, que se extienden entre la Cordillera de los Andes y los cordones precordilleranos. Aquí se conservan los sectores más australes de la Puna.', 1200, 9),
(20, 'Parque Nacional El Leoncito', 'Su riqueza natural desmiente lo que parece ser a primera vista un desierto. En el área se entremezclan paisajes de llanos entre sierras, planicies puneñas, filos montañosos y pequeños oasis en altura.  Las condiciones prístinas, que incluyen más de 300 noches despejadas por año, son ideales para la observación de los cielos.', 1100, 9),
(21, 'Parque Nacional Talampaya', 'Ubicado en la provincia de La Rioja, este Parque alberga una amplia gama de antepasados de mamíferos, así como vestigios de dinosaurios y plantas, que ilustran la evolución de los vertebrados y las características de los paleoambientes del período Triásico.', 1500, 10),
(22, 'Parque Nacional El Palmar', 'Localizado en la confluencia de las regiones naturales Pampeana y del Espinal, y recostado sobre el Río Uruguay, en él se encuentra una de las muestras más importantes de los palmares de yatay; especie muy escasa fuera de los límites del Parque por el avance de las actividades agropecuarias.', 1300, 2),
(23, 'Parque Nacional Pre-Delta', 'Tiene un paisaje dominado por islas, arroyos, lagunas y riachos con la influencia del gran río Paraná, cuyas crecidas modelan un paisaje que está en continuo cambio. Además, el Paraná es un corredor de biodiversidad que aporta a la región animales y plantas típicos de la selva misionera y el Chaco.', 1600, 2),
(24, 'Parque Nacional Islas de Santa Fe', 'La dinámica del Río Paraná dio origen a las islas que hoy conforman el área protegida. Arroyos, lagunas y el río serpentean entre ellas formando parte del paisaje. El interior inundable de las islas está dominado por pajonales de paja de techar, canutillos, juncales y camalotales, en tanto que los albardones más elevados son ocupados por especies leñosas como alisos de río, curupíes y ceibos.', 1200, 8),
(25, 'Parque Nacional Campos del Tuyú', 'El Parque Nacional se ubica en la costa sur de la Bahía Samborombón y protege uno de los últimos remanentes de pastizales pampeanos, cuya importancia se acrecienta por estar asociado a un estuario natural: en conjunto conforman un humedal de gran valor de conservación. Además, representa uno de los últimos refugios del venado de las pampas.', 1300, 1),
(26, 'Parque Nacional Ciervo de los Pantanos', 'Este Parque se originó sobre la base de la Reserva Natural Otamendi, creada en 1990 como Reserva Natural. Cuenta con el reconocimiento como Sitio Ramsar y AICA (Área Importante para la Conservación de las Aves).  Las enormes cortaderas, las flechillas y otros pastos dominan el paisaje. Allí, aves semilleras encuentran un sitio clave donde vivir. Los cuises y el hurón común se mueven en sus redes de túneles entre los pastos. Entre las plantas se destacan las serruchetas, los espartillos, totoras y pajas bravas.', 1000, 1),
(27, 'Parque Nacional Sierra de las Quijadas', 'Magnífico y árido paisaje de serranías erosionadas por el agua y el viento que generan laberintos, farallones, barrancos y graderías de un color rojizo intenso, que se evidencia en todo su esplendor en el Potrero de la Aguada, gran anfiteatro natural en el corazón de la sierra.', 1200, 11),
(28, 'Parque Nacional Lanín', 'Además del emblemático e imponente volcán Lanín que con sus 3.776 metros sobre el nivel del mar domina el paisaje, el área protegida incluye unos 24 lagos. Aquí se conserva una importante muestra del Bosque Patagónico y varias especies de plantas exclusivas de la región.', 1100, 12),
(29, 'Parque Nacional Laguna Blanca', 'La Laguna Blanca, de 1.700 hectáreas y unos 10 metros de profundidad, es uno de los cuerpos de agua dulce más importantes de la región, por lo que muchas plantas y animales encuentran allí un ambiente único. Ha sido además un lugar significativo para las comunidades originarias y también para los pobladores criollos, durante su paso a los sitios de pastoreos de veranada.', 1500, 12),
(30, 'Parque Nacional Los Arrayanes', 'El Parque Nacional Los Arrayanes fue creado en 1971 como área protegida separada del Parque Nacional Nahuel Huapi. Conserva ejemplares de arrayanes con más de 650 años de edad y una altura superior a los 15 metros.', 1300, 12),
(31, 'Parque Nacional Nahuel Huapí', 'Estas tierras se convertirían en 1922 en el Parque Nacional del Sud, primer parque nacional de Latinoamérica y base para la posterior creación del Parque Nacional Nahuel Huapi en 1934. El área protegida supo albergar además al primer vivero forestal de la Argentina, hoy consolidado como un jardín botánico distinguido internacionalmente.', 1600, 13),
(32, 'Parque Nacional Islote Lobos', 'A la notable biodiversidad de este parque rionegrino se suman una imponente belleza escénica y un valioso registro arqueológico, dando lugar a la conservación de un área con enorme potencial científico, turístico y económico.', 1200, 13),
(33, 'Parque Nacional Lihué Calel', 'Las serranías de Lihué Calel -o \"sierras de la vida\", según su traducción- emergen desde la estepa en la zona centro-sur de la provincia de La Pampa, regalando una atractiva topografía que rompe con el llano circundante.', 1300, 14),
(34, 'Parque Nacional Los Alerces', 'Lindero al país vecino de Chile, protege bosques de lahuán o alerce. Entre prístinas cascadas y lagos verde esmeralda, rodeado de ejemplares más jóvenes que conforman un alerzal milenario, surge el imponente “Abuelo”: con unos 2.620 años y 60 metros de altura, guarda un sabio consejo en cada anillo de su tronco.  El Parque Nacional Los Alerces fue creado en 1937 y declarado Sitio de Patrimonio Mundial Natural por la Unesco en 2017.', 1000, 17),
(35, 'Parque Nacional Lago Puelo', 'De inviernos blancos que cubren los cerros, un lago color turquesa y variopintos verdes por ser una zona de transición entre el bosque andino patagónico y la selva valdiviana, esta joya de la Patagonia invita a agudizar los sentidos. El Parque Nacional Lago Puelo fue creado en 1971 como área protegida independiente, ya que antes era un anexo del Parque Nacional Los Alerces.', 1200, 17),
(36, 'Parque Nacional Los Glaciares', 'Los glaciares protegidos en este Parque, generados hace siglos y aún milenios, son testimonio de enormes masas de hielo que dominaron parte del planeta durante los últimos dos millones de años y presenciaron el nacimiento de la humanidad.  Preservar y disfrutar de este sitio hace referencia no sólo a la biodiversidad, sino que abre una puerta a imaginar lo que fue la era del hielo en el tercer campo de hielo continental actual más grande del planeta. El Parque Nacional Los Glaciares fue creado en 1937 y declarado Sitio de Patrimonio Mundial por la UNESCO en 1981.', 1800, 15),
(37, 'Parque Nacional Perito Moreno', 'Signada por el aislamiento -a 220 kilómetros de la localidad más cercana (Gob. Gregores)- se extiende esta área protegida donde las estepas se salpican de lagunas, bosques patagónicos trepan las laderas cordilleranas hasta dar lugar a roquedales y cumbres nevadas, mientras que lagos de origen glaciario pintan tonos turquesas y esmeralda de fantasía.', 1700, 15),
(38, 'Parque Nacional Patagonia', 'Se trata de la primera área protegida nacional en proteger las mesetas de altura santacruceñas, un paisaje con numerosos conos volcánicos, cañadones, llanuras con pastizales. Conserva un importante reservorio hídrico, del cual descienden ríos, arroyos y manantiales que aseguran la provisión de agua para las localidades cercanas.', 1300, 15),
(39, 'Parque Nacional Bosques Petrificados de Jaramillo', 'El paisaje del área protegida está dominado por la presencia del cerro Madre e Hija, que formó parte de un antiguo cono volcánico. Además de un sector de estepa, conserva una de las concentraciones más importantes de flora fósil de la Argentina continental americana.', 1600, 15),
(40, 'Parque Nacional Monte León', 'Monte León deslumbra a los visitantes con la inmensidad de la Patagonia Austral, en su carácter más inhóspito y salvaje, con un paisaje único entre las áreas protegidas nacionales: aquí el Mar Argentino y la estepa se funden en un abrazo que cobija una gran biodiversidad junto a la geoforma que rememora a un león echado y da nombre a este Parque.', 1200, 15),
(41, 'Parque Nacional Tierra del Fuego', 'El área protegida más austral de Argentina resguarda bosques andino-patagónicos testigos del encuentro del tramo final de la Cordillera de los Andes con el mar en el Canal de Beagle, que conecta los océanos Atlántico y Pacífico Sur.  La tierra de los fuegos, cuyo nombre fue dado por los exploradores al ver las fogatas encendidas por los habitantes originarios de la isla, los yaganes, es más que su excepcional belleza: es puerta de entrada para las excursiones a la Antártida y una aventura en sí misma que no deja a nadie indiferente.', 1300, 16),
(46, 'Parque Nacional Baritú', 'Es uno de los Parques Nacionales de Argentina con mayor biodiversidad. Conserva una interesantísima muestra de las selvas de montaña que se desarrollan a alturas entre los 1.800 y los 2.000 metros.', 1200, 24),
(48, 'Parque Nacional El Rey', 'Paisajísticamente dominado por las serranías de la Cresta de Gallo, que lo envuelven dándole una vista de anfiteatro enorme, este Parque tiene sectores que corresponden a los ambientes chaqueños y de las Yungas. La vegetación se distribuye en distintos pisos o estratos a medida que aumenta la altura.', 1300, 24);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provinces`
--

CREATE TABLE `provinces` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `capital` varchar(100) DEFAULT NULL,
  `weather` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `provinces`
--

INSERT INTO `provinces` (`id`, `name`, `capital`, `weather`) VALUES
(1, 'Buenos Aires', 'La Plata', 'En cuanto al clima, es templado pampeano. Presenta veranos calurosos e inviernos frescos, precipitaciones suficientes y vientos predominantes del Este'),
(2, 'Entre Rios', 'Paraná', 'Presenta dos variedades climáticas: subtropical sin estación seca al Norte (con inviernos suaves y veranos con temperaturas promedio superiores a los '),
(3, 'Tucumán', 'San Miguel de Tucumán', 'En cuanto al clima, en la zona de las sierras predomina el tipo subtropical serrano con veranos cálidos e inviernos templados. En la zona de llanura e'),
(4, 'Córdoba', 'Córdoba', 'En cuanto al clima, el SO presenta características del templado pampeano y hacia el N, subtropical con estación seca. En el O predomina el subtropical'),
(5, 'Jujuy', 'San Salvador de Jujuy', 'En cuanto al clima, presenta una variedad de subtropical con estación seca, con un promedio anual de 18º C. de temperatura, con máximas de 32º C. en v'),
(6, 'Misiones', 'Posadas', 'Respecto del clima, es subtropical sin estación seca, lo que convierte a nuestro territorio en uno de los más húmedos del país.'),
(7, 'Chaco', 'Resistencia', 'Respecto del clima, es semitropical semiestépico en el Este y semitropical continental en el Oeste. Los veranos son muy calurosos y los inviernos, tem'),
(8, 'Santa Fe', 'Santa Fe de la Vera Cruz', 'En cuanto al clima, el Sur del territorio presenta un régimen térmico y precipitaciones propios de la llanura pampeana. El Norte, en cambio, posee tem'),
(9, 'San Juan', 'Ciudad de San Juan', 'En lo que se refiere al clima, en el Oeste predomina el árido de alta montaña, con temperatura media anual inferior a 12°C y en el Este, el árido de s'),
(10, 'La Rioja', 'Ciudad de La Rioja', 'El clima que predomina es el semiárido y con escasa humedad. En las zonas bajas, los veranos son muy calurosos y los inviernos cortos y con bajas temp'),
(11, 'San Luis', 'San Luis', 'En la zona serrana el clima es árido, aunque en las laderas orientales presenta variante de templado serrano, más húmedo que el anterior.'),
(12, 'Neuquén', 'Neuquén', 'La variedad de climas concede a Neuquén una riqueza paisajística asombrosa, cambiante de un sector a otro y siempre colorida. Presenta cuatro tipos: h'),
(13, 'Rio Negro', 'Viedma', 'En cuanto al clima, en el Este y Norte nos ofrece variedad de templado árido, con veranos breves e inviernos intensos. En la zona cordillerana, es frí'),
(14, 'La Pampa', 'Santa Rosa', 'La provincia integra el dominio de los climas templados y semiáridos. En el sector NE se registran los mejores niveles de precipitación y temperaturas'),
(15, 'Santa Cruz', 'Río Gallegos', 'El clima predominante es semidesierto patagónico, frío, seco, con vientos constantes procedentes del Pacífico. La temperatura anual promedio es de 13°'),
(16, 'Tierra del Fuego', 'Ushuaia', 'En cuanto al clima, es frío con grandes variaciones determinadas por la altitud, el grado de penetración en el continente y la latitud. Hacia el Sur l'),
(17, 'Chubut', 'Rawson', 'En cuanto al clima, en la sucesión de mesetas escalonadas es seco y frío. En la región cordillerana, frío y húmedo. Vientos fuertes de los cuadrantes '),
(18, 'Mendoza', 'Mendoza', 'Presenta una variedad continental semiárida, con veranos muy secos e inviernos más húmedos. En las montañas y el piedemonte se producen abundantes nev'),
(19, 'Catamarca', 'San Fernando del Valle de Catamarca', 'Presenta dos tipos de clima: cálido (con las variantes tropical serrano y andino puneño) y árido (en sierras y bolsones). Las precipitaciones medias a'),
(20, 'Santiago del Estero', 'Ciudad de Santiago del Estero', 'En cuanto al clima, predomina el semitropical continental con estación seca, de temperaturas extremas y precipitaciones abundantes en verano, aunque f'),
(21, 'Formosa', 'Formosa', 'Respecto del clima, es cálido y la temperatura media oscila en los 22° C., aunque en verano puede llegar hasta los 45° C. Según la época, se debate en'),
(22, 'Corrientes', 'Corrientes', 'El clima predominante es subtropical sin estación seca, con precipitaciones abundantes y temperaturas elevadas de escasas variaciones diarias y estaci'),
(24, 'Salta', 'Salta', 'A pesar de situarse en una zona tropical, su clima es cálido aunque con variaciones bastante marcadas, en función de la multiplicidad de su relieve. E');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `email`, `password`) VALUES
(1, 'parkadmin222@admin.com', '$2a$12$usVgDSBhF8A7DZlwcSgB1.XaEMVYsERec4kcPF/MIi/OVPoLrD6ae');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `parks`
--
ALTER TABLE `parks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_parks_provinces` (`id_province_fk`);

--
-- Indices de la tabla `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `parks`
--
ALTER TABLE `parks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT de la tabla `provinces`
--
ALTER TABLE `provinces`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `parks`
--
ALTER TABLE `parks`
  ADD CONSTRAINT `fk_parks_provinces` FOREIGN KEY (`id_province_fk`) REFERENCES `provinces` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
