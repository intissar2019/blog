-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  lun. 15 avr. 2019 à 03:46
-- Version du serveur :  10.1.26-MariaDB
-- Version de PHP :  7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `blog`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `imageArticle` text,
  `id_user` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `dateArticle` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `titre`, `body`, `imageArticle`, `id_user`, `id_category`, `dateArticle`) VALUES
(89, 'Cap sur Nice pour un week-end culturel', 'À la Villa #Arson , l’école est finie, et nous voilà en pleine effervescence du montage de l’exposition de la plasticienne américaine Judy Chicago (1). C’est un peu la Californie qui s’installe sur la colline, comme un clin d’œil au #new-look arty de Nice. Depuis son ouverture en 1972, la Villa Arson, signée par l’architecte Michel Marot, irrigue la création contemporaine, entre son école d’art et son lieu d’exposition. Le bâtiment couvert de galets épouse le relief en un labyrinthe sophistiqué d’ateliers en terrasses, baignés de lumière. L’école est un vivier de talents reconnus (Tatiana Trouvé, Philippe Mayaux ou Michel Blazy, qui expose tout près, Galerie des Ponchettes, jusqu’au 4 novembre) et de jeunes artistes prometteurs (Tatiana Wolska, Florian Pugnaire). Ce lieu à part s’inscrit aussi dans la ville, comme lorsqu’en 2016 il a abrité l’exposition des vingt ans de La Station, un acteur majeur de la vitalité artistique locale.\r\n\r\nNice est aussi la cinquième ville de #France, stimulée à la fois par une identité très forte et un brassage international inouï. Matisse, qui y avait élu domicile, repose au cimetière de Cimiez. L’École de Nice a vu éclore dès les an­nées 1950 une génération en or, avec Yves Klein, Martial Raysse, Arman, César, puis Bernar Ve­net, Claude Viallat, Noël Dolla ou Ben le trublion… Un tissu solide de musées, de lieux d’expositions, de sites porteurs et prometteurs, une mairie active et une noria d’événements qui perpétuent l’histoire de cette terre arty, à l’instar du Mamac, le Musée d’art moderne et contemporain dont la collection reflète l’épopée artistique niçoise. «C’est un #musée qui est né d’une histoire très riche, connectée à l’international», raconte sa directrice Hélène Guenin.\r\n\r\n', 'nice-arty (1).jpg', 2, 38, '2019-04-13 10:39:10'),
(90, 'Quels sont les fruits les moins caloriques ?', 'Si tous les fruits (et légumes) sont bons pour la santé, du fait de leur richesse en vitamines, en minéraux, en fibres et en anti-oxydants, il n\'est pas toujours facile de s\'y retrouver pour faire les meilleurs choix pour votre ligne. Et malheureusement, le tableau des calories n\'est pas inscrit sur les fruits ! Voici la sélection des fruits les moins caloriques et quelques conseils pour vous aider à profiter de toutes leurs vertus.\r\n\r\nTop 15 des fruits frais les moins caloriques\r\nChaque fruit renferme ses propres qualités nutritionnelles, c\'est pourquoi il est important de bien varier sa consommation de fruits (et de légumes !) en privilégiant toujours les végétaux de saison pour bénéficier au maximum de leurs atouts santé. Mais comme tous les fruits ne se valent pas en terme d\'apport calorique, voici, la sélection des 15 fruits les moins caloriques et les moins énergétiques :\r\n \r\n1. La pastèque : 30 kcal/100 g\r\nComposée à 92% d\'eau, la pastèque est l\'un des fruits les moins caloriques bien que sa saveur soit parfois très sucrée. Elle est riche en magnésium, en cuivre, en Vitamines A, B5 et B6. Si elle est coupée, veillez à consommer votre pastèque dans les 4 jours pour profiter des vertus de son lycopène, son fameux anti-oxydant, présent également dans la tomate.\r\n \r\n2. La fraise : 33 kcal/100 g\r\nRiche en composés phénoliques, les fraises sont des fruits au pouvoir anti-oxydants très puissants et auraient un effet protecteur contre le cancer. La capacité antioxydante des fraises est aussi très intéressante lorsqu\'elles sont consommées sous forme de confiture. Optez donc pour une confiture à la fraise de qualité, de préférence 100% fruits, pour vos petits-déjeuners !\r\n \r\n3. La groseille : 33 kcal/100 g\r\nLa groseille est un fruit qui renferme une quantité intéressante de potassium, d\'anti-oxydants et de Vitamine C. Elle est aussi riche en pectine, une fibre qui aurait de nombreux bienfaits sur la santé notamment sur la diminution des niveaux de cholestérol sanguin ainsi que de la glycémie.\r\n \r\n4. La framboise : 35 kcal/100 g\r\nRiches en vitamines C, les framboises ont un pouvoir anti-oxydant très élevé. En revanche, pour profiter de leurs bienfaits, évitez de les congeler car les très basses températures nuisent autant à ses vitamines qu\'à ses antioxydants.\r\n \r\n5. Le melon : 35 kcal/100 g\r\nComposé à 90% d\'eau, le melon est particulièrement rafraîchissant. Conservez-le au réfrigérateur, entier (plutôt que coupé) : il perdra beaucoup moins de ses vertus nutritionnelles.\r\n \r\n6. Le pamplemousse (pomelo) : 35 kcal/100 g\r\nLe pamplemousse est un fruit qui renferme une quantité exceptionnelle de vitamine C et d\'antioxydants aux multiples bienfaits pour la santé, notamment sur les risques de cancers et de maladies cardiovasculaires. Afin de profiter au maximum des propriétés antioxydantes de ce fruit, choisissez de préférence des pamplemousses roses ou, mieux encore, rouges !\r\n \r\n7. La pèche et la nectarine : 38 kcal/100 g\r\nFruits d\'été par excellence, la pêche et la nectarine sont riches en sucre (mais pas nécessairement caloriques) si elles sont cueillies à maturité. Elle sont aussi riches en vitamines, en fibres et en anti-oxydants qui sont surtout contenus dans la peau. Consommez donc vos pêches et vos nectarines entières, avec leur pelure, après les avoir bien lavées.\r\n \r\n8. L’orange : 40 kcal/100 g\r\nL\'orange est réputée pour sa teneur exceptionnelle en Vitamine C. Le mieux est de consommer les oranges sous forme de fruits frais entiers ou sous forme de jus maison. Mais si vous optez pour un jus de fruits industriel (100% pur jus, sans sucres ajoutés), consommez-le 3 à 4 semaines avant la date d’expiration inscrite sur l’emballage pour bénéficier de ses vertus.\r\n \r\n9. L’abricot : 44 kcal/100 g\r\nRiche en fibres, en antioxydants et en Vitamine A, l\'abricot a tout intérêt à être consommé en association avec du (bon !) gras. En effet, les caroténoïdes, dont le bêta-carotène qui lui donne sa couleur orangé, sont mieux absorbés dans l’organisme lorsqu’une petite quantité de lipides est consommée au même moment. L\'idéal : manger des fruits oléagineux (amandes, noix, noisettes, etc.) en même temps que vos abricots !\r\n \r\n10. La prune : 44 kcal/100 g\r\nL\'eau contenue dans la prune à 82,5% est chargée en minéraux et oligo-éléments, notamment de potassium, de fer et de magnésium. Fraîche, en jus ou séchée (pruneau), la prune est toujours riche en antioxydants et en vitamines, notamment du groupe B.\r\n \r\n11. La mandarine : 45 kcal/100 g\r\nLa mandarine est une excellente source de Vitamine C. En hiver, c\'est le fruit anti-fatigue par excellence ! Facile à emporter dans son sac, elle se mange en toute circonstance, à la fin d\'un repas ou même pour une collation improvisée. Vous ferez ainsi le plein de Vitamine C, mais aussi de Vitamine A et d\'anti-oxydants.\r\n \r\n12. La nèfle : 45 kcal/100 g\r\nPeu répandue, la nèfle est pourtant un fruit intéressant, notamment pour sa richesse en vitamines : c\'est la championne de la Vitamine A. Elle offre également un taux intéressant de béta-carotène qui, grâce à ses propriétés antioxydantes, aide la peau à se protéger. Pensez donc à en consommer pour préparer votre peau aux premières expositions au soleil.\r\n \r\n13. L’ananas : 50 kcal/100 g\r\nFruit tropical par excellence, l\'ananas est présent sur les étals des supermarchés toute l’année. Très riche en manganèse, il contient surtout de la broméline, qui facilite la digestion et qui aurait de nombreuses actions bénéfiques sur la circulation sanguine.\r\n \r\n14. La pomme : 50 kcal/100 g\r\nLa pomme est une bonne source d’antioxydants et de fibres alimentaires. Cependant, la quantité d’anti-oxydants et sa teneur en vitamines et en minéraux varient selon la variété, la maturité et le traitement (entreposage, cuisson, extraction du jus). Pour bien faire, préférez toujours les pommes rouges car elles sont généralement plus riches en antioxydants que les pommes de couleur pâle. Lavez-les mais évitez de les peler !\r\n \r\n15. La poire : 50 kcal/100 g\r\nRiche en fibres, la poire présente également une teneur très intéressante en vitamines et en anti-oxydants. Préférez-les fraîches et si possible bio car la culture biologique permettrait aux fruits de déployer davantage leurs défenses anti-oxydantes contre les agents pathogènes.\r\n \r\nTop 10 des fruits secs les moins caloriques\r\nSi les fruits frais sont de véritables trésors aux vitamines, aux minéraux et aux anti-oxydants, les fruits oléagineux et les fruits secs ne sont pas moins intéressants pour autant. Faciles à emporter avec vous en toute circonstance, ils sont une excellente alternative pour une collation à la hâte sur le pouce.\r\n\r\nLes fruits oléagineux :\r\n\r\nLes fruits oléagineux ont souvent mauvaise réputation du fait de leurs apports en lipides (graisses). Pourtant, la plupart d\'entre eux sont véritablement intéressants car ils apportent certes des graisses, mais il s\'agit d\'acides gras de bonne qualité, qui protègent vos artères. Parmi les fruits oléagineux, les pistaches, les noix de cajou et les amandes sont les plus intéressantes par rapport aux autres noix et graines . Elles sont en effet un peu moins caloriques mais elles contiennent surtout plus de protéines et de fibres alimentaires et sont donc plus rassasiantes. Un atout intéressant pour combler les petites faims !\r\n\r\n1. Pistaches : 160 kcal/portion (30 g) = 45 pistaches\r\n2. Noix de cajou : 160 kcal/portion (30 g) = 20 noix de cajou\r\n3. Amandes : 170 kcal/portion (30 g) = 20-25 amandes\r\n4. Noisettes : 180 kcal/portion (30 g) = 20 noisettes\r\n5. Noix de Grenoble : 185 kcal/portion (30 g) = 14 moitiés\r\n \r\nLes fruits secs :\r\n \r\nLes fruits secs sont en moyenne 2 à 4 fois plus riches en calories que leur équivalent en fruits frais, exception faite pour le raisin sec. Mais la bonne nouvelle c\'est qu\'on adapte toujours sa consommation : on se contente en effet généralement d\'une poignée de 30 g de fruits secs alors que pour un fruit frais, on en vient souvent à consommer une portion de 100 et 250 g selon les fruits.\r\n \r\nAvec les fruits secs, on y gagne donc dans la balance des calories !\r\n \r\n1. Figues : 60 kcal/portion (30 g) = 3 figues moyennes\r\n2. Pruneaux : 72 kcal/portion (30 g) = 3-4 pruneaux\r\n3. Pomme séchée : 80 kcal/portion (30 g) = 5 morceaux de pomme\r\n4. Abricots secs : 80 cal/portion (30 g) = 8 moitiés d\'abricots\r\n5. Papaye : 100 kcal/portion (30 g) = 2 morceaux de papaye\r\n \r\nLes raisins secs quant à eux apportent 110 kcal/portion de 30 g, ce qui représente environ 1/4 de tasse.', 'i135293-fruits-les-moins-caloriques.jpeg', 2, 33, '2019-04-14 11:29:13'),
(91, 'Sablés de Pâques décorés à la glace royale', 'ÉTAPE 1\r\nPréparez la pâte à sablés. Sur votre plan de travail ou sur un tapis, versez la farine mélangée avec la levure tamisée, le sucre glace, la poudre d\'amandes, la poudre de lait, le sel, la vanille, les zestes d\'orange et le beurre froid. Mélangez le tout à l’aide d’un coupe pâte pour obtenir un mélange sableux. Ajoutez l\'oeuf battu et mélangez. Formez une boule puis rapidement fraisez avec la paume de la main sans trop travailler la pâte. Enveloppez la pâte dans un film alimentaire et réservez au réfrigérateur pendant 1 h 30.\r\n\r\nÉTAPE 2\r\nEtalez le pâton sur une épaisseur de 5 mm puis procédez à la découpe des oeufs à l\'emporte-pièce. Piquez le dessous des sablés à l\'aide d\'une fourchette (pour éviter qu\'ils ne gonflent à la cuisson) et déposez-les sur une plaque de cuisson recouverte de papier sulfurisé. Remettez les sablés au réfrigérateur 30 minutes.\r\n\r\nÉTAPE 3\r\nPendant ce temps, préchauffez le four à 170°C. Enfournez pour 10 minutes. Surveillez la cuisson.\r\n\r\nÉTAPE 4\r\nReformez une boule avec les chutes de pâte et recommencez l\'opération jusqu\'à ce qu\'il n\'y en ait plus. Sortez les biscuits du four et laissez-les refroidir.\r\n\r\nÉTAPE 5\r\nRéalisez la glace royale. Dans un saladier, versez les blancs d\'oeuf et le sucre glace ainsi que le jus de citron.\r\n\r\nÉTAPE 6\r\nA l\'aide d\'un batteur électrique, battez à vitesse lente pendant 2 à 3 minutes puis augmentez la vitesse pendant 5 à 6 minutes jusqu\'à ce que le mélange soit brillant et ferme.\r\n\r\nÉTAPE 7\r\nSéparez dans deux bols différents car 1/3 du glaçage restera blanc. Filmez-le au contact puis recouvrez d\'un autre film alimentaire pour éviter qu\'il ne se dessèche.\r\n\r\nÉTAPE 8\r\nRépartissez les 2/3 restants dans des petits bols (autant que de couleurs désirées). Travaillez les couleurs une par une, elles vont servir au remplissage de vos biscuits.\r\n\r\nÉTAPE 9\r\nMettez la glace royale colorée dans des poches munies d\'une douille n° 3. Commencez d\'abord le pourtour puis procédez au remplissage. Tapotez le biscuit pour obtenir une surface bien lisse et procédez de la même façon pour chaque couleur. Laissez sécher une nuit et procédez à la décoration le lendemain.\r\n\r\nÉTAPE 10\r\nSi votre glaçage blanc est un peu desséché, ajoutez quelques gouttes d\'eau jusqu\'à obtenir la bonne consistance.\r\n\r\nÉTAPE 11\r\nMettez dans une poche munie d\'une douille n° 1.\r\n\r\nÉTAPE 12\r\nLaissez travailler votre créativité en réalisant les dessins que vous souhaitez. Laissez sécher vos biscuits une nuit si vous voulez les conserver dans une boite.\r\n\r\nÉTAPE 13\r\nSortez votre boite de Sablés de Pâques décorés à la glace royale au moment du goûter de Pâques. C\'est un succès assuré avec une bonne tasse de thé !', 'i121889-.jpeg', 2, 35, '2019-04-14 11:32:13'),
(92, '3 activités instructives et ludiques pour occuper les enfants cet été', 'L’année scolaire est finie et c’est parti pour 2 mois de vacances ! Et la question que se posent beaucoup de mamans (et mois la première ^^) c’est comment occuper les enfants cet été, et si possible intelligemment ?\r\n\r\nS’il y a bien évidemment les classiques goûters au parc, sorties culturelles, après-midi avec les copains / copines / cousins ou cousines, ou autres promenades à vélo, cela laisse malgré tout pas mal de temps libre à la maison qu’il va falloir occuper.\r\n\r\nL’avantage avec les enfants, c’est qu’ils ont soif d’apprendre dès lors que l’on parvient à trouver l’activité qui leur plaît. Et pour cet été, ils vont être gâtés et surtout ils vont pouvoir apprendre en s’amusant des choses utiles pour faire grandir leur foi de muslim en herbe. ^^\r\n\r\nVoici nos 3 programmes coups de cœur pour cet été.\r\n\r\n1 /La box d’activités Talamize\r\nChez Avenue des Sœurs, on est complètement fans des supports proposés par Talamize ! Il faut dire qu’ils sont toujours extrêmement complets et ludiques et que les enfants en raffolent.\r\n\r\nPour cet été, Talamize lance sa nouvelle box d’activités pour permettre aux enfants de 3 à 5 ans de partir à la découverte de la langue arabe. Cette box contient 9 livres PDF soit plus de 250 pages de coloriage, traçage, écriture, vocabulaire, collage et autres activités en tout genre qui permettront à vos enfants de s’imprégner de l’alphabet arabe et d’apprendre leurs premiers mots.\r\n\r\nEn avançant un petit peu chaque jour tout en prenant le temps de s’adapter au rythme et à l’envie de vos enfants, il y a de grandes chances pour que l’alphabet arabe n’ait plus de secret pour eux à la fin de l’été ! (avec l’aide d’Allah)\r\n\r\nEt bonne nouvelle pour les parents de plus grands, la box d’activités Talamize existe aussi dans une  version destinée aux plus de 6 ans. Au programme : Exercices, Vocabulaire, Écriture, Les couleurs, Les formes, Les chiffres, Les jours , Les mois, Les saisons, L’heure, et bien d’autres choses encore …\r\n\r\nPour vous procurer la box d’activité c’est par ici => Je découvre la box !\r\n\r\n(Pour info, elle est en promo à -70% jusqu’au 12 Juillet)\r\n\r\n \r\n\r\n\r\n\r\n \r\n\r\n2 / J’apprends la prière avec Talamize \r\n(Quand je vous disais qu’on est fans ^^)\r\n\r\nCette fois-ci, le programme s’adresse aux enfants un peu plus grands (sachant déjà bien lire en français) afin de les préparer de façon ludique à l’obligation de la prière. Pour les parents, c’est une grosse responsabilité que d’apprendre ce pilier de l’Islam à leurs enfants. Le sujet de la prière est vaste et l’on ne sait pas toujours par où commencer.\r\n\r\nTalamize a conçu un programme complet pour permettre aux enfants d’apprendre la prière en s’amusant. Le programme contient des leçons, des tests de connaissance, des jeux, des questions, des exercices et des activités simples et ludiques.\r\n\r\nIl existe en version interactive ( un peu comme un jeu à faire sur ordinateur, tablette ou smartphone) ou en version ebook (livre PDF à télécharger et imprimer). A vous de voir quel support conviendrait le mieux à votre enfant !', '3-activités-pour-occuper-les-enfants-cet-été.jpg', 2, 32, '2019-04-14 11:34:05'),
(94, '5 gestes écologiques (et très simples) à appliquer au quotidien', 'Mais d’abord, commençons par définir le terme écologie. En science, l’écologie est « la science qui étudie les êtres vivants dans leur milieu et les interactions entre eux ». La seconde définition est plus apparentée à une action générale qui défini «  l’écologie comme une doctrine visant à un meilleur équilibre entre l’homme et son environnement naturel ainsi qu’à la protection de ce dernier ». Dans cet article nous nous intéresserons au second terme puisque nous vous présenterons 5 gestes de protection environnementale qui peuvent sauver la planète.\r\n\r\n \r\n\r\nGeste écologique n°1 : Dire adieu aux sacs en plastique !\r\nUtiliser des sacs réutilisables en tissu, en toile ou en matière recyclée pour effectuer les courses du quotidien.\r\n\r\nLe plastique est une des grandes causes de pollution de l’environnement. En effet le plastique a une durée de vie de 450 ans dans la nature. Imaginez, que même après votre mort, ce sac sera encore présent sur Terre et continuera de rejeter des polluants chimiques dans la nature !\r\n\r\nAprès une prise de conscience collective, plusieurs pays ont pris l’initiative d’inciter leur population à ne plus utiliser de sacs non dégradables mais plutôt des sacs en tissu ou des paniers en interdisant la vente de sacs plastiques et en proposant des sacs réutilisables.\r\n\r\nGeste écologique n°2 : Ne pas jeter de déchets dans la nature\r\nÇa tombe sous le sens, mais il suffit de regarder autour de nous pour voir que c’est encore loin d’être une évidence pour tous. Donc rappelons-le encore et toujours, on ne jette pas ses déchets dans la nature !\r\n\r\nL’être humain n’a pas conscience des conséquences que certains de ses actes peut avoir sur l’environnement. Il oublie très souvent de respecter ce que la Terre lui donne comme bienfaits en termes de nourriture et d’apaisement. L’Homme a toujours jeté ses déchets dans la nature sans se soucier qui il y aurait un impact négatif dans l’air, les eaux et le sol. Cette pollution entraine ainsi des effets tout aussi néfastes sur sa santé et celle des autres êtres vivants.\r\n\r\nLorsqu’il pleut et que l’eau se mélange aux déchets, la fusion entre les deux provoque une réaction chimique en créant un carbone organique qui provoque ensuite des pluies acides. Ces pluies acides polluent ensuite les eaux telles que les rivières, les fleuves, les mers et les océans. L’eau va ensuite passer dans les déchets qui dégageront des polluants toxiques dans les sols. Cette eau touchée par les polluants atteindra les nappes phréatiques qui seront contaminées par divers polluants tels que les matériaux lourds, les déchets toxiques, les détergents… D’où une pollution des fruits et des légumes cultivés dans la terre.\r\n\r\nIl existe encore un autre type de pollution qui est encore plus toxique, qui est le rejet des déchets industriels dans la nature et l’eau. Les industries n’investissent pas dans des outils de traitements de déchets. Les déchets industriels se retrouvent alors en conséquence dans la nature et diffusent des polluants toxiques qui ont un impact extrêmement grave sur la santé des être humains et des animaux.\r\n\r\nLes océans ne sont pas non plus épargnés par cette pollution. En effet, l’Homme n’a cessé de vider les déchets urbains dans les océans, en pensant que l’eau allait naturellement les dégrader. En réalité, les déchets jetés dans les océans mettent plusieurs centaines et milliers d’année à se dégrader voir à ne jamais disparaître. Le mélange eau + déchets provoque une réaction chimique toxique qui se propage dans l’eau. Cette pollution toxique ainsi que les déchets atteignent les êtres vivants de la mer qui font apparaître chez eux des maladies ou peuvent provoquer leur mort par ingestion.  On parle ainsi d’extinction de certaines espèces animales qui jouent un rôle important dans l’écosystème et la chaîne alimentaire.\r\n\r\nGeste écologique n°3 : Faire le tri !\r\nLe tri des déchets est un moyen de faciliter le recyclage réalisé par les usines industrielles spécifiées.  Trier ses déchets à la maison aura un impact positif sur l’environnement puisque chacun d’entre eux aura été pré-trié, les communes auront donc plus de facilité à recycler chaque bac en fonction de sa matière : plastique, carton, verre, papier, aliments, métaux…\r\n\r\nIl faut entre 2 et 4 bacs de tri à la maison s’il vous est possible de les installer à l’intérieur ou sur une terrasse. Chacun doit être prévu pour une ou plusieurs matières spécifiques :\r\n\r\nCas n°1 pour 2 bacs de tri :\r\n\r\nBac 1 : pour le papier, le carton, le plastique, le verre\r\nBac 2 : pour les aliments\r\nCas n°2 pour 4 bacs de tri :\r\n\r\nBac 1 : pour le papier et le carton\r\nBac 2 : pour le plastique\r\nBac 3 : pour le verre\r\nBac 4 : pour les aliments\r\nUne fois le tri réalisé à la maison, il faudra prendre le temps de les jeter dans chaque bac de tri installé dans vos communes. Ils sont facilement reconnaissables puisqu’ils possèdent chacun une couleur et une mention pour chaque matière.\r\n\r\nLe recyclage est une des meilleures solutions pour réduire le nombre de déchets dans la nature, puisqu’il réutilise des matières pour en réaliser d’autres qui seront ensuite réutilisées pour la fabrication d’autres produits comme : les vêtements, les jouets, les emballages, les bouteilles, les contenants, du tissu…\r\n\r\nA savoir que le reste des aliments jetés à la poubelle sont les moins nocifs car ils sont biodégradables. Ce sont ceux qui se dégradent le plus vite dans la nature et certains peuvent même nourrir la terre comme  les peaux de fruits et de légumes. Que vous habitiez en maison ou en appartement, vous pouvez vous équiper d’un bac à compost afin de réduire encore un peu plus vos déchets. ^^\r\n\r\n \r\n\r\nGeste écologique n°4 : Consommer local et de saison\r\nL’heure est à la prise de conscience sur le plan alimentaire, et il était temps ! Consommer local et de saison est LA règle de base pour prendre soin de sa santé tout en prenant soin de l’environnement. Cela inclue une dimension sociale et solidaire afin d’aider les petits producteurs, tout en permettant de manger des fruits et légumes non conservés avec des produits chimiques, donc bio.^^\r\n\r\nPourquoi est-il si important de consommer local et de saison ? Les fruits et légumes vendus par les petits producteurs locaux sont traités et cultivés sans produits chimiques. L’agriculture des fruits et légumes se fait naturellement. Leur conservation est plus courte que ceux de grandes surfaces car ils ne contiennent pas de conservateurs qui augmentent leur durée de vie. Par ailleurs, ils possèdent leurs bienfaits naturels essentiels à la santé du corps humain.\r\n\r\nLes  petits producteurs  proposent des fruits et légumes de saison, en fonction des récoltes qui se font tout au long de l’année.  Les légumes et fruits frais de saison sont adaptés au cycle du corps humain en  fonction de ses besoins tout au long de l’année. Les fruits et légumes consommés en hiver ne seront donc pas les mêmes que ceux consommés en été.\r\n\r\nIl faut savoir que les fruits et légumes conservés peuvent provoquer des allergies et des maladies telles que des cancers sur le long terme. Ils sont traités avec des engrais chimiques la plupart du temps cancérogènes comme le glyphosate (à l’origine de nombreux scandales sanitaires en ce moment) qui est un herbicide destiné à traiter les mauvaises herbes sur les terres agricoles.\r\n\r\nLe glyphosate est l’herbicide le plus utilisé dans le monde dans le secteur agricole, mais il est sujet à controverse car des scientifiques ont trouvé des traces de glyphosate dans certaines graines en début de pousse et dans certains légumes et céréales à la récolte. Ce qui devrait conduire à son interdiction définitive dans les années à venir d’ici à 2021 en France.\r\n\r\n \r\n\r\nGeste écologique n°5 : Réduire l’activité internet\r\nVous ne le savez peut-être pas mais l’activité internet a un très gros impact négatif sur l’air. Chaque année, ce sont des millions de tonnes équivalent CO2 qui sont émis dans l’atmosphère. Ce qui équivaut à des millions de tonnes de litres d’essence consommés.\r\n\r\nComment l’internet peut-il autant polluer ? Tout simplement, parce que les datacenters qui stockent les données internet doivent être alimentés en électricité en continue 24/24h et 7/7 j. Ainsi, toutes les activités que nous effectuons sur le web diffusent à chaque instant du CO2 dans l’air.\r\n\r\nLe CO2 aussi appelé dioxyde de carbone est un polluant que nous produisons et dégageons de notre corps par la bouche. Mais il est aussi produit par les déchets qui émettent  des polluants toxiques, regroupés dans ce que l’on appelle les gaz à effet de serre. Ces gaz à effet de serre sont reconnus comme étant responsables du réchauffement et dérèglement climatique de la planète.\r\n\r\nLe réchauffement climatique se traduit par une augmentation des températures terrestres et une fonte des glaces dans les pôles froids et ainsi une disparition de certaines espèces animales tels que l’ours polaire principalement.\r\n\r\nLe dérèglement climatique provoque, quant à lui, des catastrophes naturelles très souvent visibles à travers : les séismes, les cyclones, les tempêtes de vent, de neige et de pluie, les pluies diluviennes, les éboulements de terrain …\r\n\r\nMême si le compte à rebours de la fin de notre planète est déjà lancé depuis plusieurs décennies, on peut encore s’efforcer à avoir une activité web modérée et diminuer nos émissions de CO2.\r\n\r\nAlors comment réduire son activité sur le web à l’heure de l’ère numérique  ? En évitant par exemple les recherches inutiles,  la publication d’articles et de vidéos en grand format, ou encore en limitant son utilisation des réseaux sociaux (cf voir l’article dans notre blog).', 'écologie.jpg', 2, 32, '2019-04-14 11:38:46'),
(95, 'Comment réussir à tout gérer sans se laisser déborder ?', 'Je suis passée par là !\r\nQuand on est mumpreneur, et qu’on travaille à la maison sans horaires précis, on peut facilement se laisser absorber par son travail et en oublier l’essentiel.\r\n\r\nN’étant pas non plus une reine de l’organisation à la base, je me suis vite laissée complètement dépasser par les événements ! Comme il était hors de question que ça continue aussi, j’ai appris à reprendre le contrôle de mes journées et à trouver un équilibre entre les différents aspects de ma vie.\r\n\r\nAttention, je ne dis pas que tout est parfait ! Avec des enfants en bas âge, il y a des jours où je ne fais absolument rien de ce que j’avais prévu. Mais la différence c’est que j’ai appris à redéfinir mes priorités.\r\n\r\nJe vous livre ici quelques astuces qui m’ont beaucoup aidée à ne plus me laisser dépasser et à rester sereine en toute circonstance.\r\n\r\n1/ Ne rien faire\r\nNon, je ne me suis pas trompée, je parle bien de ne rien faire ! Aujourd’hui on a tout simplement perdu l’habitude de penser, de laisser notre cerveau travailler librement. On est constamment occupéj et même quand on n’a rien à faire on s’occupe l’esprit avec des mp3, des vidéos, des coups de fil et j’en passe.\r\nPrenez l’habitude d’avoir régulièrement des moments, même courts, où vous ne faites rien qui occupe votre esprit ou votre attention.\r\nPar exemple, prendre un thé tranquillement (sans écran ou autre sous les yeux) et savourer le moment. Ou encore faire une petite promenade (sans écouteurs ou portable bien sûr). Vous avez peur de vous ennuyer ? Vous allez voir ce qui va se passer, vous allez commencer à penser, à penser à vous, au monde qui vous entoure, à votre vie…ça fait un bien fou et c’est tout simplement vital !\r\n\r\n2/ Prendre de la hauteur\r\nLe problème aujourd’hui, c’est qu’on a toujours la tête dans le guidon. On se consacre à ce qui nous occupe sur le coup, principalement à ce qui est urgent. Et bien souvent on oublie les choses moins urgentes mais pourtant essentielles.\r\n\r\nAlors levez la tête, prenez de la hauteur et considérez TOUS les aspects de votre vie ! Qu’est-ce qui compte le plus pour vous ? Qu’est-ce que vous voudriez faire passer au premier plan ?\r\n\r\nVous pouvez même en faire une petite liste histoire d’avoir tous les champs de votre vie en tête quand vous laisserez vos pensées voyager : Din, famille, santé, travail, loisir,…à vous de voir.\r\n\r\nPour chacun de ces domaines voyez régulièrement si vous y consacrez trop de temps, ou au contraire pas assez. Et décidez de ce que vous pourriez faire pour développer un domaine négligé, ou diminuer le temps et l’énergie consacrés à un domaine trop accaparant.\r\n\r\nUn petit conseil, quand vous entamez un changement commencez toujours petit. Pas de révolution, il faut tenir sur la longueur !\r\n\r\nN’oubliez pas également que notre tout premier rôle ici-bas est d’adorer Allah. S’il y a bien une chose à remettre au centre de votre vie, c’est votre religion. Il ne pourra en découler que des bienfaits sur les autres aspects de votre vie in sha Allah.\r\n\r\n3/ Engagez-vous\r\nC’est le moment de rentrer dans le concret, ouvrez votre agenda, sortez votre planning et planifiez les petits changements que vous voulez faire.\r\nVous voulez passer plus de temps avec vos enfants ? Bloquez une soirée ou une demi-journée où vous ne serez là que pour eux. Vous voulez commencer à lire le Quran tous les jours ? Réfléchissez à quel moment de la journée vous allez le faire, est-ce qu’il faudra vous réveiller un peu plus tôt ou autre.', 'équilibre-famille-travail-religion-min-433x413.jpg', 2, 32, '2019-04-14 11:49:42'),
(96, 'Recette de la Talbina et petit plus healthy', 'Ingrédients pour une personne :\r\n\r\n30 g de farine d’orge mondée bio (environ deux cuillères à soupe),\r\n500 ml de lait de vache ou végétal (riz , amande, soja…), ou d’eau,\r\n1 cuillère à soupe de miel de thym, de fleurs, d’oranger ou d’acacia\r\nun fouet,\r\nune casserole,\r\nun saladier.\r\n \r\n\r\nPréparation de la talbina\r\nVersez votre farine dans un saladier. Ajoutez-y le liquide de votre choix. Ensuite, versez votre préparation dans une casserole et mettez sur feu doux.\r\n\r\nIl est important de bien mélanger tout au long de la cuisson afin d’éviter que la farine ne colle au fond. Laissez cuire entre 15 à 20 minutes. Si vous désirez un mélange liquide, 15 minutes vous suffiront. Si en revanche, vous recherchez une texture plus épaisse, 20 minutes vous seront nécessaires.\r\n\r\nPour agrémenter votre talbina, vous pouvez ajouter une cuillère à soupe de miel de votre choix (oranger, thym, acacia ou  #fleurs ).\r\n\r\nVous pouvez également remplacer par un mélange 250 ml de lait/ 250 ml d’eau.\r\n\r\n \r\n\r\nLe petit plus healthy\r\nPour apporter un côté #healthy en plus à votre recette, vous pouvez rajouter des graines de chia (1 cuillère à soupe), des raisins secs, des noisettes, des noix, des amandes, ou encore des graines de nigelle. \r\n\r\nVous pouvez aussi ajouter des morceaux de #fruits frais comme des #pommes, des fruits rouges, des #kiwis, de la #banane, ou encore des dattes.\r\n\r\n \r\n\r\nAstuce !\r\nLa préparation de la #talbina est une opération délicate, si vous craignez que la préparation colle, faites-la au bain-marie :).', '41019010_l-810x556.jpg', 2, 35, '2019-04-14 03:36:40'),
(97, 'L’importance d’être bien entourée', 'De #l’obscurité à la #lumière\r\nImaginez un petit instant une belle nuit d’hiver. Le ciel noir parsemé de milliard d’étoiles. Un froid glacial et vous, vous êtes dans une forêt transie de froid et de peur. Vous n’avez d’autre choix que de marcher pour survivre. Puis, au loin, vous apercevez une lumière faible mais qui semble vous guider. Vous avancez doucement et juste devant vous, se dresse une  charmante chaumière, il y a de la vie qui s’en dégage. Vous décidez d’entrer, contre toute attente la porte s’entrouvre et vous entrez !\r\n\r\nQue pensez vous trouver dans cette modeste demeure ?\r\nC’est simple, un feu majestueux danse dans la cheminée, une couverture douce et chaude est posée sur un lit douillet et pour couronner le tout, un grand bol fume et une délicieuse odeur de chocolat aux effluves réconfortantes et enveloppantes vous invitent à y tremper vos lèvres tuméfiées par le froid glacial d’un rude hiver. Vous y êtes dans cet endroit à l’abri du froid, de la faim, de la soif , de l’extérieur et de ses dangers ; en sécurité. Bien à l’abri, calée dans ce lit confortable et rêvant à une magnifique journée en vous relaxant devant ce spectacle naturel. C’est l’effet procuré par le fait d’être entourée.\r\n\r\n', '38797841_s-e1449404036772.jpg', 2, 33, '2019-04-14 11:19:22'),
(99, 'test ', 'hamza', 'blog-3.jpg', 2, 32, '2019-04-14 11:23:54'),
(100, 'Salade de riz au surimi minceur', 'ÉTAPE 1\r\nFaites cuire le riz comme indiqué sur le paquet. Égouttez-le et laissez refroidir.\r\n\r\nÉTAPE 2\r\nCoupez le poivron en 2, épépinez-le et coupez-le en petits dés. Lavez le concombre et coupez-le en rondelles. Taillez les bâtonnets de surimi en cubes. Lavez et ciselez la ciboulette. Dans un saladier, mélangez tous les ingrédients de #salade.\r\n\r\nÉTAPE 3\r\nPréparez une vinaigrette avec #l\'huile, le vinaigre, le sel et le poivre. Versez-la sur la salade et mélangez bien.\r\n\r\nÉTAPE 4\r\nGardez au frais jusqu\'au moment de servir.', 'i135796-.jpeg', 2, 33, '2019-04-15 12:20:15'),
(101, 'Le slunch, à mi-chemin entre le goûter et le dîner', 'Qu\'est-ce-que le slunch ?\r\nVous vous demandez certainement ce que signifie le terme « Slunch ». Il s’agit tout simplement de la contraction entre les mots « supper » et « lunch » qui se traduisent respectivement par « dîner » et « repas ». Contrairement à ce que nous pourrions imaginer, cette nouvelle tendance est française et le terme a été inventé par une journaliste. Le Slunch, qui a déjà séduit de nombreux gourmands, se déguste généralement le dimanche aux alentours de 17 heures, de quoi éviter le blues du lundi matin ! Ce goûter dînatoire permet de passer un bon moment entre amis autour de mets sucrés et salés.\r\n\r\nComment se déroule un slunch ?\r\nOubliez vos habitudes, le Slunch casse les codes. Et oui, lors d’un Slunch les recettes sucrées précèdent les mets salés, comme si l’on passait progressivement du goûter au dîner. Ce repas se veut, avant tout, décontracté alors installez-vous dans un espace convivial et confortable. Autour d’un bar, sur un canapé ou encore sur des poufs. Pensez à diffuser un peu de musique pour détendre l’atmosphère et faire oublier à vos convives que c’est déjà la fin du #week-end ! Côté présentation des plats, faites place aux miniatures : verrines, cuillères apéritives, mini-bouchées…Et rangez vos couverts, lors d’un Slunch, nous mangeons avec les doigts.\r\n\r\nQuelques idées de recettes pour sluncher\r\nLes idées de recettes pour un Slunch à la fois gourmand et léger ne manquent pas. Comme nous l’avons expliqué, misez sur des portions individuelles. Ainsi, chacun pourra se régaler à sa convenance. Côté sucré, proposez des petits biscuits et gâteaux, des mousses en chocolat, ainsi que des fruits frais et de saison. Côté salé, vous avez également l’embarras du choix. Mini-cakes aux olives, verrines fraîcheur, caviar de légumes… Servez également un assortiment de graines et de fruits secs que vos amis grignoteront avec plaisir : graines de courges, amandes, noisettes ou encore pignons de pin. En ce qui concerne les boissons, tout est permis : jus de fruits, smoothies maison, thé ou même rosé raviront les papilles de vos convives. Enfin, pour changer du quotidien, lancez-vous dans un Slunch à thème. Faites voyager vos convives avec une cuisine exotique, épicée, italienne ou encore britannique. Un Slunch coloré et vitaminé sera également parfait pour passer une fin de week-end dans la bonne humeur. \r\n \r\nDimanche prochain, oubliez le #brunch et proposez à vos amis un #slunch, ils seront ravis !', 'i142792-slunch.jpeg', 2, 35, '2019-04-15 12:23:42'),
(102, 'Comment mettre sa famille en sécurité en cas d’incendie domestique ?', '#Incendie : les pièces à risque\r\nLa cuisine : c’est la pièce de départ de la plupart des incendies domestiques en journée en raison de l’usage d ‘appareils de cuisson. \r\nLa buanderie : ce local est à risque car il concentre plusieurs appareils ménagers électriques.\r\n\r\nLes causes de départ de feu\r\nLa négligence : bougie et cigarette laissées sans surveillance, plats et casseroles oubliés sur la cuisinière ou dans le four…\r\nIl est déconseillé de stocker des matières combustibles (bois, papier…) ou inflammables (alcool,, essence, peinture… ) dans un habitat, notamment près d’un feu et dans les lieux de circulation (couloir, escalier..)\r\nRemplacez toutes les ampoules à incandescence par des Leds, pour éviter la surchauffe, spécialement dans les abat-jours, le textile, les rideaux… \r\n\r\nIncendie : les publics à risque\r\nUne personne âgée a plus de risques de somnolence, de mauvaise audition et de difficulté à se mouvoir : un détecteur de fumée doit donc systématiquement être placé dans sa chambre ou la pièce où elle séjourne le plus souvent.\r\nLes enfants peuvent par négligence ou manque de surveillance, risquer de déclencher un incendie : jouer avec des allumettes ou un briquet laissé à portée de main, placer des objets trop près d’une cheminée sans insert, etc… C’est le rôle des adultes de les surveiller, il est cependant conseillé d’installer un détecteur de fumée dans leur chambre. \r\n\r\nLes adolescents : à cet âge particulèrement sensible, les comportements à risque étant importants : un détecteur de fumée doit impérativement être installé dans leur chambre et / ou dans la pièce qu’ils occupent le plus.', 'comment-mettre-sa-famille-en-securite-en-cas-d-incendie-domestique.jpeg', 2, 32, '2019-04-15 12:26:57');

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(26, 'Style'),
(27, ' Beauté '),
(32, 'Société '),
(33, 'Bien-être '),
(34, 'Déco '),
(35, 'Cuisine & recettes '),
(38, 'Voyages '),
(39, 'Le Petit Club'),
(40, 'Sport');

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `nameCommentor` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `dateComment` datetime NOT NULL,
  `idArticle` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`id`, `nameCommentor`, `body`, `dateComment`, `idArticle`) VALUES
