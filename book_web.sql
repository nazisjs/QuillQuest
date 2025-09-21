-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Сен 21 2025 г., 15:48
-- Версия сервера: 10.4.32-MariaDB
-- Версия PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `book_web`
--

-- --------------------------------------------------------

--
-- Структура таблицы `book_information`
--

CREATE TABLE `book_information` (
  `book_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `genre` varchar(100) DEFAULT NULL,
  `book_image` varchar(255) NOT NULL,
  `release_date` int(11) DEFAULT NULL,
  `isbn` varchar(20) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `price` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `book_information`
--

INSERT INTO `book_information` (`book_id`, `title`, `author`, `genre`, `book_image`, `release_date`, `isbn`, `description`, `price`) VALUES
(1, 'The Thirteen Problems', 'Agatha Christie', 'Detective', 'thirteen problems.png', 1932, '978-5-04-112453-3', 'The Thirteen Problems is a collection of short mysteries from the Queen of Crime Fiction, Agatha Christie. ', '₽1065'),
(2, 'The Hound Of Baskervilles', 'Arthur Conan', 'Crime', 'arthur conan basker.png', 1939, '978-1-84466-300-2', 'The Hound of the Baskervilles is a Sherlock Holmes novel written by his creator, the British author and physician Arthur Conan Doyle, and published in 1902. ', '₽4102'),
(3, 'The Adolescent', 'Fyodor Dostoyevsky', 'Fiction', 'dostoyevskiiadole.png', 1875, '978-5-389-22680-7', 'Arkady Makarovich Dolgoruky is the adopted son of the former serf Makar Ivanovich Dolgoruky and the illegitimate son of the provincial nobleman Andrei Petrovich Versilov. ', '₽1266'),
(4, 'Eugene Onegin', 'Aleksandr Pushkin', 'Novel', 'puskin.jpg', 1832, '978-5-521-00552-9', '“Eugene Onegi” by Alexander Pushkin is a renowned novel in verse that tells the story of a jaded aristocrat named Eugene Onegin and his encounters with love, friendship, and regret. ', '₽2419'),
(5, 'Harry Potter and the philosopher\'s stone', 'Joanne Rowling', 'Fantasy', 'harry potter.png', 1997, '978-5-389-13621-2', 'This is the tale of Harry Potter (Daniel Radcliffe), an ordinary eleven-year-old boy serving as a sort of slave for his aunt and uncle who learns that he is actually a wizard.', '₽3671'),
(6, 'Alice\'s Adventures in Wonderland', 'Lewis Carroll', 'Fantasy', 'alice adventures in wonderland.png', 1865, '978-5-7873-1417-5', 'Originally intended for children, the novel has become a perennial favorite of adults thanks to Carroll’s sophisticated wordplay and humor. ', '₽8280'),
(7, 'In Search Of Lost Time', 'Marcel Proust', 'Novel', 'in search of lost time.png', 1927, '978-5-17-160688-6', '“In Search of Lost Time” is a novel by Marcel Proust that explores themes of memory, time, and the nature of human experience. ', '₽2623'),
(9, 'Adventures Of Sherlock Holmes', 'Doyle Conan', 'Adventure', 'The Adventures Of Sherlock Holmes.jpg', 1892, '978-5-699-55301-3', 'It is an old maxim of mine that when you have excluded the impossible, whatever remains, however improbable, must be the truth.', '₽4102'),
(10, 'Brave New World', 'Aldous Huxley', 'Science Fiction', 'bravenewworld.jpg', 1932, '978-5-17-136060-3\n', 'A vision of a future society where technology and conditioning control human behavior, leading to a loss of individuality and freedom.', '₽4605'),
(11, 'A Passage to India', 'E.M. Forster', ' Historical Fiction', 'passagetoindia.jpg', 1924, '978-5-17-105317-8', 'The complex relationships and tensions between British colonists and Indian citizens in colonial India, exploring themes of  friendship, and cultural misunderstanding.', '₽3491'),
(12, 'Native Son', 'Richard Wright', 'African-American Literature', 'nativeson.jpg', 1940, '9780060837563\nПодроб', 'Native Son is a novel written by the American author Richard Wright. It tells the story of 20-year-old Bigger Thomas, a black youth living in utter poverty.', '₽2825'),
(13, 'The Fantasy of the Middle Ages: An Epic Journey through Imaginary Medieval Worlds', 'Grollemond L, Keen B', 'Fantasy', 'fantasyofmiddle.jpg', 2022, '978-1-60606-758-1', 'This abundantly illustrated book is an illuminating exploration of the impact of medieval imagery on three hundred years of visual culture.', '₽1568'),
(15, 'The Lion, the Witch, and the Wardrobe', 'Clive Staples Lewis', 'Fantasy Novel', 'lionwitch.jpg', 1950, '978-5-04-119389-8\n', 'The story revolves around four siblings, Peter, Susan, Edmund, and Lucy, who discover a magical wardrobe that leads them into a mystical land called Narnia.', '₽2890'),
(16, 'To Kill a Mockingbird ', 'Harper Lee', 'Fiction', 'to kill a mockingbird.png', 1960, '978-5-9925-0617-4\n', 'To Kill a Mockingbird is a book set during the Great Depression in Maycomb, Alabama. The story unfolds through the viewpoint of a six-year-old girl Scout Finch. This brings a unique perspective to the story. Scout lives with her brother Jem and her widowed father, Atticus.', '₽2668'),
(18, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Classic', 'The Great Gatsby Cover.jpg', 1925, '978-1-782-12083-4', 'A tragic love story set in the Jazz Age, exploring themes of wealth, love, and the American Dream.', '₽1094'),
(19, 'Pride and Prejudice', 'Jane Austen', 'Romance', 'pride and justice.jpg', 1813, '978-5-6046122-3-1\n', 'A classic romance novel featuring Elizabeth Bennet and Mr. Darcy, exploring themes of social class and marriage in 19th-century England.', '₽1277'),
(20, 'The Hobbit', 'J.R.R. Tolkien', 'Fantasy', 'hobbit.jpg', 1937, '978-5-17-145371-8', 'The prequel to The Lord of the Rings, following Bilbo Baggins on his unexpected journey.', '₽1789'),
(21, 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 'Non-fiction', 'Sapiens.jpg', 2011, '978-5-00131-372-4\n', 'An exploration of the history of Homo sapiens, from the emergence of our species to the present day.', '₽2991'),
(22, 'The Da Vinci Code', 'Dan Brown', 'Thriller', 'da vinci code.png', 2003, '978-5-17-080852-6\n', 'A gripping thriller that follows symbologist Robert Langdon as he investigates a murder in the Louvre Museum, uncovering a centuries-old secret.', '₽331'),
(23, '1984', 'George Orwell', 'Science Fiction', '1984.png', 1949, '978-5-389-23681-3\n', 'A dystopian novel set in a totalitarian regime, exploring themes of surveillance, government control, and individual freedom.', '₽4500'),
(24, 'The Alchemist', 'Paulo Coelho', 'Philosophical fiction', 'the alchemist.jpg', 1988, '978-5-17-138828-7\n', 'A philosophical novel following Santiago, an Andalusian shepherd boy, on his journey to find his personal legend', '₽571'),
(26, 'Crime and Punishment', 'Fyodor Dostoevsky', 'Psychological fiction', 'Crime and Punishment.jpg', 1866, '978-5-38-924397-2\n', 'A psychological novel exploring themes of morality, guilt, and redemption through the story of Rodion Raskolnikov, a young student who commits a murder.', '₽4774'),
(27, 'The Picture of Dorian Gray', 'Oscar Wilde', 'Gothic fiction', 'The Picture Of Dorian Gray.jpg', 1890, '978-5-17-121597-2\n', 'A Gothic novel exploring the nature of beauty, morality, and corruption through the story of Dorian Gray, a young man who remains youthful while his portrait ages.', '₽467'),
(28, 'The Road', 'Cormac McCarthy', 'Post-apocalyptic fiction', 'The Road.jpg', 2006, '978-5-389-22065-2', 'A post-apocalyptic novel following a father and son as they journey across a desolate landscape, facing danger and despair in a world devastated by an unspecified cataclysm.', '₽7351'),
(30, 'The Hunger Games', 'Suzanne Collins', 'Dystopian', 'hunger games.jpg', 2008, '978-0-43902-348-1', 'The first book in the Hunger Games trilogy, set in a dystopian future where teenagers are forced to participate in a televised fight to the death.', '₽2361'),
(31, 'The Outsiders', 'Susan Eloise Hinton ', 'Young adult', 'Outsiders.jpg', 1967, '978-0-14038-572-4', 'Coming-of-age novel following Ponyboy Curtis and his gang of Greasers as they navigate the social divide between rich and poor in 1960s Oklahoma.', '₽6112'),
(32, 'The Sun Also Rises', 'Ernest Hemingway', 'Novel', 'The Sun Also Rises.jpg', 1926, '0743297334', 'Novel, following a group of expatriates as they travel from Paris to Spain, grappling with the aftermath of World War I and the lost generation.', '₽542'),
(33, 'War and Peace', 'Leo Tolstoy', 'Historical Fiction', 'war and peace.jpg', 1865, '978-0-14044-793-4', 'War and Peace is an epic novel about Russian society between 1805 and 1815, just before and after the Napoleonic invasion. Considered one of the greatest books ever written, it contains 559 characters, commemorates important military battles and portrays famous historical personalities but it is main theme is the chronicle of the lives of two main aristocratic families, the Rostovs and the Bolkonskys.', '₽5046'),
(34, 'The Divine Comedy', 'Dante Alighieri', 'Poem', 'divine comedy.jpg', 1321, '978-1-84022-166-4', '“The Divine Comedy” is at its heart a pilgrimage of the soul. Dante, our intrepid hero, finds himself lost in a dark forest that symbolizes the confusion and moral confusion of human existence.', '₽2530'),
(35, 'The Light in August', 'William Faulkner', 'Novel', 'light in august.jpg', 1932, '978-5-17-982844-0', 'Lena Grove, a young pregnant woman, leaves Alabama and travels to Jefferson, Mississippi, where she hopes to find Lucas Birch.', '₽3539'),
(36, 'Silent Spring', 'Rachel Carson', 'Environmentl Science', 'rachel carson.jpeg', 1962, '978-0-618-24906-0', ' Throughout the text, Carson highlights how humans ignore the interconnectedness of species on Earth, and argues that as a result, humans are at a tipping point. If insect control methods are not adjusted, people are likely to poison both the environment and their bodies beyond recognition.', '₽3486'),
(37, 'Gone with the Wind', 'Margaret Mitchell', 'Novel', 'gone with the wind book cover.jpg', 1936, '978-0-02-585390-4', 'This is an exciting historical novel set during and after the American Civil War. It tells the story of Scarlett O\'Hara, a strong-willed southern beauty who has to overcome the difficulties of war, love and loss, fighting to save the family plantation and her own future in a rapidly changing society.', '₽1988'),
(38, 'One Hundred Years of Solitude', ' Gabriel Garcia Marquez', 'Novel', 'one hundred years of solitude.jpg', 1967, '978-0-24-196858-1', '\'One Hundred Years of Solitude\', first published in Spanish in 1967 under the title \'Cien años de soledad\', is a world-famous work by Colombian writer Gabriel Garcia Marquez.', '₽4755'),
(39, 'The Grapes of Wrath', 'John Steinbeck', 'Novel', 'the grapes of wrath.jpg', 1939, '978-5-699-48609-0', 'The Grapes of Wrath is a 1939 novel by American writer John Steinbeck. The novel centers on the Joad family from Oklahoma, evicted from their farm after the dust storms of the 1930s that destroyed local crops. Having lost their land, the Joads go to California in search of work. Along the way, they face difficulties, prejudice and intimidation from the police. However, when they get to the place, the situation gets even worse. They are forced to live in squalid camps and find that migrant jobs are scarce and poorly paid.', '₽2400'),
(40, 'On the Road', 'Jack Kerouac', 'Novel', 'on the road.jpg', 1957, '978-0-14-004259-7', 'The novel explores the concepts of society, freedom and, above all, friendship.\n', '₽7351'),
(41, 'The Invisible Man', 'Ralph Ellison', 'Novel', 'invisible man.png', 1952, '978-5-00214-280-4', 'The novel \"The Invisible Man\" was published in 1952 and written by African-American writer Ralph Ellison. In 1953, he received the National Book Award for Fiction, and in 1985, Ellison was awarded the National Medal of Arts for his contributions to American literature.', '₽2781'),
(42, 'Catch-22', 'Joseph Heller', 'Satirical Novel', 'catch-22.jpg', 1961, '978-5-17-119484-0', 'Catch-22 is a satirical novel by Joseph Heller about World War II, published in 1961. The main character, Captain Yossarian, a bomber on the fictional island of Pianosa, is trying to avoid combat missions.', '₽2477'),
(43, 'Hamlet', 'William Shakespeare', 'Tragedy', 'Hamlet.png', 1601, '978-5-17-108159-1\n', '“Hamlet” is a tragedy that follows Prince Hamlet’s quest for revenge against his uncle, who has murdered his father, taken the throne, and married his mother. ', '₽3878'),
(44, 'Oedipus Rex', ' Sophocles', 'Tragedy', 'oedipus-rex.jpg', 406, '978-5-94865-882-7', ' A Greek tragedy that deals with the themes of fate, free will, and the nature of human suffering, centered around King Oedipus and his quest to avoid his foretold destiny.', '₽1656'),
(46, 'A Study in Scarlet', 'Arthur Conan Doyle', 'Detective, Crime', 'A study in Scarlet.jpg', 1887, '978-5-00214-165-4', ' The novel marks the first appearance of Sherlock Holmes and Dr. Watson, who investigate a murder involving a mysterious message written in blood.', '₽3533'),
(47, 'The Structure of Scientific Revolutions', 'Thomas S. Kuhn', 'Science', 'Structure pf scientific revolution.png', 1962, '978-5-17-122824-8', ' A landmark work in the philosophy of science, introducing the concept of paradigm shifts.', '₽938'),
(48, 'A Brief History of Time', 'Stephen Hawking', 'Science', 'A brief history of time.png', 1988, '978-5-17-152860-7', 'An overview of cosmology, discussing the Big Bang, black holes, and light cones.', '₽3533'),
(49, ' Cosmos', 'Carl Sagan', ' Science, Non-fiction', 'cosmos.jpg', 1980, '978-0-34-553943-4', ' A comprehensive guide to the universe, exploring science, philosophy, and the human experience.', '₽4519'),
(51, 'The Three Musketeers', 'Alexandre Dumas', 'Adventure, Historical Fiction', 'Three Musketeers.jpg', 1844, ' 978-0-45-153003-5', 'A swashbuckling tale of d’Artagnan and his friends Athos, Porthos, and Aramis as they defend the honor of the queen against the schemes of Cardinal Richelieu.', '₽2384'),
(52, ' Around the World in 80 Days', ' Jules Verne', 'Classic Adventure', 'Around the world 80 days.jpg', 1873, '978-1-84558-575-4\n', 'Phileas Fogg’s race against time to travel around the world in just 80 days, filled with unexpected challenges and adventures.', '₽1931'),
(54, 'The Count of Monte Cristo', 'Alexandre Dumas', 'Adventure Novel', 'The Count Of Monte Cristo.jpg', 1844, '978-0-14-044926-6', 'Edmond Dantès is wrongfully imprisoned, escapes, and seeks revenge against those who betrayed him, set in 19th-century France.', '₽5489'),
(55, 'Dune', 'Frank Herbert', 'Science-Fiction novel', 'Dune.jpg', 1965, '978-0-44-101359-3', 'Set on the desert planet Arrakis, this science fiction classic follows Paul Atreides as he navigates political intrigue and battles to control the valuable spice melange.', '₽2783'),
(56, 'Flying Over the Cuckoo\'s Nest', 'Ken Kesey', 'Historical Fiction', 'Cuckoo.jpg', 1962, '978-5-94962-076-2', ' Kesey drew on his experience at the veterans Hospital to criticize the psychiatric practice that existed at the time.\n', '₽314'),
(57, 'For Whom the Bell Tolls', 'Ernest Hemingway', 'Novel', 'From whom the bell tolls.png', 1940, '978-0-09928-982-1', 'An American named Robert Jordan, who left the United States to join the war on the Republican side, goes behind enemy lines to work with the Spanish guerrillas, or Guerilleros, hiding in the mountains. ', '₽6672'),
(58, 'Lord of the Flies', 'William Golding', 'Novel', 'lord of flies.jpg', 1954, '978-0-399-50148-7', 'Golding was knighted and became a member of the Royal Society of Literature. In 2008, the Times named him third in its list of \"The 50 Greatest British Writers since 1945.', '₽3632'),
(59, 'The Golden Notebook', 'Doris Lessing', 'Postmodern Novel', 'Gold notebook.png', 1962, '978-5-367-01068-8', 'The Golden Notebook tells the story of Anna Woolf, who explores four separate, fragmentary stories of her life written in four separate notebooks, trying to combine them into one golden notebook.\n', '₽1718'),
(60, 'Long Way Gone', 'Ishmael Beah', 'History', 'A long way gone.jpg', 2008, '978-0374531263', 'In A Long Way Gone, Beah, now twenty-five years old, tells a riveting story: how at the age of twelve, he fled attacking rebels and wandered a land rendered unrecognizable by violence.', '₽644'),
(61, 'Me Talk Pretty One Day', 'David Sedaris', 'Humor', 'Me talk pretty one day.jpg', 2001, '978-0316776967', 'A recent transplant to Paris, humorist David Sedaris, presents a collection of his strongest work yet, including the title story about his hilarious attempt to learn French. A number one national bestseller now in paperback.', '₽1104'),
(62, 'The Fault in Our Stars', 'John Green', 'Novel', 'The fault in our stars.jpg', 2011, '978-0142424179', 'Despite the tumor-shrinking medical miracle that has bought her a few years, Hazel has never been anything but terminal, her final chapter inscribed upon diagnosis. ', '₽2302'),
(63, 'Right Stuff', 'Tom Wolfe', 'Adventure, American History', 'Right stuff.jpg', 1979, '978-0312427566', 'Millions of words have poured forth about man\'s trip to the moon, but until now few people have had a sense of the most engrossing side of the adventure.', '₽1646'),
(64, 'The Stranger', 'Albert Camus', 'Thriller', 'The stranger.jpg', 1989, '978-0679720201', '“The Stranger is a strikingly modern text and Matthew Ward’s translation will enable readers to appreciate why Camus’s stoical anti-hero and devious narrator remains one of the key expressions of a postwar Western malaise, and one of the cleverest exponents of a literature of ambiguity.', '₽3292'),
(65, 'The Giver', 'Lois Lowry', 'Novel', 'The giver.jpg', 1993, '978-0385732550', 'Jonas\'s world is perfect. Everything is under control. There is no war or fear of pain. There are no choices. ', '₽2668'),
(66, 'Good Energy: The Surprising Connection Between Metabolism and Limitless Health', 'Casey Means', 'Psychology', 'Good energy.png', 2024, '978-0593712641', 'What if depression, anxiety, infertility, insomnia, heart disease, erectile dysfunction, type 2 diabetes, Alzheimer’s, dementia, cancer and many other health conditions that torture and shorten our lives actually have the same root cause? ', '₽2024'),
(67, 'Empire of Storms', 'Sarah J. Maas', 'Novel', 'Empire of storms.jpg', 2016, '978-1-63973-102-2', 'Kingdoms collide in Sarah J. Maas  epic fifth installment in the New York Times best-selling Throne of Glass series.The long path to the throne has only just begun for Aelin Galathynius. Loyalties have been broken and bought, friends have been lost and gained, and those who possess magic find themselves at odds with those don\'t.', '₽1380'),
(68, 'Rapunzel', 'Jacob Grimm', 'Fairy Tale', 'Rapunzel.jpg', 1998, ' 9781474939935', 'Rapunzel - young, beautiful girl sentenced to live in a tower. The evil Witch didn\'t let her go out, so the only person she knew was the Witch.', '₽1379'),
(69, 'How We Got to Now', 'Steven Johnson', 'Science', 'How we got now.jpg', 2015, '978-1594633935', 'In this illustrated history, Steven Johnson explores the history of innovation over centuries, tracing facets of modern life  from their creation by hobbyists, amateurs, and entrepreneurs to their unintended historical consequences.', '₽920'),
(70, 'Tesla: The Life and Times of an Electric Messiah ', 'Nigel Cawthorne', 'Science', 'Life and times electric messiah.jpg', 2014, '978-0785829447', 'Despite being incredibly popular during his time, Nikola Tesla today remains largely overlooked among lists of the greatest inventors and scientists of the modern era. Thomas Edison gets all the glory for discovering the light bulb, but it was his one-time assistant and lifelong arch nemesis, Tesla, who made the breakthrough in alternating current technology. Edison and Tesla carried on a bitter feud for years, but it was Tesla\'s AC generators that illuminated the 1893 World\'s Fair in Chicago; the first time that an event of such magnitude had ever taken place under artificial light. Today, all homes and electrical appliances run on Tesla\'s AC current.', '₽920'),
(71, 'Savannah\'s World of Adventure: Crossing the Andes', 'Thomas Turcich', 'Adventure', 'Savannah world adventure.jpg', 2023, '978-1088156827', 'Join Savannah, the first dog to walk around the world, as she explores the Andes Mountains.Beside her best friend, Tom, Savannah discovers harsh altiplano, daring vicuñas, and the wonderful people of Argentina.See the world one adventure at a time.Based on a true dog story.', '₽1288'),
(72, 'Force of Nature', 'Joan M. Griffin', 'Thriller', 'Force of nature.jpg', 2023, '978-1685132811', 'Three friends, women in their fifties, set out to hike \"the most beautiful long-distance trail in the world,\" the John Muir Trail. ', '₽1564'),
(73, 'Piano Adventures', 'Nancy Faber', 'Education', 'Piano adventures.jpg', 1996, '978-1616770785', 'Book introduces all the notes of the grand staff, elementary chord playing, and the concept of tonic and dominant notes.', '₽644'),
(74, 'Flowers for Algernon', 'Daniel Keyes', 'Fiction', 'Flowers for Algernon.jpg', 1966, '9780156030304', 'At the same time, he has a job, friends and an irresistible desire to study. He agrees to take part in a dangerous scientific experiment in the hope of becoming smart… ', '₽310'),
(75, 'Lake County', 'Lori Roy', 'Novel', 'Lake county.jpg', 1950, '978-1662519932', 'Desperate to break free of small-town Florida, Addie Anne Buckley dreams of following in the path of her glamorous aunt Jean―known to the world as Marilyn Monroe. ', '₽460'),
(76, 'Hot Dog Money: Inside the Biggest Scandal in the History of College Sports', 'Guy Lawson', 'Non-Fiction', 'Hot dog money.jpg', 2024, '1662519648', 'When the federal government catches hotshot financial adviser Louis Martin “Marty” Blazer defrauding his NFL-player clients, it’s time to come clean.', '₽459'),
(77, 'Little Women', 'Louisa Malcott', 'Novel', 'Little women.jpg', 1869, '978-5-17-163385-1', 'The civil war is going on far in the South, but its terrible echoes have reached the friendly family of a poor provincial pastor March — he himself went to the front as a regimental priest, and his wife and daughters, like many other American women, live day after day in fear of tragic news. ', '₽1344'),
(78, 'Me?', 'Peter Flamm', 'Classic', 'Me.png', 1926, '978-5-17-158160-2', 'A military doctor returns from the First World War to his wife, mother and newborn son. He longs for peace and family comfort, but the trauma of the war has split his soul and mind. ', '₽600'),
(79, 'Dandelion Wine', 'Ray Bradbury ', 'Novel', 'Dandelion wine.jpg', 1928, '978-5-04-179528-3', '\"Dandelion wine is summer caught and bottled.\" So is this book: it captures and records the summer of 1928, which twelve-year-old Douglas Spaulding spent in the small town of Gruntown. ', '₽655'),
(80, 'Three Men In A Boat', 'Jerome Klapka Jerome', 'Humour', 'Three men in a boat.jpg', 1979, '978-5-392-39890-4', 'This elegant story full of sparkling English humor about the wanderings along the Thames of three English gentlemen and a dog named Montmorency, who get into the most funny and curious situations.', '₽416'),
(81, 'Good Wives', 'Louisa May Alcott', 'Classic Proza', 'Good wives.jpg', 1869, '978-5-17-162272-5', 'The sisters face the trials of adulthood, but despite their different paths, they overcome difficulties together and find their happiness.', '₽1936'),
(82, 'The Adventures of Tom Sawyer', 'Mark Twain', 'Novel', 'The adventures of Tom Sawyer.jpg', 1876, '78-5-04-121707-5', 'And at the same time, they learned to make friends and love, support the weak, not be afraid of difficulties and make the right choice between good and evil. ', '₽3579'),
(83, 'Dracula', 'Bram Stoker', 'Thriller', 'Dracula.jpg', 1992, '978-5-17-157729-2', 'Bram Stoker\'s novel takes the form of an epistolary tale, in which Count Dracula\'s characteristics, powers, abilities, and weaknesses are narrated by multiple narrators, from different perspectives.', '₽2686'),
(84, 'Demian', 'Herman, Hesse', 'Novel', 'Demian.jpg', 1919, '978-5-17-156263-2', 'This is the story of growing up and becoming a young man who, step by step, moves further away from the hypocritical norms of public morality and discovers more and more clearly the deep, dark self — free, beyond the control of the virtuous pharisaism that reigns around.', '₽2146'),
(85, 'Lust for Life', ' Irving Stone', 'Novel', 'Lust for life.jpg', 1934, '978-5-17-117530-6', 'Vincent Van Gogh is a brilliant madman who, during his lifetime, experienced both the contempt of critics of painting and the complete misunderstanding of his fellow artists, and after his death was recognized as a great artist.', '₽2761'),
(86, 'The Time Machine', 'H. G. Wells', 'Post-Apocalyptic Science', 'Time Machine.jpg', 1895, '978-966-948-095-8', 'In this work, the author for the first time introduced the idea of time travel into fiction using a special device — a time machine.', '₽2486'),
(87, 'American Tragedy', 'Theodore Dreiser', 'Tragedy', 'An american tragedy.jpg', 2011, '978-5-04-176625-2', '\'American Tragedy\' is the pinnacle of Theodore Dreiser\'s work. An unsurpassed depiction of the harsh reality and the dark side of the American dream.', '₽921'),
(88, 'The Canterbury Tales', 'Geoffrey Chaucer', 'Novel', 'The Canterburry tales.jpg', 2011, '978-0-141-39321-6', 'With their astonishing diversity of tone and subject matter, The Canterbury Tales have become one of the touchstones of medieval literature. ', '₽2384'),
(89, 'Karlsson On The Roof', 'Astrid Lendger', 'Fairy Tale', 'Karlsson on the roof.jpg', 1995, '978-5-389-22270-0', 'Carlson, a mischievous and cheerful little man with a propeller on his back, is the brightest image of a carefree childhood for many generations of readers.', '₽1012'),
(90, 'Martin Eden', 'Jack London', 'Novel', 'Martin Eden.jpg', 1909, '978-5-04-177953-5 ', 'Martin Eden is an impoverished sailor who pursues, obsessively and aggressively, dreams of education and literary fame.\n', '₽2991'),
(91, 'White fang', 'Jack London', 'Novel', 'White fang.jpg', 1934, '978-5-17-117530-6', 'Vincent Van Gogh is a brilliant madman who, during his lifetime, experienced both the contempt of critics of painting and the complete misunderstanding of his fellow artists, and after his death was recognized as a great artist.', '₽1227'),
(92, 'A Time to Love and A Time to die', 'Erich Maria Remarque', 'Tragedy', 'A time to love and a time to die.png', 1954, '978-5-17-135265-3', 'The novel again refers the reader to the themes of war and the “lost generation”. His characters are trying to live, love, and believe at a time when death relentlessly follows everyone.', '₽1380'),
(93, 'Of Human Boundages', 'Somerset Maugham', 'Biographical Novel', 'Of Human Boundage.jpg', 2022, '978-5-17-147982-4', '\"Of Human Boundages\" is a novel of growing up, searching for oneself and the meaning of life. We have been watching the fate of Philip Carey since childhood until the age of 30.', '₽2668'),
(94, 'The Tenant Of Wildfell Hall', 'Anne Brontë', 'Psychology', 'The Tenant of Wildfell Hall.jpg', 1848, '978-5-17-153190-4', ' It tells the story of Helen Graham, a woman who leaves her alcoholic husband, taking her son with her. She then builds a successful career as an artist and marries another man. ', '₽1196'),
(95, 'The Adventures of Emil of Lenneberg', 'Lindgren Astrid', 'Adventure', 'The adventures of Emil.jpg', 1970, '978-5-389-17855-7 ', 'In the heart of Sweden, in a small village called Lenneberg, lives a restless boy with blue eyes. His name is Emile, and he\'s a great mischievous man. What incredible stories did not happen to him.', '₽839'),
(96, 'The Citadel', 'Archibald Cronin', 'Novel', 'The citadel.jpg', 2017, '978-5-389-13428-7', 'Andrew Manson comes to his first practice in his life with a noble goal: to help as many people as possible. He sincerely wants to become one of those who can truly glorify medicine. ', '₽2024'),
(97, 'Life', 'Guy de Maupassant', ' Satirical Novel', 'Life.jpg', 2024, '9788027332250', 'France in 1819. Young Jeanne, raised in a monastery, dreams of happiness. She and her parents should go to their castle by the sea, where she will spend the whole summer and, perhaps, it is there, on the coast, that she will meet the one who is destined for her.', '₽2208'),
(99, 'To yourself gently', 'Olga Primachenko', 'Psychology', 'Love Yourself tender.jpg', 2023, '978-5-04-193711-9', '\"To Yourself Gently\" is a new, very honest look at self-love. This is a book-meditation, which calls for an inner conversation and helps you hear your own voice among many others.', '₽856'),
(101, 'Blackberry winter', 'Sarah Gio', ' Contemporary Foreign Literature', 'Blackberry winter.jpg', 2017, '978-5-04-191107-2', '\"LOVE AS A GIFT\" - is a series of books with which any evening will become cozier and warmer. The best novels about love, which will give hope and make you believe in a miracle again.\n', '₽1472');

-- --------------------------------------------------------

--
-- Структура таблицы `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `contact`
--

INSERT INTO `contact` (`contact_id`, `name`, `email`) VALUES
(30, 'rjgjrgn', 'ktrnhh'),
(31, 'Aruna Murat', 'nmurat22@apec.edu.kz'),
(32, 'I got 2 books instead of 1', 'mnazerke89@gmail.com');

-- --------------------------------------------------------

--
-- Структура таблицы `customer_order`
--

CREATE TABLE `customer_order` (
  `order_id` int(11) NOT NULL,
  `book_name` varchar(255) NOT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `order_date` date DEFAULT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `card_number` varchar(255) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `tracking_number` varchar(10) DEFAULT NULL,
  `expected_date` date GENERATED ALWAYS AS (`order_date` + interval 1 month) STORED
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `customer_order`
--

INSERT INTO `customer_order` (`order_id`, `book_name`, `customer_name`, `quantity`, `order_date`, `total_amount`, `card_number`, `payment_method`, `tracking_number`) VALUES
(180, 'The Alchemist', 'Nazerke', 5, '2025-04-28', 15000.00, '1234123412341234', 'VISA', '567890'),
(181, 'Savannah\'s World of Adventure: Crossing the Andes', 'Dina', 1, '2025-04-28', 3000.00, '1234123412341234', 'VISA', '565465'),
(182, 'The Adolescent', 'Назерке', 1, '2025-04-28', 700.00, '1244656575858858', 'VISA', '567890');

-- --------------------------------------------------------

--
-- Структура таблицы `customer_reviews`
--

CREATE TABLE `customer_reviews` (
  `review_id` int(11) NOT NULL,
  `star_rating` int(20) DEFAULT NULL,
  `book_info` varchar(255) NOT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `customer_evaluation` text DEFAULT NULL,
  `review_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `customer_reviews`
--

INSERT INTO `customer_reviews` (`review_id`, `star_rating`, `book_info`, `customer_name`, `customer_evaluation`, `review_date`) VALUES
(1, 5, 'The Thirteen Problems', 'Anutavn', '\n If my memory serves me correctly, this is my first acquaintance with Miss Marple, an elderly woman who, thanks to her extraordinary mind and logic, will give odds to anyone, even a professional detective. This is just a collection of short stories, while almost all of them belong to the genre of \'story within a story\', so I didn\'t have enough investigations as such, we are introduced to the course of business through conversation, everything is very static. But you can listen to a lot of assumptions about what happened from different points of view. I like that the writer gives a listen to different types of thinking - doctors, investigators, naive girls.', '2023-09-13'),
(2, 4, 'A Study in Scarlett', 'Elizaveta Glumova', 'I love the author, but I\'m not a fan of Sherlock Holmes. Especially after reading the first book about his adventures. But this book pleasantly surprised me. Sherlock and Watson investigate the murder of a man who was killed with a poisoned dart. Finally, there is a mystery in this story, a plot development, an interesting interrogation/story of the killer.', '2024-04-15'),
(3, 5, 'Around the World in 80 Days', 'Wisseh Subtilize', 'It would seem that childhood has passed a long time ago, and this book cannot cause delight. But it turned out the other way around. Reading it, I imagined all the adventures of the characters, learned the geography of the countries and enjoyed the text. The book was written in 1872. But it was very pleasant to read. No abstruse words that require a dictionary, no archaisms.', '2024-04-21'),
(4, 4, 'The Structure of Scientific Revolutions', 'Kanifatya', 'Thomas Kuhn puts forward the thesis that science does not develop linearly and consistently, as school textbooks tell us, but in leaps and bounds, experiencing crises and revolutions. At the same time, the usual paradigms are changing. In other words, any theory can be refuted, if not even now, then in the future, when the necessary data for this will appear. And all this is thanks to scientists.', '2023-08-26'),
(5, 5, 'Pride and Prejudice', 'Little_Dorrit', '\"Pride and Prejudice\", along with \"Reason and Feelings\", is included in the list of my favorite works. I like these novels because they satirize the local society of that time well, at the level of satire, show the characters of people well, reveal their shortcomings and virtues.', '2024-03-21'),
(6, 3, 'The Light in August', 'Fomina Vera', 'This is the first book I have read by W. Faulkner. There were no expectations. I was pleasantly surprised that I rather liked it, despite the negative aspects', '2024-01-25'),
(7, 4, 'Silent spring', 'Basenka', 'Rachel Carson was the first to talk about how we thoughtlessly destroy the environment, indiscriminately destroy plants and animals...and ultimately, themselves and the whole world... It was with this book that the fight against pesticides began in the United States... The book was written in the early 60s... It\'s scary to even think about what kind of world we live in now.', '2019-04-17'),
(8, 5, 'On the Road', 'SkazkiLisy', 'The novel caused me a lot of positive emotions. The characters are not too cute and behave in places not in the best way.The novel itself also resembles bebop with its kind of randomness. This is such a stream of consciousness, albeit chronologically structured. There are a lot of broken phrases in the work, reminiscent of ordinary thoughts that sometimes come to mind.', '2024-04-12'),
(9, 5, 'A Brief History of Time', 'Victoria Radulova', 'The History of Time, written in 1988, has been translated into forty languages. This book tells the entire biography of the universe - from the Big Bang of its beginning to the \"black holes\" of its end. The book is read with fascinating interest. What is the cost of time travel, the prospect of which was discussed by the author!', '2024-05-17'),
(10, 2, 'The Sun Also Rises', 'KontikT', 'No, and this attempt to join the writer\'s work turned out to be disappointing. I had previously only read his story, which left no impression. And now I decided to read a novel and a novel, of course, I took up the collection precisely because of the novel. The story passed by the word completely - I read that this is a parody of the work of someone I just don\'t know, and I didn\'t understand the meaning of this either.', '2024-03-07'),
(11, 4, 'The Three Musketeers', 'Lyubochka', 'I\'m the kind of person who knows the characters, the catch phrases, partly the songs, but I\'ve never watched or read, the plot was also unfamiliar. And I\'m forty years old right around the corner. But what a pleasure it was to plunge into the adventure-love world. To plunge headlong into intrigues and conspiracies. Well, to watch the valiant men who are ready to bare their swords at any moment.', '2024-05-20'),
(12, 4, 'The Golden Notebook', 'OlgaYVV', 'The book was difficult to read for a long time. But it was necessary. The book itself set the right pace. I decided to express my opinion and assessment a week after reading it. The book is a reflection, it left a lot of lively thoughts and open questions. I expected aggressive feminism (for some reason), but I didn\'t see a drop of it', '2022-09-27'),
(13, 4, 'Lord of the Flies', 'Katerina_Babsecka', 'Well, finally I got to this piece, which would actually be nice to get to know as a teenager. Then, perhaps, it would have made a deeper impression on me. Now it sounds like this: yeah, well, okay, I see, but how else. But at least it\'s not annoying, like \'The Catcher in the Rye\'.', '2024-04-22'),
(15, 5, 'To Kill a Mockingbird', 'DorateyaEvans', 'It\'s not easy to describe such rather dark events on behalf of an eight-year-old girl, but Harper Lee did it. There is no constant yapping. It reads quickly and pleasantly.', '2024-03-28'),
(16, 4, 'The Great Gatsby', 'Kakaya-to-Sasha', 'I tried reading other Fitzgerald books, but I didn\'t like them at all. Not very long ago, I read the book Ernest Hemingway - A Holiday that is always with you, and there Hemingway writes that he considers the book \'The Great Gatsby\' to be a brilliant book. And after that, I decided to give Fitzgerald another chance. I decided to read this particular book and maybe realize that I was wrong about the author. But, alas. I didn\'t find any genius. This book turned out to be better than what I had read from the author before, but I was not impressed by anything special about it.', '2024-03-24'),
(17, 5, 'Rapunzel', 'Oksi28', 'I caught myself thinking that I was getting high from reading fairy tales to my son. And the most important thing is how he freezes and listens to fairy tales performed by me. I read the roles by changing my voice and expressions. The whole world is reflected in children\'s eyes. But my son starts reading by himself. I think in the fall he will read books without my participation))', '2022-11-09'),
(18, 3, 'Life Of Pi', 'Leksi_l', 'Do you think from history that this can actually happen, and then what should you do? You start thinking about catastrophic things and ways to survive, which is not bad for the brain. On the other hand, it\'s a beautiful story, with a very successful film adaptation.', '2024-01-24'),
(19, 4, 'Empire of Storms', 'skovalyova', 'The fifth book is already too hard to read. The same thing is starting to get boring. I kind of sensed that this part was going to be boring. It all started very hard… Aelin was just crushed mentally. Well, what did the girl want? That she would be accepted immediately? The throne must be earned.', '2024-03-11'),
(20, 5, 'To Kill a Mockingbird', 'DorateyaEvans', 'It\'s not easy to describe such rather dark events on behalf of an eight-year-old girl, but Harper Lee did it. There is no constant yapping. It reads quickly and pleasantly.', '2024-03-28'),
(21, 4, 'Kakaya-To-Sasha', 'The Great Gatsby', 'I tried reading other Fitzgerald books, but I didn\'t like them at all. Not very long ago, I read the book Ernest Hemingway - A Holiday that is always with you, and there Hemingway writes that he considers the book \'The Great Gatsby\' to be a brilliant book. And after that, I decided to give Fitzgerald another chance. I decided to read this particular book and maybe realize that I was wrong about the author. But, alas. I didn\'t find any genius. This book turned out to be better than what I had read from the author before, but I was not impressed by anything special about it.', '2024-03-24'),
(154, 5, 'Alice\'s advent', 'Nazerke', 'Has an interesting plot-twist', '2025-04-28'),
(155, 5, 'Alice\'s advent', 'Nazerke', 'Has an interesting plot-twist', '2025-04-28'),
(156, 5, 'Alice\'s advent', 'Nazerke', 'Has an interesting plot-twist', '2025-04-28'),
(157, 5, 'Alice\'s advent', 'Nazerke', 'Has an interesting plot-twist', '2025-04-28'),
(158, 5, 'Demian', 'Nazerke', 'It has an interesting plot-twist', '2025-04-28'),
(159, 5, 'Demian', 'Nazerke', 'It has an interesting plot-twist', '2025-04-28'),
(160, 5, 'Demian', 'Dina', 'Керемет', '2025-04-28');

-- --------------------------------------------------------

--
-- Структура таблицы `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `customer_fullname` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `registration`
--

CREATE TABLE `registration` (
  `customer_id` int(11) NOT NULL,
  `customer_fullname` varchar(255) DEFAULT NULL,
  `customer_image` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `registration`
--

INSERT INTO `registration` (`customer_id`, `customer_fullname`, `customer_image`, `password`, `phone_number`, `address`, `country`) VALUES
(239, 'Nazeke', 'noname.jpg', '$2y$10$JAbf02hv6N21MlSvDobXFep.W3MHuUbFsa7WFSJKidI9EE03h516i', '8701 333 2299', 'Leskhoz 54A', 'Afghanistan'),
(240, 'Nazerke_M', '1984 .png', '$2y$10$CWQedMWu6O21uAs5AwxjsO913.RpleGOYGRT2Sie12LgpD82AsE3a', 'Nazerke', 'Leskhoz 54A', 'Bahrain'),
(241, 'Nazerke', '1984 .png', '$2y$10$.gBJNXsvhVbM.qb9hNJD4.i.fAG4KN78rKYsYb6E5na0u8eMtIeeO', '87012225757', 'Elorda', 'Kazakhstan'),
(242, 'John', 'noname.jpg', '$2y$10$uYQMq3BPcjiaIdDLAa6fQOF/rehw8HHD792rZWIGnhiacI4fStpli', '87012338383', 'Elorda', 'Kazakhstan'),
(243, '2504', 'noname.jpg', '$2y$10$17TF08efEjtbZMJrtggUXeLHBs3KH.OWkBcnO4.US8IZt/WE/8T.6', '87012345678', 'leskhoz', 'Kazakhstan'),
(244, 'Qwerty', 'A time to love and a time to die .jpg', '$2y$10$khDZmLSe8w5uXQ4S82NQheNPLq8UfaForD6nm2elwqVtilKQSeHDm', '8712020200220', '121212', 'Kazakhstan'),
(245, 'Nazerke', 'user.png', '$2y$10$slEZgi4gFW8zsP6l3/26oeRXrvTJvd7Edrm5POracCTITwQRvsMPq', '87012225757', 'Leskhoz 54A', 'Bahamas'),
(246, 'Aruna', 'user.png', '$2y$10$VCRa.qjs8zjaCaCficWpV.VpVCjkVOK4G.M62Jo8UENU2/D7Jk.la', '87012225757', '12343', 'Bahrain'),
(247, 'nazerke', 'user.png', '$2y$10$hbGA5fO7E7VJomeRElzSdeqlkRGyS8X/2w23w.2yLyQbQ.y09eUSy', 'sdfdsf', 'sdfdsf', 'Afghanistan'),
(248, 'nazerke', 'agatha13.jpg', '$2y$10$urO3NzqookrZzRkDV.j5B.szwA5IrM4WrJHgkfz9qOSd8lkhuIrVS', '12112', 'dfsdf', 'Kazakhstan'),
(249, 'Nazerke', '1984.png', '$2y$10$LSRadMr5lJHAd6ndYJxP.eZsdoFgBVNWSWCpN1QcC73dAcZL8FguW', '870122246565', 'Elorda 34', 'Kazakhstan'),
(250, 'Dina', 'user.png', '$2y$10$FpQX5oKfTsSZGUM8ij3VIu6UHHA.in5kv6GMuZWrOtyFRJRFk1gj.', '87012225678', 'Elorda 34', 'Kazakhstan');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `book_information`
--
ALTER TABLE `book_information`
  ADD PRIMARY KEY (`book_id`);

--
-- Индексы таблицы `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Индексы таблицы `customer_order`
--
ALTER TABLE `customer_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Индексы таблицы `customer_reviews`
--
ALTER TABLE `customer_reviews`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `order_id` (`star_rating`);

--
-- Индексы таблицы `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`customer_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `book_information`
--
ALTER TABLE `book_information`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7602;

--
-- AUTO_INCREMENT для таблицы `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT для таблицы `customer_order`
--
ALTER TABLE `customer_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;

--
-- AUTO_INCREMENT для таблицы `customer_reviews`
--
ALTER TABLE `customer_reviews`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT для таблицы `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT для таблицы `registration`
--
ALTER TABLE `registration`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
