CREATE DATABASE IF NOT EXISTS myAPI;
use myAPI;

-- Création de la table products
CREATE TABLE IF NOT EXISTS products (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    picture VARCHAR(255),
    description TEXT NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    createdAt timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updatedAt timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  ON UPDATE CURRENT_TIMESTAMP
);

-- Insertion de données par défaut dans la table products
INSERT INTO products (name, picture, description, price) VALUES
    ('Boaedon (Lamprophis) fuliginosus, albinos', 'https://www.lafermetropicale.com/4326-large_default/boaedon-lamprophis-fuliginosus-albinos-femelle-adulte.jpg', "Boaedon fuliginosus, aussi nommé Lamprophis fuliginosus, est un serpent de petite taille (entre 50 et 100 cm) de la famille des Lamprophidés. Il occupe une grande partie de l'Afrique occidentale et centrale. Les femelles sont plus grandes que les mâles. Abondant en milieu naturel, il occupe les zones rurales et les savanes sèches. Il est notamment présent autour des habitations, ce qui lui a valu son nom commun de 'Serpent des maisons africain'. Sa couleur peut varier du brun orangé au noir en fonction de son origine géographique. Semi-fouisseur, il aime se réfugier dans les terriers ou se cacher dans un substrat humide. Il n'est cependant pas rare de le voir grimper lorsqu'il en a la possibilité. En captivité, c'est une espèce prolifique (jusqu'à quatre pontes par an !) et facile d'élevage. Les reproductions doivent être limitées afin de ne pas épuiser la femelle. Il est donc souhaitable de ne pas maintenir des couples ensemble à l'année.", 145.00),
    ('Coelognathus (Elaphe) radiatus, albinos', 'https://www.lafermetropicale.com/2550-large_default/coelognathus-elaphe-radiatus-albinos.jpg', "Coelognathus radiatus (anciennement Elaphe radiata) est une couleuvre asiatique que l'on peut rencontrer sur une très large aire de répartition. Elle habite donc des biotopes aussi variés que des forêts humides, des plantations, ou au bord de points d'eau. Généralement diurne, c'est une espèce terrestre même si elle grimpe avec une grande agilité. Son alimentation est constituée de rongeurs et autres petits mammifères. Elle est aisément reconnaissable grâce à ses 3 bandes noires qui rayonnent autour de l'oeil, et à la bande noire qui forme un collier au niveau du cou. En cas de menace, elle gonfle sa gorge et adopte une posture typique en S, la gueule ouverte.", 159.00),
    ('Eryx (Gongylophis) colubrinus loveridgei', 'https://www.lafermetropicale.com/2633-large_default/eryx-gongylophis-colubrinus-loveridgei.jpg',"Ce boa fouisseur originaire du Kenya et de Tanzanie est très facile à élever et à reproduire. Il reste de petite taille, mesurant environ 45 cm pour les mâles et 80 cm pour les femelles. Il s'alimente goulûment de souris ou de rats de petite taille, est très calme et se présente communément en deux couleurs : jaune sur fond marron/noir ou orange sur fond marron/noir. C'est un boa qui tolère des conditions de maintien variées tant qu'elles restent évidemment dans les limites du raisonnable.", 125.00),
    ('Lampropeltis (pyromelana) knoblochi', 'https://www.lafermetropicale.com/4407-large_default/lampropeltis-pyromelana-knoblochi.jpg', "Cette espèce occupe un territoire très restreint, en effet on peut la trouver au Mexique dans la région 'Chihuahua' ou encore aux USA dans le sud de l'Arizona. C'est un serpent très opportuniste capable de manger tout type de proie : lézards, rongeurs, serpents etc.", 175.00),
    ('Lampropeltis triangulum hondurensis, hypo. tricolor', 'https://www.lafermetropicale.com/4449-large_default/lampropeltis-triangulum-hondurensis-hypo-tricolor.jpg', "Spécimen hypomélanistique de la forme naturelle 'tricolor'. Lampropeltis triangulum hondurensis est un des plus grands représentants du genre, atteignant une taille adulte moyenne de 120 à 140 cm. Certains spécimens dépassent cette longueur. Comme son nom l'indique, on le trouve principalement au Honduras mais également dans une partie du Costa Rica, où il occupe les forêts tropicales humides. Le régime alimentaire se compose surtout de rongeurs mais aussi de lézards, petits serpents et oisillons. Il existe deux formes à l'état naturel : la forme classique dite tricolor, avec du blanc ou du jaune entre les bandes noires, et la forme tangerine, avec de l'orange prononcé entre les bandes noires. De nombreuses phases (anérythristique, albinos) existent en captivité.", 195.00),
    ('Morelia spilota harrisoni', 'https://www.lafermetropicale.com/4879-large_default/morelia-spilota-harrisoni-2023.jpg', "Ce python tapis atteint une taille inférieure à deux mètres, souvent au alentour de 150 cm. C'est un serpent qui convient tout à fait pour débuter car même si les juvéniles sont souvent agressifs les premiers mois, ils se calment très rapidement. Ses exigences en matière de maintien sont faciles à couvrir dès lors que le terrarium qui l'accueille reste de type tropical.", 195.00),
    ('Opheodrys aestivus aestivus', 'https://www.lafermetropicale.com/5121-large_default/opheodrys-aestivus-aestivus.jpg', "pheodrys aestivus est une petite couleuvre du sud-est des États-Unis, qui possède une particularité étonnante dans le monde des serpents : en effet, c'est une espèce insectivore ! Principalement arboricole, cette couleuvre occupe généralement les abords des forêts, souvent près des points d'eau, et se nourrit de toutes sortes d'arthropodes et de vers. Elle mesure entre 60 et 80 cm à l'âge adulte.", 125.00),
    ('Pantherophis (Elaphe) obsoletus lindheimeri, leucistique', 'https://www.lafermetropicale.com/2514-large_default/pantherophis-elaphe-obsoletus-lindheimeri-leucistique.jpg', "Cette Elaphe texane d'une taille adulte avoisinant 1,6 m est fréquente en terrarium. Ce serpent à la robe blanche se nourrit comme tous ses congénères de la même espèce et se reproduit très bien en captivité. Sa maintenance ne présente pas de difficulté particulière.", 295.00),
    ('Pantherophis guttatus, albinos motley', 'https://www.lafermetropicale.com/2263-large_default/pantherophis-guttatus-albinos-motley.jpg', "La forme motley représente un dessin dorsal continu de forme semblable à une échelle. Les motley existent en de nombreuses combinaisons de couleur, dont l'albinisme. Cette espèce est probablement le serpent le plus souvent reproduit chez les terrariophiles. Un changement de classification place désormais cette couleuvre américaine dans le genre Pantherophis, il faut donc désormais parler de Pantherophis guttatus (anciennement Elaphe guttata). Tous nos spécimens sont de bons mangeurs et acceptent pour la plupart des proies décongelées.", 69.00),
    ('Pantherophis guttatus, caramel cinder', 'https://www.lafermetropicale.com/17910-large_default/pantherophis-guttatus-caramel-cinder.jpg', "Cette espèce est probablement le serpent le plus souvent reproduit chez les terrariophiles. Un changement de classification place désormais cette couleuvre américaine dans le genre Pantherophis, il faut donc désormais parler de Pantherophis guttatus (anciennement Elaphe guttata). Tous nos spécimens sont de bons mangeurs et acceptent pour la plupart des proies décongelées.", 79.00),
    ('Pantherophis guttatus, honey tessera', 'https://www.lafermetropicale.com/17551-large_default/pantherophis-guttatus-honey-tessera.jpg', "Cette espèce est probablement le serpent le plus souvent reproduit chez les terrariophiles. Un changement de classification place désormais cette couleuvre américaine dans le genre Pantherophis, il faut donc désormais parler de Pantherophis guttatus (anciennement Elaphe guttata). Tous nos spécimens sont de bons mangeurs et acceptent pour la plupart des proies décongelées.", 95.00),
    ('Philothamnus semivariegatus', 'https://www.lafermetropicale.com/5308-large_default/philothamnus-semivariegatus.jpg', "Ce serpent vert arboricole africain peut atteindre une taille variant de 90 à 130 cm adulte. Il peut être problématique à nourrir et doit être réservé aux amateurs consciencieux. Le terrarium doit être spacieux, bien fourni en branchages et de type arboricole tropical. Il lui faudra également plusieurs cachettes compte tenu de la tendance au stress de cet animal. Son régime composé exclusivement de lézards et d'amphibiens est vivement recommandé pour le maintien de ce serpent. Même si certains individus acceptent les rongeurs, ce régime peut s'avérer problématique sur le long terme.", 75.00),
    ('Python regius, orange dream yellow belly', 'https://www.lafermetropicale.com/12528-large_default/python-regius-orange-dream-yellow-belly.jpg', "C'est le fameux Python royal. D'une taille adulte raisonnable (90 à 140 cm), c'est un serpent docile. Les femelles sont plus grandes que les mâles. De nombreuses 'mutations' sont disponibles en élevage, donnant accès à de nombreuses colorations et à divers patterns qui rendent chaque individu unique. Le python royal vit dans les savanes semi-arides d'Afrique de l'Ouest. Il a donc besoin d'un environnement chaud. C'est un serpent principalement terrestre, il faudra par conséquent privilégier la surface au sol mais il grimpera volontiers s'il en a la possibilité.", 185.00);

-- Création de la table users
CREATE TABLE IF NOT EXISTS users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    firstname VARCHAR(255) NOT NULL,
    lastname VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    token VARCHAR(255),
    role VARCHAR(255) NOT NULL DEFAULT 'user',
    /* address_id INT CONSTRAINT `users_ibfk_1` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION, */
    createdAt timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updatedAt timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  ON UPDATE CURRENT_TIMESTAMP
);

-- Insertion de données par défaut dans la table users
/* INSERT INTO users (firstname, lastname, email, password, role) VALUES
    ('Admin', '1', 'admin@gmail.com', 'password', 'admin'),
    ('User', '1', 'user@gmail.com', 'password', 'user'); */

-- Création de la table addresses
CREATE TABLE IF NOT EXISTS addresses (
    id INT PRIMARY KEY AUTO_INCREMENT,
    road VARCHAR(255) NOT NULL,
    postalCode VARCHAR(255) NOT NULL,
    city VARCHAR(255) NOT NULL,
    country VARCHAR(255) NOT NULL,
    createdAt timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updatedAt timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  ON UPDATE CURRENT_TIMESTAMP,
    user_id INT
);