(1, 'Ahlam', 'Merci je veux l\'essayer le plus tot ;)', '2019-04-14 05:02:05', 96),
(2, 'fifi', 'emmmm', '2019-04-14 05:02:39', 96),
(4, '', 'ent d\'une poignée de 30 g de fruits secs alors que pour un fruit frais, on en vient souvent à consommer une portion de 100 et 250 g selon les fruits. Avec les fruits secs, on y gagne donc dans la balance des calories ! 1. Figues : 60 kcal/portion (30 g) = 3 figues moyennes 2. Pruneaux : 72 kcal/portion (30 g) = 3-4 pruneaux 3. Pomme séchée : 80 kcal/portion (30 g) = 5 morceaux', '2019-04-15 00:00:00', 90),
(5, '', 'ent d\'une poignée de 30 g de fruits secs alors que pour un fruit frais, on en vient souvent à consommer une portion de 100 et 250 g selon les fruits. Avec les fruits secs, on y gagne donc dans la balance des calories ! 1. Figues : 60 kcal/portion (30 g) = 3 figues moyennes 2. Pruneaux : 72 kcal/portion (30 g) = 3-4 pruneaux 3. Pomme séchée : 80 kcal/portion (30 g) = 5 morceaux', '2019-04-30 00:00:00', 95),
(6, '', 'ent d\'une poignée de 30 g de fruits secs alors que pour un fruit frais, on en vient souvent à consommer une portion de 100 et 250 g selon les fruits. Avec les fruits secs, on y gagne donc dans la balance des calories ! 1. Figues : 60 kcal/portion (30 g) = 3 figues moyennes 2. Pruneaux : 72 kcal/portion (30 g) = 3-4 pruneaux 3. Pomme séchée : 80 kcal/portion (30 g) = 5 morceaux', '2019-04-15 00:00:00', 90),
(7, '', 'ent d\'une poignée de 30 g de fruits secs alors que pour un fruit frais, on en vient souvent à consommer une portion de 100 et 250 g selon les fruits. Avec les fruits secs, on y gagne donc dans la balance des calories ! 1. Figues : 60 kcal/portion (30 g) = 3 figues moyennes 2. Pruneaux : 72 kcal/portion (30 g) = 3-4 pruneaux 3. Pomme séchée : 80 kcal/portion (30 g) = 5 morceaux', '2019-04-30 00:00:00', 95),
(8, 'ASMA', 'Bravo', '2019-04-15 00:00:00', 102),
(9, 'ahlamm said', 'BONNE IDEE', '2019-04-15 00:00:00', 94);

-- --------------------------------------------------------

--
-- Structure de la table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `idArticle` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `first_Name` varchar(255) NOT NULL,
  `last_Name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `imgUser` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `first_Name`, `last_Name`, `email`, `password`, `imgUser`) VALUES
(2, 'Intissar', 'Ahmed', 'admin', 'admin', '');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_category` (`id_category`);

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idArticle` (`idArticle`) USING BTREE;

--
-- Index pour la table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cont1` (`idArticle`),
  ADD KEY `cont2` (`idUser`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT pour la table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `contrainte1` FOREIGN KEY (`id_category`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `contrainte2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `contrainte_comments` FOREIGN KEY (`idArticle`) REFERENCES `article` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `cont1` FOREIGN KEY (`idArticle`) REFERENCES `article` (`id`),
  ADD CONSTRAINT `cont2` FOREIGN KEY (`idUser`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
