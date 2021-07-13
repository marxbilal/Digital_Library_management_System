
set sql_mode="no_auto_value_on_zero";
set time_zone = "+00:00";


/*!40101 set @old_character_set_client=@@character_set_client */;
/*!40101 set @old_character_set_results=@@character_set_results */;
/*!40101 set @old_collation_connection=@@collation_connection */;
/*!40101 set names utf8 */;

--
-- database: `library`
--

-- table `admin`

create table if not exists `admin` (
  `id` int(100) not null auto_increment,
  `first` varchar(100) not null,
  `last` varchar(100) not null,
  `username` varchar(100) not null,
  `password` varchar(100) not null,
  `email` varchar(100) not null,
  `contact` varchar(100) not null,
  `pic` varchar(100) not null,
  primary key (`id`)
) engine=innodb  default charset=latin1 auto_increment=4 ;


-- data for table `admin`


insert into `admin` (`id`, `first`, `last`, `username`, `password`, `email`, `contact`, `pic`) values
(1, 'mr.', 'sabir', 'ali', '123456', 's.ali.17278@khi.iba.edu.pk', '12345678', 'p.jpg'),
(2, 'mr.', 'muhammad', 'yousuf', '111111', 'm.yousuf.17874@khi.iba.edu.pk', '012345678', 'p.jpg'),
(3, 'mr.', 'hamraj', 'singh', '222222', 'h.singh.18077@khi.iba.edu.pk', '133446557', 'p.jpg');

-- --------------------------------------------------------

--
-- table `books`
--

create table if not exists `books` (
  `bid` int(100) not null,
  `name` varchar(100) not null,
  `authors` varchar(100) not null,
  `edition` varchar(100) not null,
  `status` varchar(100) not null,
  `quantity` int(100) not null,
  `department` varchar(100) not null
) engine=innodb default charset=latin1;

--
-- dumping data for table `books`
--

insert into `books` (`bid`, `name`, `authors`, `edition`, `status`, `quantity`, `department`) values
(1, 'database management systems', 'raghu ramakrishan, johannes gehrke', '3rd', 'available', 5, 'cs'),
(2, 'operatin system', 'william stallings', '9th', 'available', 4, 'cs'),
(3, 'software engineering', 'rajib mall', '2nd', 'available', 2, 'cs');

-- --------------------------------------------------------

--
-- table `comments`
--

create table if not exists `comments` (
  `id` int(50) not null auto_increment,
  `username` varchar(100) not null,
  `comment` varchar(500) not null,
  primary key (`id`)
) engine=innodb  default charset=latin1 auto_increment=20 ;

--
-- data for table `comments`
--

insert into `comments` (`id`, `username`, `comment`) values
(1, 'ali alam', 'hello!'),
(2, 'bilawal', 'i can not find the book of data structure. when will it be available.'),
(3, 'admin', 'hi! which book do you need bilawal. please let us know.'),
(4, 'bilawal', 'hello!'),
(5, 'bilawal', 'hello! i need data structure by d.s malik cs department');

-- --------------------------------------------------------

--
-- table `fine`
--

create table if not exists `fine` (
  `username` varchar(100) not null,
  `bid` int(100) not null,
  `returned` varchar(100) not null,
  `day` int(50) not null,
  `fine` double not null,
  `status` varchar(100) not null
) engine=innodb default charset=latin1;

--
-- data for table `fine`
--

insert into `fine` (`username`, `bid`, `returned`, `day`, `fine`, `status`) values
('nabeel', 1, '2020-10-21', 31, 3.1, 'not paid'),
('ali alam', 1, '2012-11-09', 1, 0.1, 'not paid');
-- --------------------------------------------------------

--
-- table `issue_book`
--

create table if not exists `issue_book` (
  `username` varchar(100) not null,
  `bid` int(100) not null,
  `approve` varchar(100) not null,
  `issue` varchar(100) not null,
  `return` varchar(100) not null
) engine=innodb default charset=latin1;

--
-- data for table `issue_book`
--

insert into `issue_book` (`username`, `bid`, `approve`, `issue`, `return`) values
('nabeel', 3, '<p style="color:yellow; background-color:red;">expired</p>', '2020-10-22', '2020-11-08'),
('nabeel', 1, '<p style="color:yellow; background-color:green;">returned</p>', '2020-09-20', '2020-10-06'),
('nabeel', 2, '<p style="color:yellow; background-color:green;">returned</p>', '2020-09-01', '2020-09-16'),
('ali alam', 1, '<p style="color:yellow; background-color:green;">returned</p>', '2020-09-20', '2020-10-05'),
('ali alam', 2, '<p style="color:yellow; background-color:green;">returned</p>', '2020-08-15', '2020-09-01'),
('ali alam', 1, '', '', '');

-- --------------------------------------------------------

--
-- table `student`
--

create table if not exists `student` (
  `first` varchar(100) not null,
  `last` varchar(100) not null,
  `username` varchar(100) not null,
  `password` varchar(100) not null,
  `roll` int(100) not null,
  `email` varchar(100) not null,
  `contact` varchar(100) not null,
  `pic` varchar(100) not null
) engine=innodb default charset=latin1;

--
-- data for table `student`
--

insert into `student` (`first`, `last`, `username`, `password`, `roll`, `email`, `contact`, `pic`) values
('nabeel', 'naveed', 'nabeel', '12345', 17874, 'n.naveed.17874@khi.iba.edu.pk', '+0932479239', 'p.jpg'),
('bilawal', 'ali', 'bilawal', 'khan4554', 17278, 'b.ali.17278@khi.edu.pk', '+923066551154', 'pp.jpg'),
('mr.', 'ishaq', 'ahmed', '212324', 18077, 'i.ahmed.18077@khi.iba.edu.pk', '+927843934045', 'p.jpg'),
('ali', 'alam', 'alam111', '987654', 47102, 'a.alam.47102@khi.iba.edu.pk', '1739000000', 'p.jpg'),
('zamin', 'ali', 'balti', '121212', 80047, 'z.balti@gmail.com', '+93024803454', 'p.jpg'),
('rija', 'alam', 'ratg', 'alamrija', 16097, 'r.alam@khi.iba.edu.pk', '+92945489451', 'p.jpg');

/*!40101 set character_set_client=@old_character_set_client */;
/*!40101 set character_set_results=@old_character_set_results */;
/*!40101 set collation_connection=@old_collation_connection */;
