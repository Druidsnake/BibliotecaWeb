-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 15-02-2017 a las 03:50:43
-- Versión del servidor: 5.7.15-log
-- Versión de PHP: 5.6.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `biblio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `isbn` int(20) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `autor` varchar(50) NOT NULL,
  `genero` varchar(50) NOT NULL,
  `editorial` varchar(50) NOT NULL,
  `sinopsis` varchar(3000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`isbn`, `titulo`, `autor`, `genero`, `editorial`, `sinopsis`) VALUES
(18151521, 'Warcraft Cronicas', 'Blizzard', 'Generox', 'Panini', 'World of Warcraft configura un universo que ha crecido a lo largo de los últimos veinte años. Lo que empezó como un juego relativamente sencillo se ha convertido en un mundo vibrante y perdurable de pleno derecho. Un mundo que recibe las visitas diarias de millones de jugadores del mundo entero.'),
(978607113, 'Canción de Hielo y Fuego - Tormenta de Espadas', 'MARTIN, GEORGE R.R.', 'Novela, Fantasía heróica', 'DeBolsillo', 'Los Siete Reinos están inmersos en la llamada Guerra de los Cinco Reyes, con Robb Stark, Daenerys Targaryen, Joffrey Baratheon, y Stannis Baratheon luchando por afianzar sus coronas. El intento de Stannis Baratheon de tomar la ciudad de Desembarco del Rey fracasa debido a la nueva alianza entre la casa Lannister, la casa Tyrell y la casa Martell, aunque los ejércitos de esta última no toman partido en la lucha. Mientras, en el Muro, un gran ejército de salvajes liderados por Mance Rayder avanza hacia el sur, con las reducidas fuerzas de la Guardia de la Noche como única resistencia. En el lejano este, Daenerys Targaryen va a la Bahía de los Esclavos con la esperanza de encontrar y movilizar fuerzas suficientes para retomar el Trono de Hierro.'),
(978607312, 'Canción de Hielo y Fuego - Choque de Reyes', 'MARTIN, GEORGE R.R.', 'Novela, Fantasí Heróica', 'DeBolsillo', ' La guerra civil se ha extendido por Poniente y pasará a conocerse como la Guerra de los Cinco Reyes. Mientras, la Guardia de la Noche envía un grupo de reconocimiento al norte en la Gran Exploración de Mormont, más allá del muro. A su vez, en el lejano este, Daenerys Targaryen dirige a su khalasar para volver a los Siete reinos para conquistarlos, pero en el camino se encuentra con tres personajes misteriosos.'),
(978607313, 'Canción de Hielo y Fuego - Danza de Dragones', 'MARTIN, GEORGE R.R.', 'Novela, Fantasía heróica', 'DeBolsillo', 'La Guerra de los Cinco Reyes parece que decae. En el Norte, el Rey Stannis Baratheon se ha instalado en el Muro y ha jurado ganarse la lealtad de los norteños para continuar su lucha para reclamar el Trono de Hierro, aunque esto se complica porque la mayoría de la costa oeste está ocupada por los Hijos del Hierro. En el propio Muro Jon Nieve ha sido elegido 998 Lord Comandante de la Guardia de la Noche, pero tiene enemigos tanto en la Guardia como más allá del Muro. Tyrion Lannister ha sido llevado en barco al otro lado del Mar Angosto a la Ciudad Libre de Pentos, pero su destino final es desconocido incluso para él. En el lejano este, Daenerys Targaryen ha conquistado la ciudad de Meereen, pero ha decidido quedarse y gobernarla, perfeccionando sus habilidades como dirigente que serán necesarias cuando viaje a Poniente. Pero la existencia de Daenerys ya es conocida por muchos en Poniente y desde las islas del Hierro y Dorne, desde Antigua y las Ciudades Libres se mandan emisarios para encontrarla y usar su causa para sus propios beneficios.'),
(978673128, 'Canción de Hielo y Fuego - Juego de Tronos', 'MARTIN, GEORGE R.R.', 'Novela, Fantasí Heróica', 'DeBolsillo', 'Tras el largo verano, el invierno se acerca a los Siete Reinos. Lord Eddard Stark, señor de Invernalia, deja sus dominios para unirse a la corte de su amigo el rey Robert Baratheon, llamado el Usurpador, hombre díscolo y otrora guerrero audaz cuyas mayores aficiones son comer, beber y engendrar bastardos. Eddard Stark ocupará el cargo de Mano del Rey e intentará desentrañar una maraña de intrigas que pondrá en peligro su vida y la de todos los suyos. En un mundo cuyas estaciones pueden durar decenios y en el que retazos de una magia inmemorial y olvidada surgen en los rincones más sombríos y maravillosos, la traición y la lealtad, la compasión y la sed de venganza, el amor y el poder hacen del juego de tronos una poderosa trampa que atrapará en sus fauces a los personajes... y al lector.'),
(978840133, 'La Cúpula', 'KING, STEPHEN', 'Novela negra, intriga, terror', 'Plaza & Janes', 'Un tranquilo día de otoño la ciudad de Chester’s Mill queda inexplicable y repentinamente aislada del resto del mundo por un campo de fuerza invisible. Los aviones se estrellan y caen del cielo consumiéndose entre llamas, la gente corre sin rumbo por el pueblo vecino al verse separada de sus familias y los coches estallan al impactar contra el muro invisible. Nadie consigue comprender cuál es la naturaleza de la barrera, ni su procedencia, ni cómo ha llegado hasta allí, ni si algún día desaparecerá. Dale Barbara, un desilusionado veterano de la guerra del Golfo reconvertido en un mediocre cocinero; Julia Shumway, la directora del periódico local; y un grupo de skateboarders adolescentes lucharán para descubrir el misterio de la cúpula. Sin embargo, en el otro bando se encuentran el gran Jim Rennie, alcalde de Chester’s Mill, un hombre corrupto y sin escrúpulos dispuesto a todo para tomar las riendas del poder, y su hijo, que oculta un terrible secreto en una oscura despensa. Pero su adversario principal es la propia cúpula. Porque el tiempo no es infinito. El tiempo corre e irremediablemente se acaba...'),
(978840135, 'Doctor Sueño', 'KING, STEPHEN', 'Novela negra, intriga, terror', 'DeBolsillo', 'Danny Torrance, aquel niño que recorría en triciclo las siniestras habitaciones del Hotel Overlook, es ahora un adulto con muchos problemas. Ha aprendido a controlar en parte sus visiones y trabaja en un asilo de ancianos donde los ayuda a morir en paz cuando llega el momento. Por eso le llaman Doctor Sueño. \r\nPero su don le pone en contacto con otros que comparten «el resplandor» y para salvar a una niña, tendrá que luchar contra los seres malignos más repugnantes.\r\nLa esperada continuación de El Resplandor la película clásica de terror que dirigió Stanley Kubrick y protagonizó Jack Nicholson.'),
(978842040, 'Las Mil Noches y Una Noche', 'VARGAS LLOSA, MARIO', 'Ensayo', 'Alfaguara', 'Premio Nobel de Literatura 2010. La figura del contador de historias, el teatro y la lectura se funden en esta versión del gran clásico de la literatura, que fue representada en Madrid, Sevilla y Tenerife. En Las mil noches y una noche Mario Vargas Llosa nos acerca a uno de los personajes literarios más seductores y perennes en todas las lenguas y culturas.'),
(978842041, 'La Ciudad y los Perros', 'VARGAS LLOSA, MARIO', 'Novela Narrativa', 'Alfaguara', 'La primera novela del Premio Nobel de Literatura 2010 en su edición definitiva. En 1962, La ciudad y los perros recibía el Premio Biblioteca Breve y unos meses más tarde era publicada tras sortear la censura franquista. Así comenzaba la andadura literaria de esta obra considerada una de las mejores novelas en español del siglo XX. Cincuenta años más tarde, la Real Academia Española y la Asociación de Academias de la Lengua Española rinden homenaje al académico y Premio Nobel Mario Vargas Llosa con una nueva edición del libro que marcó el inicio de su trayectoria literaria. La ciudad y los perros, traducida a más de treinta lenguas, está ambientada en el Colegio Militar Leoncio Prado. Los protagonistas de la novela, un grupo de jóvenes que se «educan» en una disciplina militar implacable y violenta, aprenden a sobrevivir en un ambiente en el que están muy arraigados los prejuicios raciales y las diferencias entre clases sociales y económicas; donde todos se muestran como no son en realidad y la transgresión de las normas establecidas parece ser la única salida. La coordinación de la presente edición ha sido encomendada a la Academia Peruana de la Lengua y a su presidente, Marco Martos, cuyo texto inicial rastrea las fuentes literarias de Vargas Llosa. Acompañan a este volumen, cuidadosamente revisado por su autor, los estudios de José Miguel Oviedo (Perú), Víctor García de la Concha (RAE), Darío Villanueva (RAE), Javier Cercas, Carlos Garayar (Perú), John King (EE UU) y Efraín Kristal (Perú). Completan el libro una bibliografía, un glosario y un índice onomástico.'),
(978846631, 'La fiesta del Chivo', 'VARGAS LLOSA, MARIO', 'Histórica y Aventura', 'Punto de Lectura', 'En La Fiesta del Chivo asistimos a un doble retorno. Mientras Urania Cabral visita a su padre en Santo Domingo, volvemos a 1961, cuando la capital dominicana aún se llamaba Ciudad Trujillo. Allí un hombre que no suda tiraniza a tres millones de personas sin saber que se gesta una maquiavélica transición a la democracia. Vargas Llosa (Premio Nobel de Literatura 2010), un clásico contemporáneo, relata el fin de una era dando voz, entre otros personajes históricos, al impecable e implacable general Trujillo, apodado el Chivo, y al sosegado y hábil doctor Balaguer (sempiterno presidente de la República Dominicana). Con una precisión difícilmente superables, este peruano universal muestra que política puede consistir en abrirse camino entre cadáveres, y que un ser inocente puede convertirse en un regalo truculento.'),
(978846632, 'Conversación en la Catedral', 'VARGAS LLOSA, MARIO', 'Novela', 'Punto de Lectura', 'Premio Nobel de Literatura 2010. Zavalita y el zambo Ambrosio conversan en La Catedral. Se encuentran en Perú, durante el "ochenio" dictatorial del general Manuel A. Odría. Unas cuantas cervezas y un río de palabras en libertad para responder a la palabra amordazada por la dictadura'),
(978846679, 'La guerra del fin del mundo', 'VARGAS LLOSA, MARIO', 'Narrativa', 'Punto de Lectura', 'Premio Nobel de Literatura 2010. A finales del siglo XIX, en las tierras paupérrimas del noreste de Brasil, el chispazo de las arengas del Consejero, personaje mesiánico y enigmático, prenderá la insurrección de los desheredados. En circunstancias extremas como aquéllas, la consecución de la dignidad vital sólo podrá venir de la exaltación religiosa y del quebranto radical de las reglas que rigen el mundo de los poderosos. Así, grupos de miserables acudirán a la llamada de la revolución de Canudos, la ciudad donde se asentará una comunidad de personajes que difícilmente desaparecerán de la imaginación del lector. Frente a todos ellos, una trama político-militar se articula para detener con toda su fuerza el movimiento que amenaza con expandirse.'),
(978846756, 'Travesuras de la Niña Mala', 'VARGAS LLOSA, MARIO', 'Novela Narrativa', 'Punto de Lectura', 'Premio Nobel de Literatura 2010. ¿Cuál es el verdadero rostro del amor? Ricardo ve cumplido, a una edad muy temprana, el sueño que en su Lima natal alimentó desde que tenía uso de razón: vivir en París. Pero el reencuentro con un amor de adolescencia lo cambiará todo. La joven, inconformista, aventurera, pragmática e inquieta, lo arrastrará fuera del pequeño mundo de sus ambiciones. Testigos de épocas convulsas y florecientes en ciudades como Londres, París, Tokio o Madrid, ambos personajes verán sus vidas entrelazarse sin llegar a coincidir del todo. Entre lo cómico y lo trágico, la realidad y la ficción, Travesuras de la niña mala logra retratar al amor indefinible, dueño de mil caras, como la niña mala. Pasión y distancia, azar y destino, dolor y disfrute... "La novela más divertida, apasionada y conmovedora de todas las que ha escrito." Babelia.'),
(978848310, 'Kafka en la orilla', 'MURAKAMI, HARUKI', 'Novela, Ficción', 'TUSQUETS', 'Kafka Tamura se va de casa el día en que cumple quince años. La razón, si es que la hay, son las malas relaciones con su padre, un escultor famoso convencido de que su hijo habrá de repetir el aciago sino del Edipo de la tragedia clásica, y la sensación de vacío producida por la ausencia de su madre y su hermana, a quienes apenas recuerda porque también se marcharon de casa cuando era muy pequeño. El azar, o el destino, le llevarán al sur del país, a Takamatsu, donde encontrará refugio en una peculiar biblioteca y conocerá a una misteriosa mujer mayor, tan mayor que podría ser su madre, llamada Saeki. Si sobre la vida de Kafka se cierne la tragedia -en el sentido clásico-, sobre la de Satoru Nakata ya se ha abatido -en el sentido real-: de niño, durante la segunda guerra mundial, sufrió un extraño accidente que lo marcaría de por vida.Como en el mejor Murakami, pasado y presente, sueño y vigilia, se funden y solapan creando una atmósfera en la que resulta difícil discernir deseo y pesadilla.'),
(978849032, 'El Resplandor', 'KING, STEPHEN', 'Novela negra, intriga, terror', 'DeBolsillo', '¿Qué ha sido de Danny Torrance? Descúbrelo al final de este volumen, que incluye el inicio de Doctor Sueño, la continuación de El resplandor. REDRUM. Esa es la palabra que Danny había visto en el espejo. Y, aunque no sabía leer, entendió que era un mensaje de horror. Tenía cinco años, y a esa edad pocos niños son conscientes de que los espejos invierten las imágenes, y menos aún diferencian entre realidad y fantasía. Pero Danny tenía pruebas de que sus fantasías relacionadas con el resplandor del espejo acabarían cumpliéndose: REDRUM... MURDER, asesinato. Su madre estaba pensando en el divorcio, y su padre, obsesionado con algo muy malo, tan malo como la muerte y el suicidio, necesitaba aceptar la propuesta de cuidar de aquel hotel de lujo, de más de cien habitaciones aislado por la nieve, durante seis meses. Hasta el deshielo iban a estar solos. ¿Solos?...'),
(978849534, 'La Niebla', 'KING, STEPHEN', 'Novela negra, intriga, terror', 'DeBolsillo', 'El maestro se supera a sí mismo... en aterrar. He aquí una serie de historias -unas, horripilantes en su extravagancia; otras, tan terroríficas que disparan el corazón- que son el producto más acabado de una de las más poderosas imaginaciones de nuestro tiempo. En La niebla, historia inicial del libro, extensa como una novela, un supermercado se convierte en último bastión de la humanidad al invadir la tierra un enemigo inimaginable... En los desvanes hay cosas que conviene dejar tranquilas, cosas como El mono... La más soberbia conductora del mundo le ofrece a un hombre El atajo de la señora Todd, para llegar antes al paraíso...'),
(978849746, 'Todo es eventual: 14 relatos oscuros', 'KING, STEPHEN', 'Novela negra, intriga, terror', 'Plaza & Janes', 'Todo es eventual" es la primera colección de relatos de Stephen King tras nueve largos años. Publicados anteriormente en revistas, en Internet, leídos en público por el autor o bien inéditos, son textos sorprendentes, misteriosos, terroríficos... Desde historias de encuentros con muertos y una habitación de hotel con fantasma asesino hasta escenas del realismo más directo y brutal, King nos transporta al mundo de su increíble imaginación. Catorce relatos que te sorprenderán y que, aunque quieras, no podrás dejar. Historias: Sala de autopsias número 4 El hombre del traje negro Todo lo que amas se te arrebatará La muerte de Jack Hamilton En la habitación de la muerte Las Hermanitas de Eluria Todo es eventual La teoría de L.T. sobre los animales de compañía El virus de la carretera viaja hacia el norte Almuerzo en el café Gotham Esa expresión que sólo puede expresarse en francés 1408 Montado en la Bala La moneda de la suerte En el índice del libro, King describe el método que utilizó para ordenar sus historias: "Lo que hice fue quitar todas las picas de una baraja de póquer y un comodín. Las cartas que iban del as al rey = 1-13. El comodín = 14. Barajé las cartas y las repartí. El orden en que salieron de la baraja fue el orden de las historias, basándome en el lugar que ocupaban en la lista que mi editor me envió. Así salió un bonito equilibrio entre las historias más literarias y las más humorísticas. Luego añadí una nota explicativa antes o después de cada historia, dependiendo de qué quedaba mejor. La siguiente compilación, con cartas del tarot."'),
(978849758, 'Misery', 'KING, STEPHEN', 'Novela negra, intriga, terror', 'DeBolsillo', 'Misery es un relato obsesivo que sólo podía escribir Stephen King. Un escritor sufre un grave accidente y recobra el conocimiento en una apartada casa en la que vive una misteriosa mujer, corpulenta y de extraño carácter. Se trata de una antigua enfermera, involucrada en varias muertes misteriosas ocurridas en diversos hospitales. Esta mujer es capaz de los mayores horrores, y el escritor, con las piernas rotas y entre terribles dolores, tiene que luchar por su vida.'),
(978849759, 'La Milla Verde', 'KING, STEPHEN', 'Novela negra, intriga, terror', 'DeBolsillo', 'Octubre de 1932, penitenciaría de Cold Mountain. Los condenados a muerte aguardan el momento de ser conducidos a la silla eléctrica. Los crímenes abominables que han cometido les convierten en carnaza de un sistema legal que se alimenta de un círculo de locura, muerte y venganza. Y en esa antesala del infierno Stephen King traza una pavorosa radiografía del horror en estado puro.'),
(978849793, 'Cementerio de Animales', 'KING, STEPHEN', 'Novela negra, intriga, terror', 'DeBolsillo', 'Church estaba allí otra vez, como Louis Creed temía y deseaba. Porque su hijita Ellie le había encomendado que cuidara del gato, y Church había muerto atropellado. Louis lo había comprobado: el gato estaba muerto, incluso lo había enterrado más allá del cementerio de animales. Sin embargo, Church había regresado, y sus ojos eran más crueles y perversos que antes. Pero volvía a estar allí y Ellie no lo lamentaría. Louis Creed sí lo lamentaría. Porque más allá del cementerio de animales, más allá de la valla de troncos que nadie se atrevía a trasponer, más allá de los cuarenta y cinco escalones, el maligno poder del antiguo cementerio indio le reclamaba con macabra avidez...'),
(978958861, 'Canción de Hielo y Fuego - Festín de Cuervos', 'MARTIN, GEORGE R.R.', 'Novela, Fantasía heróica', 'DeBolsillo', 'La Guerra de los Cinco Reyes empieza a decaer. Robb Stark, Joffrey Baratheon, Renly Baratheon y Balon Greyjoy están muertos y el rey Stannis Baratheon se encuentra en el Muro ayudando la Guardia de la Noche y su lord Comandante, Jon Nieve. El hermano de Joffrey, Tommen Baratheon, con tan solo ocho años es ahora el rey de Poniente y gobierna desde Desembarco del Rey bajo la atenta mirada de su madre, la reina regente, Cersei Lannister. Tywin Lannister también está muerto, asesinado por su propio hijo, Tyrion, antes de huir de la ciudad. Sansa Stark se encuentra escondida en el Valle, protegida por Petyr Baelish quien, después de asesinar a su esposa Lysa Arryn, se autoproclama lord Protector del Valle y guardián de su hijastro lord Robert Arryn, ahora Señor del Valle.'),
(978987121, 'Al sur de la frontera, Al oeste del Sol', 'MURAKAMI, HARUKI', 'Novela, Ficción', 'TUSQUETS', 'La historia es narrada por Hajime, "Principio" en japonés. Lo llamaron así por nacer la primera semana del primer mes del primer año de la segunda mitad del siglo XX. Era hijo único, enfermizo y egoísta. Su mejor amiga de la infancia, Shimamoto, también era hija única. Con ella, Hajime encontró el consuelo que buscaba, compartían y hablaban de muchas cosas que los demás niños no entendían. Al terminar la escuela primaria los dos amigos pierden el contacto.\r\n\r\nMuchos años después, casado, padre de dos niñas y dueño de un club de jazz, vuelve a encontrarse a Shimamoto.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

CREATE TABLE `reservas` (
  `idreserva` int(10) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `isbn` int(10) NOT NULL,
  `fecha_desde` date NOT NULL,
  `fecha_hasta` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `reservas`
--

INSERT INTO `reservas` (`idreserva`, `usuario`, `isbn`, `fecha_desde`, `fecha_hasta`) VALUES
(4986, 'mailer', 165121, '2017-02-12', '2017-02-27'),
(4987, 'aaa@mail.com', 116516165, '2017-02-12', '2017-02-27'),
(4988, 'aaa@mail.com', 116516165, '2017-02-12', '2017-02-27'),
(4989, 'aaa@mail.com', 41984151, '2017-02-12', '2017-02-27'),
(4990, 'aaa@mail.com', 18151521, '2017-02-12', '2017-02-27'),
(4991, 'aaa@mail.com', 1651512, '2017-02-12', '2017-02-27'),
(4992, 'mail@mail.com', 116516165, '2017-02-12', '2017-02-27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idusuario` int(10) NOT NULL,
  `nom1` varchar(20) DEFAULT NULL,
  `nom2` varchar(20) DEFAULT NULL,
  `ape_pa` varchar(20) DEFAULT NULL,
  `ape_ma` varchar(20) DEFAULT NULL,
  `mail` varchar(20) NOT NULL,
  `telefono` int(10) DEFAULT NULL,
  `password` varchar(20) NOT NULL,
  `nivel` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idusuario`, `nom1`, `nom2`, `ape_pa`, `ape_ma`, `mail`, `telefono`, `password`, `nivel`) VALUES
(1, 'Ricardo', NULL, 'Aguinaga', 'Nuñez', 'mail@mail.com', 2932186, '123', 2),
(2, 'gdfgdfg', NULL, 'dfgdfgd', 'gdfgd', 'aaa@mail.com', 444444, '123', NULL),
(3, NULL, NULL, NULL, NULL, 'b@mail.com', NULL, '123', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`isbn`);

--
-- Indices de la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`idreserva`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idusuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `reservas`
--
ALTER TABLE `reservas`
  MODIFY `idreserva` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4993;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusuario` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
