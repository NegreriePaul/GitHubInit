-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 01 Décembre 2016 à 15:31
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `wedo`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE IF NOT EXISTS `article` (
  `id` int(11) NOT NULL,
  `id_redacteur` int(11) NOT NULL,
  `titre_article` text NOT NULL,
  `contenu` text NOT NULL,
  `photo` varchar(100) NOT NULL,
  `date_parution` date NOT NULL,
  `date_modification` date NOT NULL,
  `archive` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `article`
--

INSERT INTO `article` (`id`, `id_redacteur`, `titre_article`, `contenu`, `photo`, `date_parution`, `date_modification`, `archive`) VALUES
(12, 73, 'TEST', 'kjfosdjfo sdpokfpsdk f', '', '0000-00-00', '2023-07-16', 1),
(13, 73, 'Mon Article', 'Mon texte', '', '0000-00-00', '2023-07-16', 1),
(14, 73, 'Songhoy Blues', 'Songhoy Blues will be appearing in an eagerly anticipated new film documenting Malian musiciansâ€š fight with the extremist forces that have seen music banned in much of the country. They Will Have To Kill Us First: Malian Music In Exile will have its world premiere next month at Austinâ€šs South By Southwest Film Festival 2015', 'images/articles/af4657653087d7840558f313870f6edd.jpg', '2016-07-23', '0000-00-00', 0),
(15, 73, 'Ouverture de Nightlives', 'Nightlives est enfin ouvert ! Venez dÃ©couvrir les Ã©vÃ©nements les plus fous !', 'images/articles/51c3125d1389e909d615cdb2d4f14dfa.jpg', '0000-00-00', '2016-07-25', 1),
(16, 73, 'Fakear - Animal ! Un des meilleurs titre de l''annÃ©e !', 'Voici un des titres les plus artistiques du moment, un vÃ©ritable chef d''oeuvre !', 'images/articles/da9f31881083003cacea0497648e1cdc.jpg', '2016-07-25', '0000-00-00', 0),
(17, 73, 'Ouverture de Nightlives', 'Nightlives est enfin ouvert ! Venez dÃ©couvrir les Ã©vÃ©nements les plus fous !', 'images/articles/51c3125d1389e909d615cdb2d4f14dfa.jpg', '2016-07-25', '0000-00-00', 0),
(18, 22, 'BTMH - Throne', 'Victus universis caro ferina est lactisque abundans copia qua sustentantur, et herbae multiplices et siquae alites capi per aucupium possint, et plerosque mos vidimus frumenti usum et vini penitus ignorantes.\r\n\r\nHinc ille commotus ut iniusta perferens et indigna praefecti custodiam protectoribus mandaverat fidis. quo conperto Montius tunc quaestor acer quidem sed ad lenitatem propensior, consulens in commune advocatos palatinarum primos scholarum adlocutus est mollius docens nec decere haec fieri nec prodesse addensque vocis obiurgatorio sonu quod si id placeret, post statuas Constantii deiectas super adimenda vita praefecto conveniet securius cogitari.', 'images/articles/7efcd0b0cb42da4a96258c650c40f16e.jpg', '2016-07-26', '0000-00-00', 0),
(19, 72, 'Ultra Europe 2016', 'Vos rÃ©dacteurs Momo et moi mÃªme Ã©tions prÃ©sent Ã  cet Ã©vÃ¨nement,\r\net nous pouvons vous dire que c''Ã©tait incroyable !!!\r\n\r\nLa scÃ¨ne Ã©tait impressionnante et les DJ ont fait leur travail a la perfection...\r\n\r\nSeul bÃ©mol et pas des moindre, le premier jour a Ã©tÃ© cancelled du au temps qui Ã©tait catastrophique (Ã  en faire Ã©crouler la stage Resistance de Carl Cox...!)\r\n\r\nPeu de communication de la part des organisateurs durant ce jour, ce qui a lÃ©sÃ© Ã  mon avis un trÃ¨s grand nombre de clubbeurs qui ne renouvelleront pas l''expÃ©rience...\r\n\r\nQuel dommage car ce festival Ã©tait vraiment bon, et les autres scÃ¨nes annexes (worldwide et Arcadia) dÃ©gagaient aussi quelque chose...\r\n\r\nL''annÃ©e prochaine, on sera Ã  Tomorrowland... alors restez connectÃ©s !', 'images/articles/4a1e2f8c2bbbed18fefafb75af3cb8b2.jpg', '2016-07-26', '0000-00-00', 0),
(20, 72, 'Soutenance Projet', 'Cette soutenance se passe bien.', 'images/articles/4a1e2f8c2bbbed18fefafb75af3cb8b2.jpg', '0000-00-00', '2016-07-26', 1);

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(11) NOT NULL,
  `id_redacteur` int(11) NOT NULL,
  `titre_article` text NOT NULL,
  `contenu` text NOT NULL,
  `id_media` int(11) NOT NULL,
  `date_parution` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `artiste`
--

CREATE TABLE IF NOT EXISTS `artiste` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(255) DEFAULT NULL,
  `biographie` text,
  `id_type_musique` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `easy_name` varchar(255) DEFAULT NULL,
  `id_photo` int(11) DEFAULT NULL,
  `id_banner` int(11) DEFAULT NULL,
  `iframe` text,
  `facebook` varchar(255) DEFAULT '',
  `twitter` varchar(255) DEFAULT '',
  `youtube` varchar(255) DEFAULT '',
  `instagram` varchar(255) DEFAULT '',
  `soundcloud` varchar(255) DEFAULT '',
  `pays` varchar(100) DEFAULT NULL,
  `commentaires` text,
  `archive` int(11) DEFAULT NULL,
  `fans` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=55 ;

--
-- Contenu de la table `artiste`
--

INSERT INTO `artiste` (`id`, `pseudo`, `biographie`, `id_type_musique`, `status`, `easy_name`, `id_photo`, `id_banner`, `iframe`, `facebook`, `twitter`, `youtube`, `instagram`, `soundcloud`, `pays`, `commentaires`, `archive`, `fans`) VALUES
(16, 'Tchami', 'Tchami, de son vrai nom Martin Bresso, est un disc jockey et producteur de musique franÃ§ais installÃ© aux Etats-Unis.\r\n\r\nIl se fait remarquer lors de la sortie de son remix du titre Go Deep de Janet Jackson. Depuis, il a remixÃ© divers titres d''artistes comme Martin Garrix & Jay Hardway, AlunaGeorge, Jack Ãœ ou encore Mercer. Son titre Promesses s''est placÃ© Ã  la 7e position des charts britanniques.\r\n\r\nLe 12 mars 2015, il sort son nouveau single After Life avec la participation vocale de Stacy Barthe, issu de son EP homonyme. Dans le classement Top 100 DJ, Ã©tabli parDJ Mag, de 2015, il est classÃ© Ã  62e place.', 1, 1, 'tchami', 31, 32, '<iframe width="100%" height="450" scrolling="no" frameborder="no" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/users/34994724&color=ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false"></iframe>', 'https://www.facebook.com/iamTchami/?fref=ts', 'https://twitter.com/iamtchami', 'https://www.youtube.com/channel/UCRgn1KPoJrvRqLxj0t0JQgA', 'https://www.instagram.com/tchami/', 'https://soundcloud.com/iamtchami', 'France', ',7,', 0, ',72,'),
(17, 'Bullet For My Valentine', 'Quod si rectum statuerimus vel concedere amicis, quidquid velint, vel impetrare ab iis, quidquid velimus, perfecta quidem sapientia si simus, nihil habeat res vitii; sed loquimur de iis amicis qui ante oculos sunt, quos vidimus aut de quibus memoriam accepimus, quos novit vita communis. Ex hoc numero nobis exempla sumenda sunt, et eorum quidem maxime qui ad sapientiam proxime accedunt.\r\n\r\nCognitis enim pilatorum caesorumque funeribus nemo deinde ad has stationes appulit navem, sed ut Scironis praerupta letalia declinantes litoribus Cypriis contigui navigabant, quae Isauriae scopulis sunt controversa.\r\n\r\nPost hoc impie perpetratum quod in aliis quoque iam timebatur, tamquam licentia crudelitati indulta per suspicionum nebulas aestimati quidam noxii damnabantur. quorum pars necati, alii puniti bonorum multatione actique laribus suis extorres nullo sibi relicto praeter querelas et lacrimas, stipe conlaticia victitabant, et civili iustoque imperio ad voluntatem converso cruentam, claudebantur opulentae domus et clarae.', 3, 1, 'bullet-for-my-valentine', 33, 34, '<iframe src="https://embed.spotify.com/?uri=spotify%3Aartist%3A7iWiAD5LLKyiox2grgfmUT" width="100%" height="380" frameborder="0" allowtransparency="true"></iframe>', '', '', '', '', '', 'US', NULL, 0, ',87,'),
(18, 'Forgot Shift', 'Ciliciam vero, quae Cydno amni exultat, Tarsus nobilitat, urbs perspicabilis hanc condidisse Perseus memoratur, Iovis filius et Danaes, vel certe ex Aethiopia profectus Sandan quidam nomine vir opulentus et nobilis et Anazarbus auctoris vocabulum referens, et Mopsuestia vatis illius domicilium Mopsi, quem a conmilitio Argonautarum cum aureo vellere direpto redirent, errore abstractum delatumque ad Africae litus mors repentina consumpsit, et ex eo cespite punico tecti manes eius heroici dolorum varietati medentur plerumque sospitales.\r\n\r\nHarum trium sententiarum nulli prorsus assentior. Nec enim illa prima vera est, ut, quem ad modum in se quisque sit, sic in amicum sit animatus. Quam multa enim, quae nostra causa numquam faceremus, facimus causa amicorum! precari ab indigno, supplicare, tum acerbius in aliquem invehi insectarique vehementius, quae in nostris rebus non satis honeste, in amicorum fiunt honestissime; multaeque res sunt in quibus de suis commodis viri boni multa detrahunt detrahique patiuntur, ut iis amici potius quam ipsi fruantur.\r\n\r\nNovo denique perniciosoque exemplo idem Gallus ausus est inire flagitium grave, quod Romae cum ultimo dedecore temptasse aliquando dicitur Gallienus, et adhibitis paucis clam ferro succinctis vesperi per tabernas palabatur et conpita quaeritando Graeco sermone, cuius erat inpendio gnarus, quid de Caesare quisque sentiret. et haec confidenter agebat in urbe ubi pernoctantium luminum claritudo dierum solet imitari fulgorem. postremo agnitus saepe iamque, si prodisset, conspicuum se fore contemplans, non nisi luce palam egrediens ad agenda quae putabat seria cernebatur. et haec quidem medullitus multis gementibus agebantur.', 2, 1, 'forgot-shift', 35, 36, '', '', '', '', '', '', 'France', NULL, 1, NULL),
(19, 'Skrillex', 'Ut enim quisque sibi plurimum confidit et ut quisque maxime virtute et sapientia sic munitus est, ut nullo egeat suaque omnia in se ipso posita iudicet, ita in amicitiis expetendis colendisque maxime excellit. Quid enim? Africanus indigens mei? Minime hercule! ac ne ego quidem illius; sed ego admiratione quadam virtutis eius, ille vicissim opinione fortasse non nulla, quam de meis moribus habebat, me dilexit; auxit benevolentiam consuetudo. Sed quamquam utilitates multae et magnae consecutae sunt, non sunt tamen ab earum spe causae diligendi profectae.\r\n\r\nAlii summum decus in carruchis solito altioribus et ambitioso vestium cultu ponentes sudant sub ponderibus lacernarum, quas in collis insertas cingulis ipsis adnectunt nimia subtegminum tenuitate perflabiles, expandentes eas crebris agitationibus maximeque sinistra, ut longiores fimbriae tunicaeque perspicue luceant varietate liciorum effigiatae in species animalium multiformes.\r\n\r\nTu autem, Fanni, quod mihi tantum tribui dicis quantum ego nec adgnosco nec postulo, facis amice; sed, ut mihi videris, non recte iudicas de Catone; aut enim nemo, quod quidem magis credo, aut si quisquam, ille sapiens fuit. Quo modo, ut alia omittam, mortem filii tulit! memineram Paulum, videram Galum, sed hi in pueris, Cato in perfecto et spectato viro.', 1, 1, 'skrillex', 81, 82, '', '', '', '', '', '', 'US', NULL, 1, NULL),
(20, 'Silverstein', 'Biographie.', 3, 1, 'silverstein', 83, 84, '', 'https://www.facebook.com/silversteinmusic/?fref=ts', 'https://twitter.com/silverstein?lang=fr', '', '', '', 'CA', NULL, 1, NULL),
(21, 'geminhya', '', 1, 1, 'geminhya', 16, 86, '<iframe width="100%" height="450" scrolling="no" frameborder="no" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/playlists/168554128&color=ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false"></iframe>', 'https://www.facebook.com/geminhyamusic/', 'https://twitter.com/NoemieKerroux', 'https://www.youtube.com/user/geminhya/', 'https://www.instagram.com/geminhya/', 'https://soundcloud.com/geminhya', 'France', NULL, 1, NULL),
(22, 'Bring Me The Horizon', '<iframe id="iframe_bmth" src="https://embed.spotify.com/?uri=spotify%3Aalbum%3A0hMPPqOR9n6XSia99Rw6t7" width="100%" height="380" frameborder="0" allowtransparency="true"></iframe>', 3, 1, 'bring-me-the-horizon', 87, 88, '', '', '', '', '', '', 'France', NULL, 1, ',74,86,'),
(23, 'Neck Deep', '', 3, 1, 'neck-deep', 89, 1, '', '', '', '', '', '', NULL, NULL, 1, NULL),
(24, 'Nothing More', '', 3, 1, 'nothing-more', 90, 91, '', '', '', '', '', '', NULL, NULL, 1, NULL),
(27, 'Ultra Vomit', '', 3, 1, 'ultra-vomit', 94, 95, '', '', '', '', '', '', 'France', NULL, 1, NULL),
(28, 'David Guetta', '', 1, 1, 'david-guetta', 98, 99, '<iframe width="100%" height="450" scrolling="no" frameborder="no" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/users/4904351&color=ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false"></iframe>', '', '', 'https://www.youtube.com/channel/UCh-4c1ZoBPNP1C8c-7iVvUQ', '', '', 'France', NULL, 0, NULL),
(29, 'Daft Punk', 'Daft Punk est un groupe franÃ§ais de musique Ã©lectronique originaire de Paris, composÃ© de Thomas Bangalter et Guy-Manuel de Homem-Christo. Actif depuis 1993, le groupe participe Ã  la crÃ©ation et Ã  la dÃ©mocratisation du mouvement de musique Ã©lectronique baptisÃ© french touch. Ils font partie des artistes franÃ§ais s''exportant le mieux Ã  l''Ã©tranger, et ce depuis la sortie de leur premier vÃ©ritable succÃ¨s, Da Funk en 1996. Une des originalitÃ©s des Daft Punk est la culture de leur notoriÃ©tÃ© d''artistes indÃ©pendants et sans visage, portant toujours en public des casques et des costumes. Ils s''inspirent du film Phantom of the Paradise de Brian De Palma.\r\n\r\nDaft Punk sort son premier album intitulÃ© Homework en 1997. Leur second album, commercialisÃ© en 2001, s''intitule Discovery. Il comprend des succÃ¨s tels que One More Time, Digital Love et Harder, Better, Faster, Stronger. Le duo a Ã©galement composÃ© la bande son du film Tron : L''HÃ©ritage. En 2013, Daft Punk quitte EMI Records pour signer avec le label Columbia Records et sortir un album intitulÃ© Random Access Memories qui remporte un important succÃ¨s international et cinq Grammy Awards dont celui du meilleur album de l''annÃ©e.', 1, 1, 'daft-punk', 100, 101, '<iframe src="https://embed.spotify.com/?uri=spotify%3Aartist%3A4tZwfgrHOc3mvqYlEYSvVi" width="100%" height="380" frameborder="0" allowtransparency="true"></iframe>', 'https://www.google.fr/url?sa=t&rct=j&q=&esrc=s&source=web&cd=2&cad=rja&uact=8&ved=0ahUKEwjZqNPCh7zMAhVrJMAKHY0EDRcQFggiMAE&url=https%3A%2F%2Fwww.facebook.com%2Fdaftpunk%2F&usg=AFQjCNF_tKBmcqvm8KyaI55Bf91BXlFLTw&sig2=rGBB45Sr6BCVaC2OvvZlOA', 'https://twitter.com/DaftPunkNews', 'https://www.youtube.com/channel/UCKHFvArwRwQU2VbRjMpaVGw', '', '', 'France', NULL, 1, NULL),
(30, 'Kendji Girac', '', 2, 1, 'kendji-girac', 102, 103, '', '', '', 'https://www.youtube.com/channel/UCNpFcllBHQk9wepKzMtouSQ', '', '', 'France', ',10,', 1, ',72,'),
(33, 'Phoenix', '', 2, 1, 'phoenix', 104, 105, '', '', '', '', '', '', 'France', NULL, 1, NULL),
(34, 'Fréro Delavega', 'FrÃ©ro Delavega est un groupe franÃ§ais originaire de Gironde, composÃ© de deux musiciens-chanteurs : JÃ©rÃ©my FrÃ©rot et Florian Delavega. Ils se sont notamment fait connaÃ®tre grÃ¢ce Ã  la saison 3 de The Voice, et sur Internet. Ils ont sorti leur premier album en 2014.\r\n\r\nVoisins Ã  Gujan-Mestras sur le bassin d''Arcachon, ils deviennent amis alors qu''ils sont tous les deux sauveteurs en mer (NS pour la SNSM). Ils faisaient des Ã©tudes de STAPS dans le but de devenir professeurs d''Ã©ducation physique et sportive. Ils commencent Ã  jouer ensemble et publient des vidÃ©os sur Youtube, d''abord chacun de son cÃ´tÃ© puis ensemble. En 2013, leurs vidÃ©os commencent Ã  faire le buzz. Ils sont contactÃ©s par une maison de disques (Capitol Music France) et sortent un EP de reprises. Ils signent leur premier album sous le label Capitol Music France de la maison de disque Universal1. En 2015, durant les NRJ Music Awards 2015, ils obtiennent la rÃ©compense du meilleur groupe/duo franÃ§ais de l''annÃ©e2.\r\n\r\nLe premier album Ã©ponyme de FrÃ©ro Delavega est un succÃ¨s commercial avec 300.000 copies Ã©coulÃ©es, un album marquÃ© par les singles Â« Mon petit pays Â» et Â« Le chant des sirÃ¨nes Â». Le second album de FrÃ©ro Delavega, Des ombres et des lumiÃ¨res, est sortie fin 2015 avec le titre Â« Ton visage Â» pour en ouvrir l''exploitation.\r\n\r\nAprÃ¨s Â« Ton visage Â», le duo propose au public le titre Â« Autour de moi Â» comme nouveau single bien que le titre Â« Le cÅ“ur Ã©lÃ©phant Â» soit le plus streamÃ© du dernier album3.', 2, 1, 'frero-delavega', 106, 107, '', 'https://www.facebook.com/FreroDelavega/?fref=ts', 'https://twitter.com/FreroDelavega', 'https://www.youtube.com/channel/UC4t0FAVZEnf9soS-6ILLpPQ', '', '', 'France', NULL, 1, NULL),
(35, 'L.E.J', 'Le groupe L.E.J (abrÃ©viation des premiÃ¨res lettres des prÃ©noms de Lucie, Ã‰lisa et Juliette), Ã©galement orthographiÃ© Elijay, est un trio musical chant, percussion et violoncelle. Ces trois Ã©tudiantes franÃ§aises originaires de Saint-Denis connaissent un succÃ¨s inattendu en aoÃ»t 20152 grÃ¢ce Ã  leur vidÃ©o Summer 2015, tournÃ©e sur la plage de Lacanau3 et postÃ©e sur YouTube, dans laquelle elles reprennent onze extraits de tubes planÃ©taires (tels que Lean On de Major Lazer feat. MÃ˜ ou encore Bitch Better Have My Money de Rihanna). Leur titre atteint la 1re place des ventes de singles en France la semaine du 25 septembre 20154.\r\n\r\nUn album devrait sortir vers la fin de 2016, ce ne serait cette fois-ci pas des reprises mais des chansons composÃ©es par elles-mÃªmes5.', 2, 1, 'l.e.j', 108, 109, '', 'https://www.google.fr/url?sa=t&rct=j&q=&esrc=s&source=web&cd=1&cad=rja&uact=8&ved=0ahUKEwjq--belLzMAhUHCMAKHcEZDtMQFgi5ATAA&url=https%3A%2F%2Fwww.facebook.com%2FLucieElisaJuliette.LEJ%2F&usg=AFQjCNHRnpgvnu_tHbPlsZPYtWos8gNn1Q&sig2=BHIUyb-u7hxq8Ahpd_hU1g&b', '', 'https://www.youtube.com/channel/UCXh4vumtlmV4SaT8_cM_0eg', '', '', 'France', NULL, 1, NULL),
(36, 'Louane', 'Anne Peichert, dite Louane Emera ou simplement Louane2, est une chanteuse et actrice franÃ§aise, nÃ©e le 26 novembre 1996 Ã  HÃ©nin-Beaumont.\r\n\r\nElle se fait remarquer en 2013 dans le tÃ©lÃ©-crochet The Voice, la plus belle voix, puis elle obtient une plus grande notoriÃ©tÃ© en 2014 grÃ¢ce Ã  son premier rÃ´le dans le film La Famille BÃ©lier, qui lui vaut notamment le CÃ©sar du meilleur espoir fÃ©minin en 2015.\r\n\r\nSon premier album, Chambre 12, sorti le 2 mars 2015, est l''album le plus vendu de l''annÃ©e en France et il obtient la Victoire de l''album rÃ©vÃ©lation de l''annÃ©e en fÃ©vrier 2016.', 2, 1, 'louane', 110, 111, '<iframe width="560" height="315" src="https://www.youtube.com/embed/I_dbhHU1CGA" frameborder="0" allowfullscreen></iframe>', 'https://www.facebook.com/louane/?fref=ts', 'https://twitter.com/louane', 'https://www.youtube.com/user/LouaneOfficielVEVO', 'https://www.instagram.com/louuuuuane/', '', 'France', NULL, 1, NULL),
(37, 'Stromae', '', 2, 1, 'stromae', 112, 113, '', 'https://www.facebook.com/stromae/', '', 'https://www.youtube.com/channel/UC0Jtyp9fC2lW9LaW-sDpCkw', '', '', 'France', NULL, 0, ','),
(38, 'Kyo', 'Kyo est un groupe de rock franÃ§ais formÃ© en 1994 qui a connu le succÃ¨s avec l''album Le Chemin.\r\n\r\nLe groupe a fait son retour en 2014 avec l''album L''Ã©quilibre.\r\n\r\nC''est en 1994, dans le collÃ¨ge Notre-Dame Â« Les Oiseaux Â» de Verneuil-sur-Seine (Yvelines), que les deux frÃ¨res Fabien et Florian Dubos rencontrent Nicolas Chassagne et BenoÃ®t Poher. Ils se dÃ©couvrent une passion commune pour Nirvana, Soundgarden, Radiohead, Pearl Jam et l''univers graphique des mangas.\r\n\r\nLes quatre garÃ§ons participent alors Ã  des concerts d''Ã©coles, de kermesses et se produisent dans des salles de la rÃ©gion parisienne, sans rÃ©el succÃ¨s.\r\n\r\nEn 1997, lors d''un tremplin rock oÃ¹ ils mÃªlent formules Ã©lectriques et acoustiques, ils rencontrent leur futur manager : Yves Michel Akle, qui leur obtient un premier contrat avec les Ã©ditions Sony. Pour anecdote, le groupe se rendra dans les bureaux de Sony pour jouer un de leurs titres en live afin de se faire signer. BenoÃ®t (chanteur), tÃªte en l''air, oubliera mÃªme son contrat sur un des bureaux de la maison de disques. Par la suite, ils font les premiÃ¨res parties de David Hallyday et jouent en playback dans un de ses clips, ce qui leur vaut une premiÃ¨re reconnaissance. Ils Ã©crivent Ã©galement leur premiÃ¨re chanson, Il est temps, qui n''est cependant pas commercialisÃ©e.\r\n\r\nIls signent ensuite un contrat avec le label Jive/Zomba France. En 2000, Kyo sort son premier album, homonyme, trÃ¨s pop, qui passe cependant relativement inaperÃ§u (40 000 exemplaires vendus).', 2, 1, 'kyo', 114, 115, '', 'https://www.google.fr/url?sa=t&rct=j&q=&esrc=s&source=web&cd=2&cad=rja&uact=8&ved=0ahUKEwi-ppD8nLzMAhUqBMAKHWxFB0kQFggoMAE&url=https%3A%2F%2Fwww.facebook.com%2FofficielKyo&usg=AFQjCNHNcXsvNkmRvm4RFS_m5o51aZAPSA&sig2=e9gp2LezGuGd2LPU1o16Eg', '', 'https://www.youtube.com/channel/UCAy8SvSkkOYI3yQgNFQqH2w', '', '', 'France', ',5,', 1, NULL),
(40, 'MUSE', '', 3, 1, 'muse', 117, 118, '<iframe width="100%" height="640" src="https://www.youtube.com/embed/UqLRqzTp6Rk" frameborder="0" allowfullscreen></iframe>\r\n<iframe src="https://embed.spotify.com/?uri=spotify%3Aartist%3A12Chz98pHFMPJEknJQMWvI" width="100%" height="380" frameborder="0" allowtransparency="true"></iframe>', '', '', '', '', '', 'Ã‰tats-Unis', NULL, 1, NULL),
(42, 'Radiohead', '', 3, 1, 'radiohead', 165, 166, '', '', '', '', '', '', 'Ã‰tats-Unis', NULL, 1, ',79,'),
(43, 'DJ Snake', 'De son vrai nom William Grigahcine, DJ Snake est un DJ et producteur franÃ§ais de musique Ã©lectronique. Il a notamment travaillÃ© avec Lady Gaga et sâ€™est fait connaÃ®tre du grand public par le clip  Â« Turn Down For What Â», sorti en 2013. \r\n\r\nEn 2015, il rÃ©cidive avec Â« Lean On Â», qui devient le tube de lâ€™Ã©tÃ©. Sur sa lancÃ©e, DJ Snake livre ensuite Â« Middle Â» suivi de Â« Talk Â» en featuring avec George Maple.\r\n\r\nBiographie\r\n\r\nDJ Snake commence Ã  mixer Ã  l''Ã¢ge de 14 ans, et se met Ã  la production aux alentours de 20 ans. Il joue notamment aux Bains Douches au dÃ©but de sa carriÃ¨re, oÃ¹ il fait la rencontre de son manager, Steve Goncalves, qui l''encourage Ã  crÃ©er sa propre musique.\r\n\r\n\r\n\r\nIl travaille avec les plus grands ! \r\n\r\nTrÃ¨s rapidement, il se fait remarquer. AprÃ¨s avoir Ã©tÃ© nommÃ© aux Grammy Awards en 2012 pour sa participation en tant que producteur Ã  lâ€™album Â« Born This Way Â» de Lady Gaga, DJ Snake est invitÃ© par la superstar Diplo Ã  mixer dans son Ã©mission en Angleterre.\r\n\r\nEn 2013, il continue Ã  travailler avec Lady Gaga sur son album Â« Artpop Â», signant les titres Â«  Applause Â», Â« With White Shadow Â», et Â« Do What U Want Â».\r\n\r\nDJ Snake est aussi connu pour ses talentueux remix. Il sâ€™attaque notamment Ã  des hits de Kanye West, Major Lazer ou encore Duck Sauce !\r\n\r\n\r\n\r\nLa terre entiÃ¨re fan de Â« Turn Down for What Â» ! \r\n\r\nEn dÃ©cembre 2013 DJ Snake dÃ©barque avec Â« Turn Down For What Â», en duo avec Lil Jon. Le morceau qui fait fureur sur Internet et sorti chez Columbia Records, a Ã©tÃ© choisi pour la publicitÃ© Sol Republic. Il entre directement dans le top 10 des charts US au mois de dÃ©cembre. Le titre est par ailleurs certifiÃ© disque de platine en mars 2014.\r\n\r\nLe clip est aussi nommÃ© quatre fois aux Videos Music Awards !\r\n  \r\nFort de ce succÃ¨s, DJ Snake prend son temps et un an aprÃ¨s Â« Turn Down For That Â», il sort en fÃ©vrier 2014, son single Â« Get Low Â», composÃ© avec Dillon Francis et Diplo.\r\n\r\nA la mÃªme pÃ©riode, il revient au mix en sâ€™attaquant cette fois Ã  Â« You Know You Like It Â» d''Aluna George. Câ€™est un carton, le morceau se classe mÃªme dans 15 premiers du Billboard Hot 100.\r\n\r\n\r\n\r\nÂ« Lean On Â», le carton mondial ! \r\n\r\nIl faudra attendre un an pour que DJ Snake sorte Â« Lean On Â», un de ses plus grands succÃ¨s. Le hit, sorti en mars 2015 en duo avec Major Lazer, est un immense succÃ¨s partout dans le monde. Le 19 avril, il bat mÃªme le record de lectures en streaming en France avec prÃ¨s de 2 millions dâ€™Ã©coutes. Le clip, inspirÃ© par lâ€™univers de Bollywood, a Ã©tÃ© visionnÃ© plus de 505 millions de fois sur YouTube. \r\n\r\nIl se classe numÃ©ro un en France, en Australie, au Danemark, mais aussi aux Pays-Bas et au Royaume-Uni, entre autres. \r\n\r\nDJ Snake sâ€™embarque ensuite pour des concerts Ã  travers le monde, avec sur sa route les Etats-Unis, lâ€™Australie et la Nouvelle-ZÃ©lande. \r\n\r\n\r\n\r\nDJ Snake enchaine\r\n\r\nPropulsÃ© par le succÃ¨s de Â« Lean On Â», DJ Snake livre au mois dâ€™octobre un autre gros morceau intitulÃ©e Â« Middle Â». Sur ce morceau, on retrouve notamment la voix de Bipolar Sunshine.\r\n\r\nLe clip se fait un peu attendre, mais il arrive finalement sur les plateformes internet en mars 2016. Le morceau arrive Ã  se classer 12e du top singles en France !\r\n\r\nAprÃ¨s avoir mis le feu aux rÃ©seaux sociaux en mai 2016 en postant une photo de lui en studio avec Skrillex, DJ Snake rÃ©gale ses fans le mois suivant avec un nouveau hit : Â« Talk Â», en featuring avec George Maple.', 1, 1, 'dj-snake', 171, 1, '<iframe width="100%" height="450" scrolling="no" frameborder="no" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/users/670089&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&visual=true"></iframe>', 'https://www.facebook.com/djsnake.fr/', 'https://twitter.com/djsnake', 'https://www.youtube.com/user/DJSnakeVEVO', 'https://www.instagram.com/djsnake/', 'https://soundcloud.com/djsnake', 'France', NULL, 0, ',72,74,'),
(44, 'Songhoy Blues', 'Produced by Nick Zinner (Yeah Yeah Yeahs) and Marc-Antoine Moreau (Amadou & Mariam, Kâ€šnaan), â€œMUSIC IN EXILEâ€ marks the arrival of a powerful and truly unique new band. Though their music bears elements of contemporary rock and hip hop, at its heart is Songhoy Bluesâ€š deep attachment to the homegrown songs and dances of Maliâ€šs Songhoy people as well as such iconic West African guitar heroes as Baba Salah and Ali Farka TourÃ©. Songs like â€œIrgandaâ€ and â€œAl Hassidi Tereiâ€ see Songhoy Blues blending the traditional and the modern, the homegrown and the foreign, the youthful and the ancient.', 4, 1, 'songhoy-blues', 177, 178, '<iframe width="100%" height="450" scrolling="no" frameborder="no" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/users/131958477&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&visual=true"></iframe>\r\n\r\n<iframe width="560" height="315" src="https://www.youtube.com/embed/O4FqZg12g7g" frameborder="0" allowfullscreen></iframe>', '', '', 'https://www.youtube.com/channel/UCnBlWQ8pW_udbi3bjxld3Qg', '', 'https://soundcloud.com/songhoyblues', 'Mali', NULL, 1, NULL),
(45, 'Diplo', 'Thomas Wesley Pentz dit Diplo, nÃ© le 10 novembre 1978 Ã  Tupelo (Ã‰tats-Unis), est un DJ, producteur, auteur et rappeur amÃ©ricain.\r\n\r\nIl est le fondateur du label discographique Mad Decent, et cofondateur d''une organisation Ã  but non-lucratif appelÃ©e Heaps Decent. En 2013, son EP Revolution atteint la 68e place du classement Billboard 200. Il est Ã©galement membre du groupe Jack Ãœ aux cÃ´tÃ©s de Skrillex ; les dÃ©buts du groupe se dÃ©roulent lors de la Mad Decent Block Party de San Diego, le 15 septembre 20131.\r\n\r\nÃ€ son gain de popularitÃ©, Diplo travaille aux cÃ´tÃ©s de la rappeuse britannique M.I.A., crÃ©ditÃ© pour avoir lancÃ© sa carriÃ¨re musicale. Par la suite, lui et le producteur Switch lancent un projet dancehall jamaÃ¯cain et une sÃ©rie d''animation intitulÃ©e Major Lazer2. Depuis, Diplo produit et compose aux cÃ´tÃ©s d''artistes pop tels que Madonna, Britney Spears, BeyoncÃ©, No Doubt, Justin Bieber, Usher, Snoop Dogg, Chris Brown et G-Dragon3,4,5,6,7. Son nom, une abrÃ©viation du mot Diplodocus, vient de la fascination qu''il avait, Ã©tant enfant, pour les dinosaures8.', 1, 1, 'diplo', 179, 1, '<iframe width="100%" height="450" scrolling="no" frameborder="no" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/users/16730&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&visual=true"></iframe>', 'https://www.facebook.com/diplo/', '', '', '', 'https://soundcloud.com/diplo', 'France', ',11,', 1, NULL),
(46, 'Diplo', 'Thomas Wesley Pentz dit Diplo, nÃ© le 10 novembre 1978 Ã  Tupelo (Ã‰tats-Unis), est un DJ, producteur, auteur et rappeur amÃ©ricain.\r\n\r\nIl est le fondateur du label discographique Mad Decent, et cofondateur d''une organisation Ã  but non-lucratif appelÃ©e Heaps Decent. En 2013, son EP Revolution atteint la 68e place du classement Billboard 200. Il est Ã©galement membre du groupe Jack Ãœ aux cÃ´tÃ©s de Skrillex ; les dÃ©buts du groupe se dÃ©roulent lors de la Mad Decent Block Party de San Diego, le 15 septembre 20131.\r\n\r\nÃ€ son gain de popularitÃ©, Diplo travaille aux cÃ´tÃ©s de la rappeuse britannique M.I.A., crÃ©ditÃ© pour avoir lancÃ© sa carriÃ¨re musicale. Par la suite, lui et le producteur Switch lancent un projet dancehall jamaÃ¯cain et une sÃ©rie d''animation intitulÃ©e Major Lazer2. Depuis, Diplo produit et compose aux cÃ´tÃ©s d''artistes pop tels que Madonna, Britney Spears, BeyoncÃ©, No Doubt, Justin Bieber, Usher, Snoop Dogg, Chris Brown et G-Dragon3,4,5,6,7. Son nom, une abrÃ©viation du mot Diplodocus, vient de la fascination qu''il avait, Ã©tant enfant, pour les dinosaures8.', 1, 1, 'diplo', 179, 181, '<iframe width="100%" height="450" scrolling="no" frameborder="no" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/users/16730&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&visual=true"></iframe>', 'https://www.facebook.com/diplo/', '', '', '', 'https://soundcloud.com/diplo', 'France', NULL, 1, NULL),
(47, 'Diplo', 'Thomas Wesley Pentz dit Diplo, nÃ© le 10 novembre 1978 Ã  Tupelo (Ã‰tats-Unis), est un DJ, producteur, auteur et rappeur amÃ©ricain.\r\n\r\nIl est le fondateur du label discographique Mad Decent, et cofondateur d''une organisation Ã  but non-lucratif appelÃ©e Heaps Decent. En 2013, son EP Revolution atteint la 68e place du classement Billboard 200. Il est Ã©galement membre du groupe Jack Ãœ aux cÃ´tÃ©s de Skrillex ; les dÃ©buts du groupe se dÃ©roulent lors de la Mad Decent Block Party de San Diego, le 15 septembre 20131.\r\n\r\nÃ€ son gain de popularitÃ©, Diplo travaille aux cÃ´tÃ©s de la rappeuse britannique M.I.A., crÃ©ditÃ© pour avoir lancÃ© sa carriÃ¨re musicale. Par la suite, lui et le producteur Switch lancent un projet dancehall jamaÃ¯cain et une sÃ©rie d''animation intitulÃ©e Major Lazer2. Depuis, Diplo produit et compose aux cÃ´tÃ©s d''artistes pop tels que Madonna, Britney Spears, BeyoncÃ©, No Doubt, Justin Bieber, Usher, Snoop Dogg, Chris Brown et G-Dragon3,4,5,6,7. Son nom, une abrÃ©viation du mot Diplodocus, vient de la fascination qu''il avait, Ã©tant enfant, pour les dinosaures8.', 1, 1, 'diplo', 179, 181, '<iframe width="100%" height="450" scrolling="no" frameborder="no" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/users/16730&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&visual=true"></iframe>', 'https://www.facebook.com/diplo/', '', '', '', 'https://soundcloud.com/diplo', 'France', NULL, 1, NULL),
(48, 'Martin Garrix', 'Martin Garrix, de son vrai nom Martijn Garritsen, est nÃ© le 14 mai 1996 Ã  Amsterdam aux Pays Bas. DotÃ© dâ€™un vÃ©ritable don pour les platines, il est Ã¢gÃ© dâ€™Ã  peine 16 ans lorsquâ€™il sort son premier titre Â« Keygen Â» chez Spinninâ€™ Records. Il sâ€™agit dâ€™un morceau Ã©lectro Ã©purÃ© aux beats accrocheurs. Câ€™est ensuite avec Julian Jordan quâ€™il propose le titre Â« BFAM Â» en octobre 2012.\r\n\r\nComme tous les jeunes DJs, il remixe des morceaux signÃ©s par de grands artistes. VÃ©ritable consÃ©cration, câ€™est son remix de Â« Your Body Â» de Christina Aguilera qui est choisi pour figurer sur la version Deluxe de lâ€™album Â« Lotus Â» de la chanteuse. \r\n\r\nEn 2013, Martin Garrix continue de publier de nouveaux titres, dont les trÃ¨s remarquÃ©s Â« Torrent Â» sorti sur le label nÃ©erlandais Musical Freedom ou encore Â« Error 404 Â».\r\n\r\nMartin Garrix profite de sa notoriÃ©tÃ© grandissante pour jouer dans les plus grands clubs et les festivals Ã©lectro europÃ©ens, en France, en Italie, Ã  Chypre, en SuÃ¨de ou en Belgique dans le mythique festival Tomorrowland, oÃ¹ il mixe devant 100.000 personnes ! La vague Martin Garrix nâ€™est pas prÃªt de retomber !', 1, 1, 'martin-garrix', 186, 187, '<iframe width="100%" height="450" scrolling="no" frameborder="no" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/users/2068138&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&visual=true"></iframe>', '', '', '', '', 'https://soundcloud.com/martingarrix', 'Ã‰tats-Unis', ',18,', 1, ',72,22,'),
(49, 'The Devil Wears Prada', '', 3, 1, 'the-devil-wears-prada', 206, 207, '', '', '', '', '', '', 'Ã‰tats-Unis', NULL, 1, NULL),
(50, 'Mondragora', 'FormeÌ dans un Conservatoire de musique classique au Mexique, Neto alias Mandragora sâ€™impose aujourdâ€™hui comme acteur majeur de la sceÌ€ne trance progressive. Multi- instrumentiste dans plusieurs groupes de meÌtal, il apporte dans sa musique des influences diverses et teÌmoigne dâ€™une vraie maiÌ‚trise dans lâ€™art de la composition de morceaux. VeÌritable homme de sceÌ€ne, Mandragora transcende les foules, avec une signature futureprog largement reconnaissable et toujours surprenante.', 4, 1, 'mondragora', 221, 222, 'FormeÃŒÂ dans un Conservatoire de musique classique au Mexique, Neto alias Mandragora sÃ¢Â€Â™impose aujourdÃ¢Â€Â™hui comme acteur majeur de la sceÃŒÂ€ne trance progressive. Multi- instrumentiste dans plusieurs groupes de meÃŒÂtal, il apporte dans sa musique des influences diverses et teÃŒÂmoigne dÃ¢Â€Â™une vraie maiÃŒÂ‚trise dans lÃ¢Â€Â™art de la composition de morceaux. VeÃŒÂritable homme de sceÃŒÂ€ne, Mandragora transcende les foules, avec une signature futureprog largement reconnaissable et toujours surprenante.', 'https://www.facebook.com/mandragoralive/?fref=ts', 'https://www.facebook.com/mandragoralive/?fref=ts', 'https://www.facebook.com/mandragoralive/?fref=ts', 'https://www.facebook.com/mandragoralive/?fref=ts', 'https://www.facebook.com/mandragoralive/?fref=ts', 'Mexique', NULL, 1, ',74,'),
(51, 'Slipknot', '', 3, 1, 'slipknot', 225, 1, '', '', '', '', '', '', 'Ã‰tats-Unis', NULL, 1, NULL),
(52, 'Mandragora', 'FormeÌ dans un Conservatoire de musique classique au Mexique, Neto alias Mandragora sâ€™impose aujourdâ€™hui comme acteur majeur de la sceÌ€ne trance progressive. Multi- instrumentiste dans plusieurs groupes de meÌtal, il apporte dans sa musique des influences diverses et teÌmoigne dâ€™une vraie maiÌ‚trise dans lâ€™art de la composition de morceaux. VeÌritable homme de sceÌ€ne, Mandragora transcende les foules, avec une signature futureprog largement reconnaissable et toujours surprenante.', 4, 1, 'mandragora', 221, 222, '<iframe width="100%" height="166" scrolling="no" frameborder="no" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/254618554&color=ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false"></iframe>', 'https://www.facebook.com/mandragoralive/?fref=ts', '', '', '', 'https://soundcloud.com/passport-official/mandragora', 'Mexique', NULL, 1, NULL),
(53, 'Disclosure', 'Guy Lawrence (nÃ© le 25 mai 1991) et Howard Lawrence (nÃ© le 11 mai 1994) sont des jumeaux originaires du Surrey, en Angleterre. DotÃ© d''un bagage musical certain, ils s''attellent Ã  constituer un duo orientÃ© vers la house et le style garage sous le nom de Disclosure en 2010. Un premier single, Â« Offline Dexterity Â», sort en aoÃ»t 2010 sur le label Moshi Moshi Records. En 2011, Disclosure sort ensuite l''EP autoproduit Carnival. Il faut attendre le dÃ©but d''annÃ©e 2012 et le simple couplÃ© Â« Tenderly / Flow Â» pour entendre le duo diffusÃ© pour la premiÃ¨re fois sur les ondes nationales.\r\n\r\nCe coup d''accÃ©lÃ©rateur permet Ã  Disclosure de se produire avec SBTRKT et Hot Chip, et de croiser la route de Jessie Ware. Le tandem rÃ©alise un remix de son tube Â« Running Â», qui devient l''un des titres indispensables de l''Ã©tÃ© 2012. La chanteuse va jusqu''Ã  se produire Ã  leurs cÃ´tÃ©s Ã  Ibiza et au festival Bestival sur l''Ã®le de Wight. Sorti en octobre 2012, le titre Â« Latch Â» avec Sam Smith se classe en troisiÃ¨me position des charts dance du Royaume-Uni et onziÃ¨me au classement gÃ©nÃ©ral. La France ne tarde pas Ã  adopter cette chanson aux saveurs garage et electro pop.\r\n\r\nLes frÃ¨res ne s''arrÃªtent pas en si bon chemin et atteignent le pallier supÃ©rieur avec le titre Â« White Noise Â», enregistrÃ© avec AlunaGeorge et sorti en fÃ©vrier 2013. La sortie au mois de juin du premier album de Disclosure, Settle, fait dÃ¨s lors l''effet d''un Ã©vÃ¨nement. Comprenant les participations de Sam Smith, Ed Macfarlane, Jamie Woon et London Grammar, il atteint le sommet des ventes outre-Manche. Le titre Â« You & Me Â», chantÃ© par Eliza Doolittle, se classe nÂ° 2 en France et bÃ©nÃ©ficie d''un remix de Flume qui relance son succÃ¨s. L''annÃ©e se termine sur une tournÃ©e des festivals (Coachella, Lollapalooza) et la crÃ©ation du label Method Records.\r\n\r\nDans la foulÃ©e d''une tournÃ©e mondiale, Disclosure se remet au travail en studio et prÃ©pare l''album Caracal sur lequel interviennent Sam Smith, Lorde, The Weeknd, Kwabs, Lion Babe, Miguel et Gregory Porter. Les trois premiers extraits, Â« Omen Â», Â« Holding On Â» et Â« Jaded Â», font l''objet d''une vidÃ©o rÃ©alisÃ©e en continu. Caracal apparaÃ®t Ã  la suite de deux autres titres, Â« Willing & Able Â» et Â« Hourglass Â», en septembre 2015.', 1, 1, 'disclosure', 233, 234, '<iframe width="100%" height="450" scrolling="no" frameborder="no" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/users/494163&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&visual=true"></iframe>', 'https://www.facebook.com/disclosureuk/', '', '', '', 'https://soundcloud.com/disclosuremusic', 'Royaume-Uni', NULL, 1, ',72,22,'),
(54, 'Diljit', '', 2, 1, 'diljit', 245, 246, '', '', '', '', '', '', 'Inde', NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `commentaire`
--

CREATE TABLE IF NOT EXISTS `commentaire` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contenu` text NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_element` int(11) NOT NULL,
  `type_element` int(11) NOT NULL,
  `date_comment` date NOT NULL,
  `valid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

-- --------------------------------------------------------

--
-- Structure de la table `evenement`
--

CREATE TABLE IF NOT EXISTS `evenement` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_type_evenement` int(5) NOT NULL,
  `libelle` text NOT NULL,
  `id_lieu` int(5) NOT NULL,
  `date_deb` date NOT NULL,
  `date_fin` date NOT NULL,
  `id_media` int(10) NOT NULL,
  `id_type_event` int(5) NOT NULL,
  `priorite` tinyint(1) NOT NULL,
  `easy_name` varchar(255) DEFAULT NULL,
  `informations` text,
  `link_buy` varchar(255) DEFAULT NULL,
  `link_more` varchar(255) DEFAULT NULL,
  `id_photo` int(11) DEFAULT NULL,
  `id_banner` int(11) DEFAULT NULL,
  `artistes` varchar(255) DEFAULT '',
  `participants` text,
  `archive` int(11) DEFAULT NULL,
  `id_contributeur` int(11) DEFAULT NULL,
  `to_valid` int(11) DEFAULT NULL,
  `commentaires` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Contenu de la table `evenement`
--

INSERT INTO `evenement` (`id`, `id_type_evenement`, `libelle`, `id_lieu`, `date_deb`, `date_fin`, `id_media`, `id_type_event`, `priorite`, `easy_name`, `informations`, `link_buy`, `link_more`, `id_photo`, `id_banner`, `artistes`, `participants`, `archive`, `id_contributeur`, `to_valid`, `commentaires`) VALUES
(11, 1, 'Ultra Music festival', 9, '2017-10-24', '2017-10-26', 0, 1, 0, 'ultra-music-festival', 'L''Ultra Music Festival (UMF), souvent simplement appelÃƒÂƒÃ‚Â© ÃƒÂ‚Ã‚Â« l''Ultra ÃƒÂ‚Ã‚Â», est un festival de musique ÃƒÂƒÃ‚Â©lectronique annuel en plein air organisÃƒÂƒÃ‚Â© chaque mois de mars ÃƒÂƒÃ‚Â  Miami, en Floride, aux ÃƒÂƒÃ‚Â‰tats-Unis. Le nom du festival, qui est fondÃƒÂƒÃ‚Â© en 1999 par Russell Faibisch et Alex Omes, s''inspire de l''album Ultra du groupe Depeche Mode1. La date de l''Ultra Music Festival coÃƒÂƒÃ‚Â¯ncide avec celle de la Winter Music Conference, ÃƒÂƒÃ‚Â©galement organisÃƒÂƒÃ‚Â©e ÃƒÂƒÃ‚Â  Miami. Il est considÃƒÂƒÃ‚Â©rÃƒÂƒÃ‚Â© comme l''un des meilleurs ÃƒÂƒÃ‚Â©vÃƒÂƒÃ‚Â©nements musicaux ÃƒÂƒÃ‚Â©lectroniques du monde avec le Tomorrowland, l''Amsterdam Dance Event, l''Electric Daisy Carnival et le Coachella2.\r\n\r\nL''Ultra se dÃƒÂƒÃ‚Â©roule dans le Downtown Miami au Bayfront Park. Il s''agit d''un festival d''un jour entre 1999 et 2006, d''un festival de deux jours entre 2007 et 2010, puis d''un festival de trois jours entre 2011 et 2012. En 2012, les concerts attirent un total record de 155 000 festivaliers3. En 2013, pour la premiÃƒÂƒÃ‚Â¨re fois dans l''histoire du festival, l''UMF se dÃƒÂƒÃ‚Â©roule pendant deux week-ends consÃƒÂƒÃ‚Â©cutifs. En 2014, le festival est de nouveau organisÃƒÂƒÃ‚Â© en un week-end, du vendredi 28 mars au dimanche 30 mars.\r\n\r\nPhÃƒÂƒÃ‚Â©nomÃƒÂƒÃ‚Â¨ne devenu mondial, le festival s''exporte, se dÃƒÂƒÃ‚Â©localise et prend racine ÃƒÂƒÃ‚Â  2015, dans neuf villes du monde4.\r\n\r\nBien qu''ils partagent le mÃƒÂƒÃ‚Âªme nom, l''UMF n''est pas directement liÃƒÂƒÃ‚Â© ÃƒÂƒÃ‚Â  Ultra Records, un label discographique de musique ÃƒÂƒÃ‚Â©lectronique. Cependant, les deux entitÃƒÂƒÃ‚Â©s annoncent une ÃƒÂ‚Ã‚Â« alliance globale ÃƒÂ‚Ã‚Â» en aoÃƒÂƒÃ‚Â»t 2012, leur permettant ainsi de collaborer', 'https://ultramusicfestival.com/tickets/miami/', '', 141, 142, ',29,28,48,33,', ',74,', 0, NULL, NULL, NULL),
(12, 3, 'Vielles Charrues', 10, '2017-07-14', '2017-07-17', 0, 2, 0, 'vielles-charrues', 'Le festival des Vieilles Charrues (Gouel an Erer Kozh en breton) est un festival de musique accueillant des artistes de divers horizons. Ce festival annuel dure quatre jours et dÃƒÂƒÃ‚ÂƒÃƒÂ‚Ã‚Â©bute ÃƒÂƒÃ‚ÂƒÃƒÂ‚Ã‚Â  la mi-juillet dans la commune de Carhaix-Plouguer, dans le Centre FinistÃƒÂƒÃ‚ÂƒÃƒÂ‚Ã‚Â¨re, en Bretagne.\r\n\r\nIl a ÃƒÂƒÃ‚ÂƒÃƒÂ‚Ã‚Â©tÃƒÂƒÃ‚ÂƒÃƒÂ‚Ã‚Â© crÃƒÂƒÃ‚ÂƒÃƒÂ‚Ã‚Â©ÃƒÂƒÃ‚ÂƒÃƒÂ‚Ã‚Â© en 1992 dans la commune voisine de Landeleau et a pour but de mÃƒÂƒÃ‚ÂƒÃƒÂ‚Ã‚Â©langer les genres et ÃƒÂƒÃ‚ÂƒÃƒÂ‚Ã‚Âªtre accessible ÃƒÂƒÃ‚ÂƒÃƒÂ‚Ã‚Â  tout public. Il est rapidement devenu le plus grand festival de musique franÃƒÂƒÃ‚ÂƒÃƒÂ‚Ã‚Â§ais pour ce qui est de la frÃƒÂƒÃ‚ÂƒÃƒÂ‚Ã‚Â©quentation1, entraÃƒÂƒÃ‚ÂƒÃƒÂ‚Ã‚Â®nant un public attirÃƒÂƒÃ‚ÂƒÃƒÂ‚Ã‚Â© par l''affiche ÃƒÂƒÃ‚ÂƒÃƒÂ‚Ã‚Â©clectique et l''esprit festif et convivial. Le record de frÃƒÂƒÃ‚ÂƒÃƒÂ‚Ã‚Â©quentation date de 2011, avec 268 000 festivaliers sur quatre jours, dont 212 000 entrÃƒÂƒÃ‚ÂƒÃƒÂ‚Ã‚Â©es payantes, et environ 5 500 bÃƒÂƒÃ‚ÂƒÃƒÂ‚Ã‚Â©nÃƒÂƒÃ‚ÂƒÃƒÂ‚Ã‚Â©voles.\r\n\r\nLe festival est organisÃƒÂƒÃ‚ÂƒÃƒÂ‚Ã‚Â© par l''association Les Vieilles Charrues, structure qui reverse une partie des bÃƒÂƒÃ‚ÂƒÃƒÂ‚Ã‚Â©nÃƒÂƒÃ‚ÂƒÃƒÂ‚Ã‚Â©fices pour le dÃƒÂƒÃ‚ÂƒÃƒÂ‚Ã‚Â©veloppement du tissu associatif et culturel du centre Bretagne. Par exemple elle a participÃƒÂƒÃ‚ÂƒÃƒÂ‚Ã‚Â© au financement de l''espace Glenmor, ÃƒÂƒÃ‚ÂƒÃƒÂ‚Ã‚Â  l''installation du lycÃƒÂƒÃ‚ÂƒÃƒÂ‚Ã‚Â©e Diwan aprÃƒÂƒÃ‚ÂƒÃƒÂ‚Ã‚Â¨s rÃƒÂƒÃ‚ÂƒÃƒÂ‚Ã‚Â©novation du chÃƒÂƒÃ‚ÂƒÃƒÂ‚Ã‚Â¢teau de Kerampuil ; elle soutient ÃƒÂƒÃ‚ÂƒÃƒÂ‚Ã‚Â©galement l''association Les MÃƒÂƒÃ‚ÂƒÃƒÂ‚Ã‚Â©moires du Kreiz Breizh.\r\n\r\nElle a organisÃƒÂƒÃ‚ÂƒÃƒÂ‚Ã‚Â© aussi diverses manifestations : spectacle de NoÃƒÂƒÃ‚ÂƒÃƒÂ‚Ã‚Â«l, Les Charrues dans la rue, les Vieilles Charrues remettent le son. De 1996 ÃƒÂƒÃ‚ÂƒÃƒÂ‚Ã‚Â  2013, le dispositif Jeunes Charrues, tremplin destinÃƒÂƒÃ‚ÂƒÃƒÂ‚Ã‚Â© aux jeunes artistes du Grand Ouest, est organisÃƒÂƒÃ‚ÂƒÃƒÂ‚Ã‚Â© durant le festival : les dix groupes issus des sÃƒÂƒÃ‚ÂƒÃƒÂ‚Ã‚Â©lections se produisent sur une des scÃƒÂƒÃ‚ÂƒÃƒÂ‚Ã‚Â¨nes du festival. En 2014, le tremplin est remplacÃƒÂƒÃ‚ÂƒÃƒÂ‚Ã‚Â© par le dispositif Label Charrues, pour lequel des groupes ou artistes rÃƒÂƒÃ‚ÂƒÃƒÂ‚Ã‚Â©gionaux sont repÃƒÂƒÃ‚ÂƒÃƒÂ‚Ã‚Â©rÃƒÂƒÃ‚ÂƒÃƒÂ‚Ã‚Â©s en amont, programmÃƒÂƒÃ‚ÂƒÃƒÂ‚Ã‚Â©s au festival et soutenus par l''organisation d''une tournÃƒÂƒÃ‚ÂƒÃƒÂ‚Ã‚Â©e dans des lieux partenaires et des rÃƒÂƒÃ‚ÂƒÃƒÂ‚Ã‚Â©sidences encadrÃƒÂƒÃ‚ÂƒÃƒÂ‚Ã‚Â©es par des professionnels.\r\n\r\nLa 25ÃƒÂƒÃ‚ÂƒÃƒÂ‚Ã‚Â¨me ÃƒÂƒÃ‚ÂƒÃƒÂ‚Ã‚Â©dition du festival s''est tenue du 14 au 17 juillet 2016. La 26ÃƒÂƒÃ‚ÂƒÃƒÂ‚Ã‚Â¨me ÃƒÂƒÃ‚ÂƒÃƒÂ‚Ã‚Â©dition se dÃƒÂƒÃ‚ÂƒÃƒÂ‚Ã‚Â©roulera du 13 au 16 Juillet 2017.', 'http://www.vieillescharrues.asso.fr/2016/', '', 204, 143, ',18,', ',', 0, NULL, NULL, NULL),
(17, 1, 'Tomorrowland 2016', 14, '2017-07-29', '2017-07-31', 0, 1, 0, 'tomorrowland-2016', 'Participez vous aussi au plus grand festival de musique ÃƒÂƒÃ‚Â©lectronique de l''annÃƒÂƒÃ‚Â©e ! Se tenant les 22, 23 et 24 juillet, le festival Tomorrowland s''annonce un week-end riche en musique. Les plus grands DJ et producteurs de musique au monde se retrouveront ÃƒÂƒÃ‚Â  Boom en Belgique oÃƒÂƒÃ‚Â¹ ils offriront ÃƒÂƒÃ‚Â  leurs fans une grande variÃƒÂƒÃ‚Â©tÃƒÂƒÃ‚Â© de musique ÃƒÂƒÃ‚Â©lectronique. Obtenez des billets pour Full Madness, Dreamville, Magical Friday, Incredible Saturday ou Glorious Sunday et soyez de la fÃƒÂƒÃ‚Âªte ! Vous pouvez ÃƒÂƒÃ‚Â©galement vendre vos billets pour Tomorrowland , la mise en vente des billets est gratuite. Tous les billets pour Tomorrowland sont couverts par la garantie viagogo ! N''attendez plus - achetez vos billets pour Tomorrowland dÃƒÂƒÃ‚Â¨s maintenant !', '', '', 188, 189, ',29,43,48,19,', ',22,83,', 1, NULL, NULL, NULL),
(20, 1, 'World club dome', 17, '2018-07-29', '2018-07-31', 0, 3, 0, 'world-club-dome', 'WORLD CLUB DOME - du 5 au 7 juin 2015, la plus grande boite de nuit du monde vous invite ÃƒÂ  vivre une expÃƒÂ©rience EDM unique en son genre.\r\n\r\nFrancfort accueille le BigCityBeats WORLD CLUB DOME 2015 pour trois jours de clubbing intensif au son des meilleurs DJs de la planÃƒÂ©te. Le festival sort le grand jeu avec un line-up exceptionnel : Arty, ATB, Avicii, Blasterjaxx, David Guetta, Dimitri Vegas & Like Mike, DJ BL3ND, DVBBS, Faithless, Hardwell, Krewella, Le Shuuk, Mynoorey, Oliver Heldens, R3HAB, Sigma,  Steve Angello, Steve Aoki, The Bloody Beetroots, Ummet OzcanÃƒÂ©Ã‚Â¦', '', '', 196, 197, ',28,47,48,19,16,', ',22,72,74,86,', 0, NULL, NULL, ',9,13,21,');

-- --------------------------------------------------------

--
-- Structure de la table `lieu`
--

CREATE TABLE IF NOT EXISTS `lieu` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `libelle` varchar(255) DEFAULT NULL,
  `adresse` varchar(255) DEFAULT NULL,
  `code_postal` int(5) DEFAULT NULL,
  `ville` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `easy_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Contenu de la table `lieu`
--

INSERT INTO `lieu` (`id`, `libelle`, `adresse`, `code_postal`, `ville`, `logo`, `easy_name`) VALUES
(1, 'La Boule Noire', '120 Boulevard de Rochechouartt', 75018, 'Paris', '', 'la-boule-noire'),
(2, 'Zénith', '211 Avenue Jean Jaurès', 75019, 'Paris', '0', 'zenith'),
(3, 'AccorHotels Arena', '8 boulevard de Bercy', 75012, 'Paris', '0', 'accorhotels-arena'),
(4, 'Alhambra', '21 rue Yves Toudic ', 75010, 'Paris', '0', 'alhambra'),
(5, 'L''Alimentation générale', '64 rue Jean-Pierre Timbaud ', 75011, 'Paris', '0', 'l-alimentation-generale'),
(6, 'Atelier Charonne', '21 rue Charonne', 75011, 'Paris', '0', 'atelier-charonne'),
(7, 'Le Limonaire', '18 cité Bergère', 75009, 'Paris', '0', 'le-limonaire'),
(8, 'Badaboum', '2 rue des Taillandiers', 75011, 'Paris', '0', 'badaboum'),
(9, 'Le Bataclan', '50 boulevard Voltaire', 75011, 'Paris', '0', 'le-bataclan'),
(10, 'Bus Palladium', '6 rue Pierre Fontaine', 75009, 'Paris', '0', 'bus-palladium'),
(17, 'Showcase', 'Sous le Pont Alexandre III, Port des Champs-Ã‰lysÃ©es', 75008, 'Paris', '195', 'showcase');

-- --------------------------------------------------------

--
-- Structure de la table `media`
--

CREATE TABLE IF NOT EXISTS `media` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_type` int(11) DEFAULT NULL,
  `lien` varchar(255) DEFAULT NULL,
  `libelle` varchar(255) DEFAULT NULL,
  `archive` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=249 ;

--
-- Contenu de la table `media`
--

INSERT INTO `media` (`id`, `id_type`, `lien`, `libelle`, `archive`) VALUES
(0, 1, 'default/nightlives_default_user.jpg', 'Photo de profil par défaut', 0),
(1, 2, 'uploads/artist/banner/3e8d3b66d45875992efc949cbfabc279.jpg', 'Photo de couverture de DJ Snake', 0),
(2, 1, 'uploads/user/profile/8fe1898d07f5041d6fa02f601d8076bd.jpg', 'Photo de profil de geminhya', 0),
(9, 1, 'uploads/user/profile/da19116bba56c7fea3eec06438d740f6.jpg', 'Photo de profil de alice.dust', 0),
(13, 1, 'uploads/user/profile/43f4a098b0af6181e26f2504538324b1.jpg', 'Photo de profil de TEST3', 0),
(14, 1, 'uploads/user/profile/ccaf01c3d67bbe855e1ee8aaa65b38b7.jpg', 'Photo de profil de TEST4', 0),
(15, 1, 'uploads/user/profile/82d21389d7de0cc33c09a91e0ef3205b.jpg', 'Photo de profil de TEST5', 0),
(16, 1, 'uploads/artist/profile/3164e683a71d493829a4c28b93db538f.jpg', 'Photo de profil de geminhya', 0),
(17, 1, 'uploads/artist/profile/98f2c29932d4a611637f3a9556001d88.jpg', 'Photo de profil de artisté_4', 0),
(18, 1, 'uploads/artist/profile/af7c2d5ebd89ed170877c4d4e8e957d7.jpg', 'Photo de profil de artisté_5', 0),
(19, 2, 'uploads/artist/profile/af7c2d5ebd89ed170877c4d4e8e957d7.jpg', 'Photo de profil de artisté_5', 0),
(20, 1, 'uploads/artist/profile/af7c2d5ebd89ed170877c4d4e8e957d7.jpg', 'Photo de profil de artisté_5', 0),
(21, 2, 'uploads/artist/banner/af7c2d5ebd89ed170877c4d4e8e957d7.jpg', 'Photo de couverture de artisté_5', 0),
(22, 2, 'uploads/artist/banner/af7c2d5ebd89ed170877c4d4e8e957d7.jpg', 'Photo de couverture de artisté_5', 0),
(23, 1, 'uploads/artist/profile/af7c2d5ebd89ed170877c4d4e8e957d7.jpg', 'Photo de profil de artisté_5', 0),
(24, 2, 'uploads/artist/banner/af7c2d5ebd89ed170877c4d4e8e957d7.jpg', 'Photo de couverture de artisté_5', 0),
(25, 1, 'uploads/artist/profile/af7c2d5ebd89ed170877c4d4e8e957d7.jpg', 'Photo de profil de artisté_5', 0),
(26, 2, 'uploads/artist/banner/af7c2d5ebd89ed170877c4d4e8e957d7.jpg', 'Photo de couverture de artisté_5', 0),
(27, 1, 'uploads/artist/profile/af7c2d5ebd89ed170877c4d4e8e957d7.jpg', 'Photo de profil de artisté_5', 0),
(28, 2, 'uploads/artist/banner/af7c2d5ebd89ed170877c4d4e8e957d7.jpg', 'Photo de couverture de artisté_5', 0),
(29, 1, 'uploads/artist/profile/af7c2d5ebd89ed170877c4d4e8e957d7.jpg', 'Photo de profil de artisté_5', 0),
(30, 2, 'uploads/artist/banner/af7c2d5ebd89ed170877c4d4e8e957d7.jpg', 'Photo de couverture de artisté_5', 0),
(31, 1, 'uploads/artist/profile/fc79ab963f3a011c3f86f8b11349b161.jpg', 'Photo de profil de Tchami', 0),
(32, 2, 'uploads/artist/banner/fc79ab963f3a011c3f86f8b11349b161.jpg', 'Photo de couverture de Tchami', 0),
(33, 1, 'uploads/artist/profile/9556ce5e2e36512b7613dc6adb274f7c.jpg', 'Photo de profil de Bullet For My Valentine', 0),
(34, 2, 'uploads/artist/banner/9556ce5e2e36512b7613dc6adb274f7c.jpg', 'Photo de couverture de Bullet For My Valentine', 0),
(35, 1, 'uploads/artist/profile/d172e1d59c417e8fd7d52a89b8ff4711.jpg', 'Photo de profil de Forgot Shift', 0),
(36, 2, 'uploads/artist/banner/d172e1d59c417e8fd7d52a89b8ff4711.jpg', 'Photo de couverture de Forgot Shift', 0),
(37, 1, 'uploads/artist/profile/098f6bcd4621d373cade4e832627b4f6.jpg', 'Photo de profil de test', 0),
(38, 2, 'uploads/artist/banner/098f6bcd4621d373cade4e832627b4f6.jpg', 'Photo de couverture de test', 0),
(45, 1, 'uploads/artist/profile/8595080fb905cfdf484d9c81f2852ef5.jpg', 'Photo de profil de Mon festoch de la mort qui tue', 0),
(46, 1, 'uploads/artist/profile/8595080fb905cfdf484d9c81f2852ef5.jpg', 'Photo de profil de Mon festoch de la mort qui tue', 0),
(47, 1, 'uploads/user/profile/a1fb11ceb59a5170723c530a07d1793b.jpg', 'Photo de profil de mon_pseudo', 0),
(48, 1, 'uploads/user/profile/7246e6b5655126b3d5e9d9048c223c31.jpg', 'Photo de profil de sdjhfbjhsfhj', 0),
(51, 1, 'uploads/event/profile/8595080fb905cfdf484d9c81f2852ef5.jpg', 'Photo de profil de Mon festoch de la mort qui tue', 0),
(52, 1, 'uploads/event/profile/8595080fb905cfdf484d9c81f2852ef5.jpg', 'Photo de profil de Mon festoch de la mort qui tue', 0),
(53, 1, 'uploads/event/profile/8595080fb905cfdf484d9c81f2852ef5.jpg', 'Photo de profil de Mon festoch de la mort qui tue', 0),
(54, 2, 'uploads/event/banner/8595080fb905cfdf484d9c81f2852ef5.jpg', 'Photo de couverture de Mon festoch de la mort qui tue', 0),
(55, 1, 'uploads/event/profile/8595080fb905cfdf484d9c81f2852ef5.jpg', 'Photo de profil de Mon festoch de la mort qui tue', 0),
(56, 2, 'uploads/event/banner/8595080fb905cfdf484d9c81f2852ef5.jpg', 'Photo de couverture de Mon festoch de la mort qui tue', 0),
(57, 1, 'uploads/event/profile/8595080fb905cfdf484d9c81f2852ef5.jpg', 'Photo de profil de Mon festoch de la mort qui tue', 0),
(58, 2, 'uploads/event/banner/8595080fb905cfdf484d9c81f2852ef5.jpg', 'Photo de couverture de Mon festoch de la mort qui tue', 0),
(59, 2, 'uploads/event/banner/8595080fb905cfdf484d9c81f2852ef5.jpg', 'Photo de couverture de Mon festoch de la mort qui tue', 0),
(60, 2, 'uploads/event/banner/8595080fb905cfdf484d9c81f2852ef5.jpg', 'Photo de couverture de Mon festoch de la mort qui tue', 0),
(61, 2, 'uploads/event/banner/8595080fb905cfdf484d9c81f2852ef5.jpg', 'Photo de couverture de Mon festoch de la mort qui tue', 0),
(62, 2, 'uploads/event/banner/8595080fb905cfdf484d9c81f2852ef5.jpg', 'Photo de couverture de Mon festoch de la mort qui tue', 0),
(63, 1, 'uploads/event/profile/8595080fb905cfdf484d9c81f2852ef5.jpg', 'Photo de profil de Mon festoch de la mort qui tue', 0),
(64, 2, 'uploads/event/banner/8595080fb905cfdf484d9c81f2852ef5.jpg', 'Photo de couverture de Mon festoch de la mort qui tue', 0),
(65, 2, 'uploads/event/banner/8595080fb905cfdf484d9c81f2852ef5.jpg', 'Photo de couverture de Mon festoch de la mort qui tue', 0),
(66, 2, 'uploads/event/banner/8595080fb905cfdf484d9c81f2852ef5.jpg', 'Photo de couverture de Mon festoch de la mort qui tue', 0),
(67, 2, 'uploads/event/banner/8595080fb905cfdf484d9c81f2852ef5.jpg', 'Photo de couverture de Mon festoch de la mort qui tue', 0),
(68, 2, 'uploads/event/banner/8595080fb905cfdf484d9c81f2852ef5.jpg', 'Photo de couverture de Mon festoch de la mort qui tue', 0),
(69, 2, 'uploads/event/banner/8595080fb905cfdf484d9c81f2852ef5.jpg', 'Photo de couverture de Mon festoch de la mort qui tue', 0),
(70, 2, 'uploads/event/banner/8595080fb905cfdf484d9c81f2852ef5.jpg', 'Photo de couverture de Mon festoch de la mort qui tue', 0),
(71, 2, 'uploads/event/banner/8595080fb905cfdf484d9c81f2852ef5.jpg', 'Photo de couverture de Mon festoch de la mort qui tue', 0),
(72, 1, 'uploads/event/profile/8595080fb905cfdf484d9c81f2852ef5.jpg', 'Photo de profil de Mon festoch de la mort qui tue', 0),
(73, 1, 'uploads/event/profile/098f6bcd4621d373cade4e832627b4f6.jpg', 'Photo de profil de TEST', 1),
(74, 1, 'uploads/event/profile/8595080fb905cfdf484d9c81f2852ef5.jpg', 'Photo de profil de Mon festoch de la mort qui tue', 1),
(75, 2, 'uploads/event/banner/8595080fb905cfdf484d9c81f2852ef5.jpg', 'Photo de couverture de Mon festoch de la mort qui tue', 1),
(76, 1, 'uploads/event/profile/8595080fb905cfdf484d9c81f2852ef5.jpg', 'Photo de profil de Mon festoch de la mort qui tue', 1),
(77, 2, 'uploads/event/banner/8595080fb905cfdf484d9c81f2852ef5.jpg', 'Photo de couverture de Mon festoch de la mort qui tue', 1),
(78, 1, 'uploads/event/profile/8595080fb905cfdf484d9c81f2852ef5.jpg', 'Photo de profil de Mon festoch de la mort qui tue', 1),
(79, 1, 'uploads/event/profile/8595080fb905cfdf484d9c81f2852ef5.jpg', 'Photo de profil de Mon festoch de la mort qui tue', 1),
(80, 2, 'uploads/event/banner/8595080fb905cfdf484d9c81f2852ef5.jpg', 'Photo de couverture de Mon festoch de la mort qui tue', 1),
(81, 1, 'uploads/artist/profile/4aa6e5705dc12007b143635a6c63087d.jpg', 'Photo de profil de Skrillex', 0),
(82, 2, 'uploads/artist/banner/4aa6e5705dc12007b143635a6c63087d.jpg', 'Photo de couverture de Skrillex', 0),
(83, 1, 'uploads/artist/profile/21fc80ffe7c9e3654a6d231688775b0e.jpg', 'Photo de profil de Silverstein', 0),
(84, 2, 'uploads/artist/banner/21fc80ffe7c9e3654a6d231688775b0e.jpg', 'Photo de couverture de Silverstein', 0),
(85, 1, 'uploads/artist/profile/3164e683a71d493829a4c28b93db538f.jpg', 'Photo de profil de geminhya', 1),
(86, 2, 'uploads/artist/banner/3164e683a71d493829a4c28b93db538f.jpg', 'Photo de couverture de geminhya', 0),
(87, 1, 'uploads/artist/profile/b1de91ae350274674b04adf1a03d7b27.jpg', 'Photo de profil de Bring Me The Horizon', 0),
(88, 2, 'uploads/artist/banner/b1de91ae350274674b04adf1a03d7b27.jpg', 'Photo de couverture de Bring Me The Horizon', 0),
(89, 1, 'uploads/artist/profile/edcb36f391ff45dae588cd52055d5d21.jpg', 'Photo de profil de Neck Deep', 0),
(90, 1, 'uploads/artist/profile/a145cacccab76e49b91e8942e1e7a713.jpg', 'Photo de profil de Nothing More', 0),
(91, 2, 'uploads/artist/banner/a145cacccab76e49b91e8942e1e7a713.jpg', 'Photo de couverture de Nothing More', 0),
(92, 1, 'uploads/artist/profile/c20ad4d76fe97759aa27a0c99bff6710.jpg', 'Photo de profil de 12', 0),
(93, 2, 'uploads/artist/banner/c20ad4d76fe97759aa27a0c99bff6710.jpg', 'Photo de couverture de 12', 0),
(94, 1, 'uploads/artist/profile/33c156d53c40a3e61c767d82fe366289.jpg', 'Photo de profil de Ultra Vomit', 0),
(95, 2, 'uploads/artist/banner/33c156d53c40a3e61c767d82fe366289.jpg', 'Photo de couverture de Ultra Vomit', 0),
(96, 1, 'uploads/artist/profile/33c156d53c40a3e61c767d82fe366289.jpg', 'Photo de profil de Ultra Vomit', 1),
(97, 2, 'uploads/artist/banner/33c156d53c40a3e61c767d82fe366289.jpg', 'Photo de couverture de Ultra Vomit', 1),
(98, 1, 'uploads/artist/profile/fce601c3c5b8868314878f85909549d5.jpg', 'Photo de profil de David Guetta', 0),
(99, 2, 'uploads/artist/banner/fce601c3c5b8868314878f85909549d5.jpg', 'Photo de couverture de David Guetta', 0),
(100, 1, 'uploads/artist/profile/bc426de4502e321bb95ec3d202b578cf.jpg', 'Photo de profil de Daft Punk', 0),
(101, 2, 'uploads/artist/banner/bc426de4502e321bb95ec3d202b578cf.jpg', 'Photo de couverture de Daft Punk', 0),
(102, 1, 'uploads/artist/profile/d7cdeb7c1c1678a0da1ef9c798a9211a.jpg', 'Photo de profil de Kendji Girac', 0),
(103, 2, 'uploads/artist/banner/d7cdeb7c1c1678a0da1ef9c798a9211a.jpg', 'Photo de couverture de Kendji Girac', 0),
(104, 1, 'uploads/artist/profile/b3d97746dbb45e92dc083db205e1fd14.jpg', 'Photo de profil de Phoenix', 0),
(105, 2, 'uploads/artist/banner/b3d97746dbb45e92dc083db205e1fd14.jpg', 'Photo de couverture de Phoenix', 0),
(106, 1, 'uploads/artist/profile/4772fc0dc160135f26fa6423f5456560.jpg', 'Photo de profil de Fréro Delavega', 0),
(107, 2, 'uploads/artist/banner/4772fc0dc160135f26fa6423f5456560.jpg', 'Photo de couverture de Fréro Delavega', 0),
(108, 1, 'uploads/artist/profile/3235924a4c7c0e7e1fd5c0ad8d5e4f0f.jpg', 'Photo de profil de L.E.J', 0),
(109, 2, 'uploads/artist/banner/3235924a4c7c0e7e1fd5c0ad8d5e4f0f.jpg', 'Photo de couverture de L.E.J', 0),
(110, 1, 'uploads/artist/profile/16a7064be17e848674f9857110540e1f.jpg', 'Photo de profil de Louane', 0),
(111, 2, 'uploads/artist/banner/16a7064be17e848674f9857110540e1f.jpg', 'Photo de couverture de Louane', 0),
(112, 1, 'uploads/artist/profile/9b83bf9764572926fc6814755f7a0413.jpg', 'Photo de profil de Stromae', 0),
(113, 2, 'uploads/artist/banner/9b83bf9764572926fc6814755f7a0413.jpg', 'Photo de couverture de Stromae', 0),
(114, 1, 'uploads/artist/profile/8e8577216b42af1b0e4fafdb79ab5268.jpg', 'Photo de profil de Kyo', 0),
(115, 2, 'uploads/artist/banner/8e8577216b42af1b0e4fafdb79ab5268.jpg', 'Photo de couverture de Kyo', 0),
(116, 1, 'uploads/user/profile/d41d8cd98f00b204e9800998ecf8427e.jpg', 'Photo de profil de ', 1),
(117, 1, 'uploads/artist/profile/98a99cb9ab85f73270765595cd068a82.jpg', 'Photo de profil de MUSE', 0),
(118, 2, 'uploads/artist/banner/98a99cb9ab85f73270765595cd068a82.jpg', 'Photo de couverture de MUSE', 0),
(121, 1, 'uploads/event/profile/255740d879ba879bd8b3e0d1e2ef26dc.jpg', 'Photo de profil de Renc''Arts de la ScÃ¨ne', 1),
(122, 2, 'uploads/event/banner/255740d879ba879bd8b3e0d1e2ef26dc.jpg', 'Photo de couverture de Renc''Arts de la ScÃ¨ne', 1),
(123, 1, 'uploads/event/profile/255740d879ba879bd8b3e0d1e2ef26dc.jpg', 'Photo de profil de Renc''Arts de la ScÃ¨ne', 1),
(124, 2, 'uploads/event/banner/255740d879ba879bd8b3e0d1e2ef26dc.jpg', 'Photo de couverture de Renc''Arts de la ScÃ¨ne', 1),
(125, 1, 'uploads/event/profile/255740d879ba879bd8b3e0d1e2ef26dc.jpg', 'Photo de profil de Renc''Arts de la ScÃ¨ne', 1),
(126, 2, 'uploads/event/banner/255740d879ba879bd8b3e0d1e2ef26dc.jpg', 'Photo de couverture de Renc''Arts de la ScÃ¨ne', 1),
(127, 1, 'uploads/event/profile/255740d879ba879bd8b3e0d1e2ef26dc.jpg', 'Photo de profil de Renc''Arts de la ScÃ¨ne', 1),
(128, 1, 'uploads/event/profile/255740d879ba879bd8b3e0d1e2ef26dc.jpg', 'Photo de profil de Renc''Arts de la ScÃ¨ne', 1),
(129, 1, 'uploads/event/profile/255740d879ba879bd8b3e0d1e2ef26dc.jpg', 'Photo de profil de Renc''Arts de la ScÃ¨ne', 1),
(130, 2, 'uploads/event/banner/255740d879ba879bd8b3e0d1e2ef26dc.jpg', 'Photo de couverture de Renc''Arts de la ScÃ¨ne', 1),
(131, 1, 'uploads/event/profile/255740d879ba879bd8b3e0d1e2ef26dc.jpg', 'Photo de profil de Renc''Arts de la ScÃ¨ne', 1),
(132, 2, 'uploads/event/banner/255740d879ba879bd8b3e0d1e2ef26dc.jpg', 'Photo de couverture de Renc''Arts de la ScÃ¨ne', 1),
(133, 1, 'uploads/event/profile/255740d879ba879bd8b3e0d1e2ef26dc.jpg', 'Photo de profil de Renc''Arts de la ScÃ¨ne', 1),
(134, 2, 'uploads/event/banner/255740d879ba879bd8b3e0d1e2ef26dc.jpg', 'Photo de couverture de Renc''Arts de la ScÃ¨ne', 1),
(135, 1, 'uploads/event/profile/255740d879ba879bd8b3e0d1e2ef26dc.jpg', 'Photo de profil de Renc\\''Arts de la ScÃ¨ne', 1),
(136, 2, 'uploads/event/banner/255740d879ba879bd8b3e0d1e2ef26dc.jpg', 'Photo de couverture de Renc\\''Arts de la ScÃ¨ne', 1),
(137, 1, 'uploads/event/profile/a352aaf8d730b394e9c6ba2aec177b7f.jpg', 'Photo de profil de Renc\\''Arts de la ScÃ¨ne', 1),
(138, 2, 'uploads/event/banner/a352aaf8d730b394e9c6ba2aec177b7f.jpg', 'Photo de couverture de Renc\\''Arts de la ScÃ¨ne', 1),
(139, 1, 'uploads/event/profile/d990f9d8bb5f782c8b03cfdfd14f0822.jpg', 'Photo de profil de Silverstein Warmaudio', 1),
(140, 2, 'uploads/event/banner/d990f9d8bb5f782c8b03cfdfd14f0822.jpg', 'Photo de couverture de Silverstein Warmaudio', 1),
(141, 1, 'uploads/event/profile/9fc09a1a620d0411fb93790b43bbc921.jpg', 'Photo de profil de Ultra Music festival', 1),
(142, 2, 'uploads/event/banner/9fc09a1a620d0411fb93790b43bbc921.jpg', 'Photo de couverture de Ultra Music festival', 1),
(143, 2, 'uploads/event/banner/3772698e148cdf0ecb3b67314353b7c8.jpg', 'Photo de couverture de Vielles Charrues', 1),
(144, 1, 'uploads/event/profile/3821862cbaf2a456ecf21c2f4c27d3e0.jpg', 'Photo de profil de MUSE à la Tour Eiffel', 1),
(145, 2, 'uploads/event/banner/3821862cbaf2a456ecf21c2f4c27d3e0.jpg', 'Photo de couverture de MUSE Ã  la Tour Eiffel', 1),
(146, 1, 'uploads/event/profile/d990f9d8bb5f782c8b03cfdfd14f0822.jpg', 'Photo de profil de Silverstein Warmaudio', 1),
(147, 2, 'uploads/event/banner/d990f9d8bb5f782c8b03cfdfd14f0822.jpg', 'Photo de couverture de Silverstein Warmaudio', 1),
(148, 1, 'uploads/event/profile/d990f9d8bb5f782c8b03cfdfd14f0822.jpg', 'Photo de profil de Silverstein Warmaudio', 1),
(149, 2, 'uploads/event/banner/d990f9d8bb5f782c8b03cfdfd14f0822.jpg', 'Photo de couverture de Silverstein Warmaudio', 1),
(150, 1, 'uploads/event/profile/3821862cbaf2a456ecf21c2f4c27d3e0.jpg', 'Photo de profil de MUSE Ã  la Tour Eiffel', 1),
(151, 2, 'uploads/event/banner/3821862cbaf2a456ecf21c2f4c27d3e0.jpg', 'Photo de couverture de MUSE Ã  la Tour Eiffel', 1),
(152, 1, 'uploads/event/profile/3821862cbaf2a456ecf21c2f4c27d3e0.jpg', 'Photo de profil de MUSE Ã  la Tour Eiffel', 1),
(153, 2, 'uploads/event/banner/3821862cbaf2a456ecf21c2f4c27d3e0.jpg', 'Photo de couverture de MUSE Ã  la Tour Eiffel', 1),
(154, 1, 'uploads/event/profile/3821862cbaf2a456ecf21c2f4c27d3e0.jpg', 'Photo de profil de MUSE Ã  la Tour Eiffel', 1),
(155, 1, 'uploads/event/profile/3821862cbaf2a456ecf21c2f4c27d3e0.jpg', 'Photo de profil de MUSE Ã  la Tour Eiffel', 1),
(156, 1, 'uploads/event/profile/3821862cbaf2a456ecf21c2f4c27d3e0.jpg', 'Photo de profil de MUSE Ã  la Tour Eiffel', 1),
(157, 1, 'uploads/event/profile/3821862cbaf2a456ecf21c2f4c27d3e0.jpg', 'Photo de profil de MUSE Ã  la Tour Eiffel', 1),
(158, 2, 'uploads/event/banner/3821862cbaf2a456ecf21c2f4c27d3e0.jpg', 'Photo de couverture de MUSE Ã  la Tour Eiffel', 1),
(159, 2, 'uploads/event/banner/3821862cbaf2a456ecf21c2f4c27d3e0.jpg', 'Photo de couverture de MUSE Ã  la Tour Eiffel', 1),
(160, 1, 'uploads/event/profile/d990f9d8bb5f782c8b03cfdfd14f0822.jpg', 'Photo de profil de Silverstein Warmaudio', 1),
(161, 2, 'uploads/event/banner/d990f9d8bb5f782c8b03cfdfd14f0822.jpg', 'Photo de couverture de Silverstein Warmaudio', 1),
(162, 1, 'uploads/user/profile/geminhya.jpg', 'Photo de profil de geminhya', 0),
(163, 3, 'images/articles/af4657653087d7840558f313870f6edd.jpg', 'Image de l''article nommÃ© : Songhoy Blues', NULL),
(164, 1, 'uploads/user/profile/momo.jpg', 'Photo de profil de momo', 0),
(165, 1, 'uploads/artist/profile/222a5a8b3ad3d7d0e6805e301898eaaf.jpg', 'Photo de profil de Radiohead', NULL),
(166, 2, 'uploads/artist/banner/222a5a8b3ad3d7d0e6805e301898eaaf.jpg', 'Photo de couverture de Radiohead', NULL),
(167, 1, 'uploads/event/profile/334e361b31189e4785afe15a9ae6be8f.jpg', 'Photo de profil de Radiohead - World Tour 2016', NULL),
(168, 2, 'uploads/event/banner/334e361b31189e4785afe15a9ae6be8f.jpg', 'Photo de couverture de Radiohead - World Tour 2016', NULL),
(169, 1, 'uploads/user/profile/LeMayhem.jpg', 'Photo de profil de LeMayhem', 0),
(170, 1, 'uploads/event/profile/f4706eaa60411b58aaf7f1c4d104e0ff.jpg', 'Photo de profil de Ultra Europe', NULL),
(171, 1, 'uploads/artist/profile/3e8d3b66d45875992efc949cbfabc279.jpg', 'Photo de profil de DJ Snake', NULL),
(172, 1, 'uploads/user/profile/Nadyro.jpg', 'Photo de profil de Nadyro', 0),
(173, 2, 'uploads/event/banner/f4706eaa60411b58aaf7f1c4d104e0ff.jpg', 'Photo de couverture de Ultra Europe', NULL),
(174, 1, 'uploads/event/profile/f4706eaa60411b58aaf7f1c4d104e0ff.jpg', 'Photo de profil de Ultra Europe', NULL),
(175, 1, 'uploads/event/profile/f4706eaa60411b58aaf7f1c4d104e0ff.jpg', 'Photo de profil de Ultra Europe', NULL),
(176, 1, 'uploads/event/profile/f4706eaa60411b58aaf7f1c4d104e0ff.jpg', 'Photo de profil de Ultra Europe', NULL),
(177, 1, 'uploads/artist/profile/51cdcb6a9eea4dcce64f837b91806c16.jpg', 'Photo de profil de Songhoy Blues', NULL),
(178, 2, 'uploads/artist/banner/51cdcb6a9eea4dcce64f837b91806c16.jpg', 'Photo de couverture de Songhoy Blues', NULL),
(179, 1, 'uploads/artist/profile/5b8c8230b0887dbd1f52f74e48d84559.jpg', 'Photo de profil de Diplo', NULL),
(180, 1, 'uploads/artist/profile/5b8c8230b0887dbd1f52f74e48d84559.jpg', 'Photo de profil de Diplo', NULL),
(181, 2, 'uploads/artist/banner/5b8c8230b0887dbd1f52f74e48d84559.jpg', 'Photo de couverture de Diplo', NULL),
(182, 1, 'uploads/artist/profile/5b8c8230b0887dbd1f52f74e48d84559.jpg', 'Photo de profil de Diplo', NULL),
(183, 2, 'uploads/artist/banner/5b8c8230b0887dbd1f52f74e48d84559.jpg', 'Photo de couverture de Diplo', NULL),
(184, 1, 'uploads/event/profile/e04373f48b6a7d5262bd14f9ec07e0e7.jpg', 'Photo de profil de Rise Up Tour', NULL),
(185, 2, 'uploads/event/banner/e04373f48b6a7d5262bd14f9ec07e0e7.jpg', 'Photo de couverture de Rise Up Tour', NULL),
(186, 1, 'uploads/artist/profile/5966aad9f671046db29733f05884024a.jpg', 'Photo de profil de Martin Garrix', NULL),
(187, 2, 'uploads/artist/banner/5966aad9f671046db29733f05884024a.jpg', 'Photo de couverture de Martin Garrix', NULL),
(188, 1, 'uploads/event/profile/14ec451faecba1d12c98deb28eb278f9.jpg', 'Photo de profil de Tomorrowland 2016', NULL),
(189, 2, 'uploads/event/banner/14ec451faecba1d12c98deb28eb278f9.jpg', 'Photo de couverture de Tomorrowland 2016', NULL),
(190, 1, 'uploads/event/profile/811bee136ef7f8a8db150bf8e9ab0a7e.jpg', 'Photo de profil de Fakear', NULL),
(191, 2, 'uploads/event/banner/811bee136ef7f8a8db150bf8e9ab0a7e.jpg', 'Photo de couverture de Fakear', NULL),
(192, 1, 'uploads/event/profile/219f346d533b788dcce12f352efb17a6.jpg', 'Photo de profil de Fakear France Tour', NULL),
(193, 2, 'uploads/event/banner/219f346d533b788dcce12f352efb17a6.jpg', 'Photo de couverture de Fakear France Tour', NULL),
(194, 1, 'uploads/event/profile/0d8518b226f9f48de1475c2780fd4ed5.jpg', 'Photo de profil de Zig Zag', NULL),
(195, 1, 'uploads/event/profile/88c5ba0ad717231c45ce638a11060487.jpg', 'Photo de profil de Showcase', NULL),
(196, 1, 'uploads/event/profile/e0c237268863c3710db22651b77fb699.jpg', 'Photo de profil de World club dome', NULL),
(197, 2, 'uploads/event/banner/e0c237268863c3710db22651b77fb699.jpg', 'Photo de couverture de World club dome', NULL),
(198, 1, 'uploads/event/profile/da6a6bfc4760c8977628af710ff6ef5f.jpg', 'Photo de profil de Pardon My french (Going Back Home)', NULL),
(199, 2, 'uploads/event/banner/85e7322894b4bf3701a3930c0d4ee5d8.jpg', 'Photo de couverture de PMF (Back In Paris)', NULL),
(200, 1, 'uploads/event/profile/9fc09a1a620d0411fb93790b43bbc921.jpg', 'Photo de profil de Ultra Music festival', NULL),
(201, 2, 'uploads/event/banner/9fc09a1a620d0411fb93790b43bbc921.jpg', 'Photo de couverture de Ultra Music festival', NULL),
(202, 1, 'uploads/event/profile/f4706eaa60411b58aaf7f1c4d104e0ff.jpg', 'Photo de profil de Ultra Europe', NULL),
(203, 2, 'uploads/event/banner/85e7322894b4bf3701a3930c0d4ee5d8.jpg', 'Photo de couverture de PMF (Back In Paris)', NULL),
(204, 1, 'uploads/event/profile/3772698e148cdf0ecb3b67314353b7c8.jpg', 'Photo de profil de Vielles Charrues', NULL),
(205, 2, 'uploads/event/banner/3772698e148cdf0ecb3b67314353b7c8.jpg', 'Photo de couverture de Vielles Charrues', NULL),
(206, 1, 'uploads/artist/profile/9a3eecf581e5d9e939c6dc4046847881.jpg', 'Photo de profil de The Devil Wears Prada', NULL),
(207, 2, 'uploads/artist/banner/9a3eecf581e5d9e939c6dc4046847881.jpg', 'Photo de couverture de The Devil Wears Prada', NULL),
(208, 1, 'uploads/event/profile/abdf9844cb79d498c9aa56dab74d54db.jpg', 'Photo de profil de La Clairiere : Mr. Oizo, Feadz & Borussia', NULL),
(209, 2, 'uploads/event/banner/abdf9844cb79d498c9aa56dab74d54db.jpg', 'Photo de couverture de La ClairiÃ¨re : Mr. Oizo, Feadz & Borussia', NULL),
(210, 2, 'uploads/event/banner/abdf9844cb79d498c9aa56dab74d54db.jpg', 'Photo de couverture de La ClairiÃ¨re : Mr. Oizo, Feadz & Borussia', NULL),
(211, 1, 'uploads/event/profile/3772698e148cdf0ecb3b67314353b7c8.jpg', 'Photo de profil de Vielles Charrues', NULL),
(212, 1, 'uploads/event/profile/f496ea6b340efd2fe29f78efc22b833b.jpg', 'Photo de profil de La Clairiere : Feadz & Borussia', NULL),
(213, 1, 'uploads/event/profile/f496ea6b340efd2fe29f78efc22b833b.jpg', 'Photo de profil de La Clairiere : Feadz & Borussia', NULL),
(214, 1, 'uploads/event/profile/334e361b31189e4785afe15a9ae6be8f.jpg', 'Photo de profil de Radiohead - World Tour 2016', NULL),
(215, 2, 'uploads/event/banner/334e361b31189e4785afe15a9ae6be8f.jpg', 'Photo de couverture de Radiohead - World Tour 2016', NULL),
(216, 1, 'uploads/user/profile/UCantSeeMe.jpg', 'Photo de profil de UCantSeeMe', 0),
(217, 1, 'uploads/event/profile/71a79f535ae2ae3102ced579a295419f.jpg', 'Photo de profil de Mysteryland', NULL),
(218, 2, 'uploads/event/banner/71a79f535ae2ae3102ced579a295419f.jpg', 'Photo de couverture de Mysteryland', NULL),
(219, 3, 'images/articles/51c3125d1389e909d615cdb2d4f14dfa.jpg', 'Image de l''article nommÃ© : Ouverture de Nightlives', NULL),
(220, 3, 'images/articles/51c3125d1389e909d615cdb2d4f14dfa.jpg', 'Image de l''article nommÃ© : Ouverture de Nightlives', NULL),
(221, 1, 'uploads/artist/profile/9a43f4f8f0bada07580ed63d123e868a.jpg', 'Photo de profil de Mondragora', NULL),
(222, 2, 'uploads/artist/banner/9a43f4f8f0bada07580ed63d123e868a.jpg', 'Photo de couverture de Mondragora', NULL),
(223, 1, 'uploads/artist/profile/9a43f4f8f0bada07580ed63d123e868a.jpg', 'Photo de profil de Mondragora', NULL),
(224, 2, 'uploads/artist/banner/9a43f4f8f0bada07580ed63d123e868a.jpg', 'Photo de couverture de Mondragora', NULL),
(225, 1, 'uploads/artist/profile/f34c903e17cfeea18e499d4627eeb3ec.jpg', 'Photo de profil de Slipknot', NULL),
(226, 3, 'images/articles/51c3125d1389e909d615cdb2d4f14dfa.jpg', 'Image de l''article nommÃ© : Ouverture de Nightlives', NULL),
(227, 3, 'images/articles/51c3125d1389e909d615cdb2d4f14dfa.jpg', 'Image de l''article nommÃ© : Ouverture de Nightlives', NULL),
(228, 3, 'images/articles/da9f31881083003cacea0497648e1cdc.jpg', 'Image de l''article nommÃ© : Fakear - Animal ! Un des meilleurs titre de l''annÃ©e !', NULL),
(229, 3, 'images/articles/51c3125d1389e909d615cdb2d4f14dfa.jpg', 'Image de l''article nommÃ© : Ouverture de Nightlives', NULL),
(230, 1, 'uploads/event/profile/6d0876b1db4aaf5b804187c5b9ff3443.jpg', 'Photo de profil de We are Rave', NULL),
(231, 2, 'uploads/event/banner/6d0876b1db4aaf5b804187c5b9ff3443.jpg', 'Photo de couverture de We are Rave', NULL),
(232, 1, 'uploads/user/profile/Syl_xio.jpeg', 'Photo de profil de Syl_xio', 0),
(233, 1, 'uploads/artist/profile/a484c43ae3d1e3fe3ea19cadf260767c.jpg', 'Photo de profil de Disclosure', NULL),
(234, 2, 'uploads/artist/banner/a484c43ae3d1e3fe3ea19cadf260767c.jpg', 'Photo de couverture de Disclosure', NULL),
(235, 1, 'uploads/user/profile/noah.levin.jpg', 'Photo de profil de noah.levin', 0),
(236, 3, 'images/articles/7efcd0b0cb42da4a96258c650c40f16e.jpg', 'Image de l''article nommÃ© : BTMH - Throne', NULL),
(237, 3, 'images/articles/4a1e2f8c2bbbed18fefafb75af3cb8b2.jpg', 'Image de l''article nommÃ© : Ultra Europe 2016', NULL),
(238, 1, 'uploads/user/profile/skrzypczyk.jpg', 'Photo de profil de skrzypczyk', 0),
(239, 3, 'images/articles/4a1e2f8c2bbbed18fefafb75af3cb8b2.jpg', 'Image de l''article nommÃ© : Soutenance Projet', NULL),
(240, 1, 'uploads/user/profile/AmineMsf.jpg', 'Photo de profil de AmineMsf', 0),
(241, 1, 'uploads/event/profile/a352aaf8d730b394e9c6ba2aec177b7f.jpg', 'Photo de profil de Renc\\''Arts de la ScÃ¨ne', NULL),
(242, 2, 'uploads/event/banner/a352aaf8d730b394e9c6ba2aec177b7f.jpg', 'Photo de couverture de Renc\\''Arts de la ScÃ¨ne', NULL),
(243, 1, 'uploads/event/profile/3772698e148cdf0ecb3b67314353b7c8.jpg', 'Photo de profil de Vielles Charrues', NULL),
(244, 2, 'uploads/event/banner/3772698e148cdf0ecb3b67314353b7c8.jpg', 'Photo de couverture de Vielles Charrues', NULL),
(245, 1, 'uploads/artist/profile/a1de448685f6037dceb99c7a3099caed.jpg', 'Photo de profil de Diljit', NULL),
(246, 2, 'uploads/artist/banner/a1de448685f6037dceb99c7a3099caed.jpg', 'Photo de couverture de Diljit', NULL),
(247, 1, 'uploads/event/profile/098f6bcd4621d373cade4e832627b4f6.jpg', 'Photo de profil de Test', NULL),
(248, 2, 'uploads/event/banner/098f6bcd4621d373cade4e832627b4f6.jpg', 'Photo de couverture de Test', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `meta_event`
--

CREATE TABLE IF NOT EXISTS `meta_event` (
  `id_event` int(11) unsigned NOT NULL,
  `id_artist` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_event`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `page`
--

CREATE TABLE IF NOT EXISTS `page` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=212 ;

--
-- Contenu de la table `page`
--

INSERT INTO `page` (`id`, `url`, `count`, `nom`, `type`) VALUES
(42, 'http://localhost/nightlives/', 254, 'Accueil', 'page'),
(43, 'http://localhost/nightlives/event?id=4', 9, 'Mon festoch de la mort qui tue', 'event'),
(44, 'http://localhost/nightlives/artistes?type=electro', 59, 'Artistes : Electro', 'page'),
(45, 'http://localhost/nightlives/artistes?type=pop', 17, 'Artistes : Pop', 'page'),
(46, 'http://localhost/nightlives/artistes', 19, 'Artistes : Tous', 'page'),
(48, 'http://localhost/nightlives/artistes?type=rock', 12, 'Artistes : Rock', 'page'),
(50, 'http://localhost/nightlives/artiste', 3, 'Artiste : Bring Me The Horizon', 'artist'),
(51, 'http://localhost/nightlives/artiste?id=17', 7, 'Bullet For My Valentine', 'artist'),
(52, 'http://localhost/nightlives/artiste?id=22', 4, 'Bring Me The Horizon', 'artist'),
(53, 'http://localhost/nightlives/event?id=7', 1, 'Evenement 20 Mai', 'event'),
(54, 'http://localhost/nightlives/event?id=12', 5, 'Vielles Charrues', 'event'),
(55, 'http://localhost/nightlives/error', 239, '404 Error', 'page'),
(56, 'http://localhost/nightlives/admin/nightlives/admin/error', 1, NULL, NULL),
(57, 'http://localhost/nightlives/event?id=10', 6, 'Silverstein Warmaudio', 'event'),
(58, 'http://localhost/nightlives/artiste?id=20', 1, 'Silverstein', 'artist'),
(59, 'http://localhost/nightlives/artiste?id=18', 3, 'Forgot Shift', 'artist'),
(60, 'http://localhost/nightlives/users', 466, 'Membres', 'page'),
(61, 'http://localhost/nightlives/artiste?id=25', 2, '12', 'artist'),
(62, 'http://localhost/nightlives/artiste?id=40', 3, 'MUSE', 'artist'),
(63, 'http://localhost/nightlives/artiste?name=muse', 4, 'MUSE', 'artist'),
(64, 'http://localhost/nightlives/artiste?name=david-guetta', 3, 'David Guetta', 'artist'),
(65, 'http://localhost/nightlives/artiste?name=geminhya', 1, 'geminhya', 'artist'),
(66, 'http://localhost/nightlives/artiste?name=skrillex', 1, 'Skrillex', 'artist'),
(67, 'http://localhost/nightlives/artiste?name=daft-punk', 1, 'Daft Punk', 'artist'),
(68, 'http://localhost/nightlives/artiste?name=test', 2, 'TEST', 'artist'),
(69, 'http://localhost/nightlives/artiste?name=tchami', 1, 'Tchami', 'artist'),
(70, 'http://localhost/nightlives/artiste/muse', 17, 'MUSE', 'artist'),
(71, 'http://localhost/nightlives/artiste/geminhya', 1, 'geminhya', 'artist'),
(72, 'http://localhost/nightlives/artiste/skrillex', 1, 'Skrillex', 'artist'),
(73, 'http://localhost/nightlives/artiste/kyo', 2, 'Kyo', 'artist'),
(74, 'http://localhost/nightlives/artiste/stromae', 1, 'Stromae', 'artist'),
(75, 'http://localhost/nightlives/artiste/test', 1, 'TEST', 'artist'),
(76, 'http://localhost/nightlives/event?name=silverstein-warmaudio', 1, 'Silverstein Warmaudio', 'event'),
(77, 'http://localhost/nightlives/event/silverstein-warmaudio', 16, 'Event : Nom', 'event'),
(78, 'http://localhost/nightlives/artiste/silverstein', 1, 'Silverstein', 'artist'),
(79, 'http://localhost/nightlives/artiste/david-guetta', 1, 'David Guetta', 'artist'),
(80, 'http://localhost/nightlives/event?id=13', 2, 'Event : Nom', 'event'),
(81, 'http://localhost/nightlives/event/ultra-music-festival', 1, 'Ultra Music festival', 'event'),
(82, 'http://localhost/nightlives/contribuer', 438, 'Contribuer', 'page'),
(83, 'http://localhost/nightlives/contribuer?libelle=&date_deb=&date_fin=&id_type_event=0&id_lieu=0&autocomplete%5Bartistes%5D=&Informations=', 5, 'Contribuer', 'page'),
(84, 'http://localhost/nightlives/event/muse-a-la-tour-eiffel', 19, 'Event : Nom', 'event'),
(85, 'http://localhost/nightlives/event/default/nightlives_default_user.jpg', 3, 'Event : Nom', 'event'),
(86, 'http://localhost/nightlives/artiste/bring-me-the-horizon', 1, 'Bring Me The Horizon', 'artist'),
(87, 'http://localhost/nightlives/artistes?page=2', 2, 'Artistes : Tous', 'page'),
(88, 'http://localhost/nightlives/artistes?type=all', 2, 'Artistes : Tous', 'page'),
(89, 'http://www.nightlives.fr/nightlives/', 152, 'Accueil', 'page'),
(90, 'http://nightlives.fr/nightlives/', 168, 'Accueil', 'page'),
(91, 'http://nightlives.fr/nightlives/event/muse-a-la-tour-eiffel', 13, 'Event : Nom', 'event'),
(92, 'http://nightlives.fr/nightlives/artiste/muse', 1, 'MUSE', 'artist'),
(93, 'http://nightlives.fr/nightlives/artiste/test', 1, 'TEST', 'artist'),
(94, 'http://nightlives.fr/nightlives/artistes', 54, 'Artistes : Tous', 'page'),
(95, 'http://nightlives.fr/nightlives/artistes?page=2', 16, 'Artistes : Tous', 'page'),
(96, 'http://nightlives.fr/nightlives/artistes?type=all', 6, 'Artistes : Tous', 'page'),
(97, 'http://nightlives.fr/nightlives/artistes?type=electro', 66, 'Artistes : Electro', 'page'),
(98, 'http://nightlives.fr/nightlives/error', 136, '404 Error', 'page'),
(99, 'http://nightlives.fr/nightlives/event/silverstein-warmaudio', 8, 'Event : Nom', 'event'),
(100, 'http://nightlives.fr/nightlives/contribuer', 3, 'Contribuer', 'page'),
(101, 'http://nightlives.fr/nightlives/artiste/bring-me-the-horizon', 5, 'Bring Me The Horizon', 'artist'),
(102, 'http://www.nightlives.fr/nightlives/error', 40, '404 Error', 'page'),
(103, 'http://www.nightlives.fr/nightlives/contribuer', 3, 'Contribuer', 'page'),
(104, 'http://www.nightlives.fr/nightlives/artistes', 6, 'Artistes : Tous', 'page'),
(105, 'http://www.nightlives.fr/nightlives/artiste/forgot-shift', 1, 'Forgot Shift', 'artist'),
(106, 'http://www.nightlives.fr/nightlives/event/muse-a-la-tour-eiffel', 1, 'Event : Nom', 'event'),
(107, 'http://nightlives.fr/nightlives/event/rencarts-de-la-scene', 4, 'Event : Nom', 'event'),
(108, 'http://www.nightlives.fr/nightlives/event?id=11', 1, 'Event : Nom', 'event'),
(109, 'http://www.nightlives.fr/nightlives/artiste?id=28', 1, 'David Guetta', 'artist'),
(110, 'http://www.nightlives.fr/nightlives/artiste/kyo', 2, 'Kyo', 'artist'),
(111, 'http://www.nightlives.fr/nightlives/artiste/test', 1, 'TEST', 'artist'),
(112, 'http://nightlives.fr/nightlives/users', 18, 'Membres', 'page'),
(113, 'http://nightlives.fr/nightlives/artiste/tchami', 7, 'Tchami', 'artist'),
(114, 'http://nightlives.fr/nightlives/event?id=15', 13, 'Event : Nom', 'event'),
(115, 'http://nightlives.fr/nightlives/artiste/dj-snake', 6, 'DJ Snake', 'artist'),
(116, 'http://nightlives.fr/nightlives/event?id=14', 1, 'Event : Nom', 'event'),
(117, 'http://www.nightlives.fr/nightlives/artistes?type=pop', 2, 'Artistes : Pop', 'page'),
(118, 'http://nightlives.fr/nightlives/event/ultra-europe', 16, 'Event : Nom', 'event'),
(119, 'http://nightlives.fr/nightlives/artiste/diplo', 18, 'Diplo', 'artist'),
(120, 'http://www.nightlives.fr/nightlives/artistes?type=all', 2, 'Artistes : Tous', 'page'),
(121, 'http://www.nightlives.fr/nightlives/artiste/songhoy-blues', 6, 'Songhoy Blues', 'artist'),
(122, 'http://nightlives.fr/nightlives/event/rise-up-tour', 4, 'Event : Nom', 'event'),
(123, 'http://nightlives.fr/nightlives/artiste/skrillex', 2, 'Skrillex', 'artist'),
(124, 'http://nightlives.fr/nightlives/artiste/nothing-more', 1, 'Nothing More', 'artist'),
(125, 'http://nightlives.fr/nightlives/artiste/songhoy-blues', 1, 'Songhoy Blues', 'artist'),
(126, 'http://nightlives.fr/nightlives/artiste/martin-garrix', 5, 'Martin Garrix', 'artist'),
(127, 'http://nightlives.fr/nightlives/artiste/radiohead', 1, 'Radiohead', 'artist'),
(128, 'http://nightlives.fr/nightlives/event/pardon-my-french-in-paris', 2, 'Event : Nom', 'event'),
(129, 'http://nightlives.fr/nightlives/event/world-club-dome', 3, 'Event : Nom', 'event'),
(130, 'http://nightlives.fr/nightlives/event/pmf-(back-in-paris)', 2, 'Event : Nom', 'event'),
(131, 'http://nightlives.fr/nightlives/event?id=21', 1, 'Event : Nom', 'event'),
(132, 'http://nightlives.fr/nightlives/event/tomorrowland-2016', 1, 'Event : Nom', 'event'),
(133, 'http://nightlives.fr/nightlives/event?id=22', 1, 'Event : Nom', 'event'),
(134, 'http://www.nightlives.fr/nightlives/event?id=22', 4, 'Event : Nom', 'event'),
(135, 'http://nightlives.fr/nightlives/event?id=20', 2, 'Event : Nom', 'event'),
(136, 'http://nightlives.fr/nightlives/artistes?type=rock', 4, 'Artistes : Rock', 'page'),
(137, 'http://nightlives.fr/nightlives/artistes?type=pop', 2, 'Artistes : Pop', 'page'),
(138, 'http://nightlives.fr/nightlives/artiste/kendji-girac', 3, 'Kendji Girac', 'artist'),
(139, 'http://nightlives.fr/nightlives/event/mysteryland', 2, 'Event : Nom', 'event'),
(140, 'http://nightlives.fr/', 361, 'Accueil', 'page'),
(141, 'http://nightlives.fr/error', 737, '404 Error', 'page'),
(142, 'http://nightlives.fr/event/tomorrowland-2016', 5, 'Event : Nom', 'event'),
(143, 'http://nightlives.fr/artistes', 80, 'Artistes : Tous', 'page'),
(144, 'http://www.nightlives.fr/error', 63, '404 Error', 'page'),
(145, 'http://nightlives.fr/event/mysteryland', 24, 'Event : Nom', 'event'),
(146, 'http://nightlives.fr/event/vielles-charrues', 1, 'Event : Nom', 'event'),
(147, 'http://nightlives.fr/artistes?page=2', 30, 'Artistes : Tous', 'page'),
(148, 'http://nightlives.fr/artiste/martin-garrix', 21, 'Martin Garrix', 'artist'),
(149, 'http://www.nightlives.fr/', 82, 'Accueil', 'page'),
(150, 'http://nightlives.fr/event/ultra-europe', 6, 'Event : Nom', 'event'),
(151, 'http://nightlives.fr/event/la-clairiere-:-feadz-&-borussia', 3, 'Event : Nom', 'event'),
(152, 'http://nightlives.fr/event/ultra-music-festival', 7, 'Event : Nom', 'event'),
(153, 'http://www.nightlives.fr/event/tomorrowland-2016', 2, 'Event : Nom', 'event'),
(154, 'http://www.nightlives.fr/users', 2, 'Membres', 'page'),
(155, 'http://nightlives.fr/users', 34, 'Membres', 'page'),
(156, 'http://nightlives.fr/event/radiohead---world-tour-2016', 1, 'Event : Nom', 'event'),
(157, 'http://nightlives.fr/artiste?id=42', 2, 'Radiohead', 'artist'),
(158, 'http://nightlives.fr/artiste/dj-snake', 3, 'DJ Snake', 'artist'),
(159, 'http://nightlives.fr/artiste/diplo', 5, 'Diplo', 'artist'),
(160, 'http://nightlives.fr/artiste/mondragora', 12, 'Mondragora', 'artist'),
(161, 'http://nightlives.fr/artistes?page=3', 8, 'Artistes : Tous', 'page'),
(162, 'http://nightlives.fr/artistes?type=all', 16, 'Artistes : Tous', 'page'),
(163, 'http://nightlives.fr/artistes?type=electro', 14, 'Artistes : Electro', 'page'),
(164, 'http://nightlives.fr/artistes?type=pop', 2, 'Artistes : Pop', 'page'),
(165, 'http://nightlives.fr/artiste?id=50', 1, 'Mondragora', 'artist'),
(166, 'http://nightlives.fr/artiste/slipknot', 3, 'Slipknot', 'artist'),
(167, 'http://nightlives.fr/artistes?type=rock', 4, 'Artistes : Rock', 'page'),
(168, 'http://nightlives.fr/artiste/louane', 2, 'Louane', 'artist'),
(169, 'http://nightlives.fr/artiste/bullet-for-my-valentine', 5, 'Bullet For My Valentine', 'artist'),
(170, 'http://nightlives.fr/artiste/kendji-girac', 2, 'Kendji Girac', 'artist'),
(171, 'http://nightlives.fr/event/pmf-(back-in-paris)', 5, 'Event : Nom', 'event'),
(172, 'http://nightlives.fr/event/we-are-rave', 9, 'Event : Nom', 'event'),
(173, 'http://nightlives.fr/event/fakear', 3, 'Event : Nom', 'event'),
(174, 'http://www.nightlives.fr/artiste/martin-garrix', 3, 'Martin Garrix', 'artist'),
(175, 'http://nightlives.fr/event/muse-a-la-tour-eiffel', 3, 'Event : Nom', 'event'),
(176, 'http://nightlives.fr/event/world-club-dome', 34, 'Event : Nom', 'event'),
(177, 'http://nightlives.fr/artiste/disclosure', 12, 'Disclosure', 'artist'),
(178, 'http://nightlives.fr/artiste/12', 4, '12', 'artist'),
(179, 'http://nightlives.fr/artiste/bring-me-the-horizon', 6, 'Bring Me The Horizon', 'artist'),
(180, 'http://nightlives.fr/artiste/stromae', 1, 'Stromae', 'artist'),
(181, 'http://nightlives.fr/event?id=20', 2, 'Event : Nom', 'event'),
(182, 'http://nightlives.fr/event/rise-up-tour', 2, 'Event : Nom', 'event'),
(183, 'http://nightlives.fr/artiste?id=28', 1, 'David Guetta', 'artist'),
(184, 'http://nightlives.fr/artiste?id=48', 4, 'Martin Garrix', 'artist'),
(185, 'http://nightlives.fr/artiste?id=22', 2, 'Bring Me The Horizon', 'artist'),
(186, 'http://nightlives.fr/artiste/mandragora', 2, 'Mandragora', 'artist'),
(187, 'http://nightlives.fr/artiste?id=17', 1, 'Bullet For My Valentine', 'artist'),
(188, 'http://nightlives.fr/artistes?page=1', 2, 'Artistes : Tous', 'page'),
(189, 'http://localhost/wedo/error', 1444, '404 Error', 'page'),
(190, 'http://localhost/wedo/', 76, 'Accueil', 'page'),
(191, 'http://localhost/wedo/artistes', 14, 'Artistes : Tous', 'page'),
(192, 'http://localhost/wedo/artiste/bring-me-the-horizon', 1, 'Bring Me The Horizon', 'artist'),
(193, 'http://localhost/wedo/event/radiohead---world-tour-2016', 2, 'Event : Nom', 'event'),
(194, 'http://localhost/wedo/event/mysteryland', 9, 'Event : Nom', 'event'),
(195, 'http://localhost/wedo/event/rencarts-de-la-sc%EF%BF%BD%EF%BF%BDne', 4, 'Event : Nom', 'event'),
(196, 'http://localhost/wedo/event/vielles-charrues', 6, 'Event : Nom', 'event'),
(197, 'http://localhost/wedo/artiste/bullet-for-my-valentine', 1, 'Bullet For My Valentine', 'artist'),
(198, 'http://localhost/wedo/artistes?type=all', 6, 'Artistes : Tous', 'page'),
(199, 'http://localhost/wedo/artiste/stromae', 4, 'Stromae', 'artist'),
(200, 'http://localhost/wedo/users', 2, 'Membres', 'page'),
(201, 'http://localhost/wedo/artiste/david-guetta', 7, 'David Guetta', 'artist'),
(202, 'http://localhost/wedo/event?id=12', 2, 'Event : Nom', 'event'),
(203, 'http://localhost/wedo/artiste/diljit', 1, 'Diljit', 'artist'),
(204, 'http://localhost/wedo/event/tomorrowland-2016', 6, 'Event : Nom', 'event'),
(205, 'http://localhost/wedo/event/world-club-dome', 2, 'Event : Nom', 'event'),
(206, 'http://localhost/wedo/event/ultra-music-festival', 4, 'Event : Nom', 'event'),
(207, 'http://localhost/wedo/event/test', 2, 'Event : Nom', 'event'),
(208, 'http://localhost/wedo/event?id=25', 2, 'Event : Nom', 'event'),
(209, 'http://localhost/wedo/event/test1', 2, 'Event : Nom', 'event'),
(210, 'http://localhost/wedo/event/', 1, 'Event : Nom', 'event'),
(211, 'http://localhost/wedo/event/test2', 1, 'Event : Nom', 'event');

-- --------------------------------------------------------

--
-- Structure de la table `slide`
--

CREATE TABLE IF NOT EXISTS `slide` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_media` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `lien` varchar(255) DEFAULT NULL,
  `archive` int(11) DEFAULT NULL,
  `ordre` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `slide`
--

INSERT INTO `slide` (`id`, `id_media`, `title`, `subtitle`, `lien`, `archive`, `ordre`) VALUES
(2, 34, 'Bullet For My Valentine', 'Le retour', 'http://nightlives.fr/artiste/bullet-for-my-valentine', 0, 0),
(3, 113, 'Stromae', 'Stromae', 'http://nightlives.fr/artiste/stromae', 0, 0),
(6, 88, 'BMTH, Le retour', 'Ecoutez le nouvel album du groupe', 'http://nightlives.fr/artiste/bring-me-the-horizon', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `type_evenement`
--

CREATE TABLE IF NOT EXISTS `type_evenement` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `libelle` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `type_evenement`
--

INSERT INTO `type_evenement` (`id`, `libelle`) VALUES
(1, 'Festival'),
(2, 'Soirée'),
(3, 'Concert');

-- --------------------------------------------------------

--
-- Structure de la table `type_media`
--

CREATE TABLE IF NOT EXISTS `type_media` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `libelle` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `type_musique`
--

CREATE TABLE IF NOT EXISTS `type_musique` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `libelle` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `type_user`
--

CREATE TABLE IF NOT EXISTS `type_user` (
  `id` int(1) NOT NULL,
  `libelle` text NOT NULL,
  `droits` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL DEFAULT '',
  `prenom` varchar(255) NOT NULL DEFAULT '',
  `ville` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `pseudo` varchar(15) NOT NULL,
  `id_media` int(5) NOT NULL,
  `access_token` char(32) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `mdp` varchar(255) DEFAULT NULL,
  `date_inscription` date DEFAULT NULL,
  `archive` int(11) DEFAULT NULL,
  `mini_bio` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=90 ;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`id`, `nom`, `prenom`, `ville`, `email`, `pseudo`, `id_media`, `access_token`, `status`, `mdp`, `date_inscription`, `archive`, `mini_bio`) VALUES
(73, 'Sehnoun', 'Nadir', 'Malakoff', 'sehnounnadir@yahoo.fr', 'Nadyro', 172, '5b16c6a7f4146f7146d04f8304b0232c', 2, 'd6c58ee6bd2765154051b3e9be58df5a', '2016-07-23', 0, 'BÃ©bÃ© Nightliver');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
