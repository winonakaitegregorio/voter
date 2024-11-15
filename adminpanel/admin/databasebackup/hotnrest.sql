

CREATE TABLE `activity_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `activity_type` varchar(255) NOT NULL,
  `activity_details` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2368 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO activity_log VALUES
("1717","Admin","Login","Admin logged in","2024-09-22 14:54:09"),
("1718","Admin","Login","Admin logged in","2024-09-22 20:56:36"),
("1719","Admin","Logout","Admin logged out","2024-09-22 21:31:25"),
("1720","Admin","Login","Admin logged in","2024-09-22 21:31:36"),
("1721","Admin","Added new staff","Admin added a new staff named Joezer Kallai Aleño","2024-09-22 21:35:35"),
("1722","Admin","Update staff","Admin updated staff: Joezer Kallai Aleño","2024-09-22 21:35:45"),
("1723","Admin","Restore database","Admin restored database","2024-09-22 21:54:35"),
("1724","Admin","Restore database","Admin restored database","2024-09-22 21:56:06"),
("1725","Admin","Restore database","Admin restored database","2024-09-22 21:57:02"),
("1726","Admin","Added new category","Admin added a new category named STANDARD ROOM","2024-09-22 23:13:48"),
("1727","Admin","Added new category","Admin added a new category named MEDIUM ROOM","2024-09-22 23:19:00"),
("1728","Admin","Login","Admin logged in","2024-09-23 09:14:45"),
("1729","Admin","Update category","Admin updated category: MEDIUM ROOM","2024-09-23 09:21:40"),
("1730","Admin","Update category","Admin updated category: MEDIUM ROOM","2024-09-23 09:21:40"),
("1731","Admin","Update category","Admin updated category: MEDIUM ROOM","2024-09-23 09:21:40"),
("1732","Admin","Update category","Admin updated category: MEDIUM ROOM","2024-09-23 09:21:40"),
("1733","Admin","Update category","Admin updated category: MEDIUM ROOM","2024-09-23 09:21:40"),
("1734","Admin","Update staff","Admin updated staff: Joezer Kallai Aleño","2024-09-23 09:54:37"),
("1735","Admin","Backup Database","Admin backed up the database.","2024-09-23 09:55:00"),
("1736","Admin","Login","Admin logged in","2024-09-23 15:00:50"),
("1737","Admin","Added new category","Admin added a new category named DELUXE ROOM","2024-09-23 15:27:42"),
("1738","Admin","Added new category","Admin added a new category named SUITE","2024-09-23 15:28:10"),
("1739","Admin","Added new category","Admin added a new category named REGULAR ROOM","2024-09-23 15:28:53"),
("1740","Admin","Logout","Admin logged out","2024-09-23 15:41:43"),
("1741","Admin","Login","Admin logged in","2024-09-23 19:12:21"),
("1742","Admin","Added new room","Admin added a new room: 1","2024-09-23 21:17:42"),
("1743","Admin","Added new room","Admin added a new room: 2","2024-09-23 21:25:57"),
("1744","Admin","Update staff","Admin updated staff: Joezer Kallai Aleño","2024-09-23 21:26:37"),
("1745","Admin","Added new room","Admin added a new room: 3","2024-09-23 21:30:06"),
("1746","Admin","Added new room","Admin added a new room: 4","2024-09-23 21:31:08"),
("1747","Admin","Added new room","Admin added a new room: 5","2024-09-23 21:32:05"),
("1748","Admin","Logout","Admin logged out","2024-09-23 21:46:21"),
("1749","Admin","Login","Admin logged in","2024-09-24 07:34:30"),
("1750","Admin","Added new room","Admin added a new room: 6","2024-09-24 07:37:49"),
("1751","Admin","Added new room","Admin added a new room: 7","2024-09-24 07:49:36"),
("1752","Admin","Added new room","Admin added a new room: 8","2024-09-24 07:55:17"),
("1753","Admin","Added new room","Admin added a new room: 9","2024-09-24 08:20:42"),
("1754","Admin","Added new room","Admin added a new room: 10","2024-09-24 08:22:33"),
("1755","Admin","Added new room","Admin added a new room: 11","2024-09-24 08:23:59"),
("1756","Admin","Added new room","Admin added a new room: 12","2024-09-24 08:57:05"),
("1757","Admin","Added new room","Admin added a new room: 13","2024-09-24 08:58:42"),
("1758","Admin","Added new room","Admin added a new room: 14","2024-09-24 09:01:10"),
("1759","Admin","Added new room","Admin added a new room: 1","2024-09-24 09:30:29"),
("1760","Admin","Added new room","Admin added a new room: 2","2024-09-24 09:31:16"),
("1761","Admin","Added new room","Admin added a new room: 3","2024-09-24 09:31:51"),
("1762","Admin","Login","Admin logged in","2024-09-24 10:29:28"),
("1763","Admin","Added new room","Admin added a new room: 4","2024-09-24 10:56:49"),
("1764","Admin","Login","Admin logged in","2024-09-24 13:40:12"),
("1765","Admin","Login","Admin logged in","2024-09-24 14:31:48"),
("1766","Admin","Added new restaurant table","Admin added a new restaurant table named 1 with capacity 12","2024-09-24 15:47:46"),
("1767","Admin","Added new restaurant table","Admin added a new restaurant table named 1 with capacity 12","2024-09-24 15:48:08"),
("1768","Admin","Added new restaurant table","Admin added a new restaurant table named 1 with capacity 12","2024-09-24 16:00:03"),
("1769","Admin","Added new restaurant table","Admin added a new restaurant table named 1 with capacity 12","2024-09-24 16:11:47"),
("1770","Admin","Added new restaurant table","Admin added a new restaurant table named 2 with capacity 12","2024-09-24 16:18:48"),
("1771","Admin","Added new restaurant table","Admin added a new restaurant table named 3 with capacity 14","2024-09-24 16:21:32"),
("1772","Admin","Added new restaurant table","Admin added a new restaurant table named 4 with capacity 14","2024-09-24 16:32:13"),
("1773","Admin","Added new restaurant table","Admin added a new restaurant table named 5 with capacity 14","2024-09-24 16:32:30"),
("1774","Admin","Login","Admin logged in","2024-09-27 16:02:08"),
("1775","Admin","Update Account","Admin updated own account","2024-09-27 16:02:40"),
("1776","Admin","Update Account","Admin updated own account","2024-09-27 16:02:41"),
("1777","Admin","Logout","Admin logged out","2024-09-27 16:02:47"),
("1778","Admin","Login","Admin logged in","2024-09-30 10:47:58"),
("1779","Admin","Login","Admin logged in","2024-09-30 15:43:10"),
("1780","Admin","Logout","Admin logged out","2024-09-30 17:31:10"),
("1781","Admin","Login","Admin logged in","2024-10-02 12:24:31"),
("1782","Admin","Logout","Admin logged out","2024-10-02 13:11:56"),
("1783","Admin","Login","Admin logged in","2024-10-03 07:55:02"),
("1784","Admin","Added new blog","Admin added a new blog: fhht","2024-10-03 07:55:46"),
("1785","Admin","Added new blog","Admin added a new blog: fhhtd","2024-10-03 08:10:00"),
("1786","Admin","Added new blog","Admin added a new blog: fhhtdrt","2024-10-03 08:16:28"),
("1787","Admin","Logout","Admin logged out","2024-10-03 10:05:00"),
("1788","Admin","Login","Admin logged in","2024-10-03 15:23:10"),
("1789","Admin","Added new blog","Admin added a new blog: Room Area","2024-10-03 16:15:18"),
("1790","Admin","Added new blog","Admin added a new blog: Pool Area","2024-10-03 16:17:42"),
("1791","Admin","Added new category","Admin added a new category named DELUXE ROOM","2024-10-03 17:07:06"),
("1792","Admin","Added new category","Admin added a new category named MASTER ROOM","2024-10-03 17:07:24"),
("1793","Admin","Login","Admin logged in","2024-10-03 17:07:45"),
("1794","Admin","Added new category","Admin added a new category named SUPER ROOM","2024-10-03 17:08:02"),
("1795","Admin","Added new category","Admin added a new category named NORMAL ROOM","2024-10-03 17:08:27"),
("1796","Admin","Logout","Admin logged out","2024-10-03 17:18:32"),
("1797","Admin","Login","Admin logged in","2024-10-03 17:30:01"),
("1798","Admin","Added new room","Admin added a new room: 1","2024-10-03 17:33:41"),
("1799","Admin","Added new room","Admin added a new room: 2","2024-10-03 17:33:49"),
("1800","Admin","Added new room","Admin added a new room: 3","2024-10-03 17:33:56"),
("1801","Admin","Added new room","Admin added a new room: 4","2024-10-03 17:34:06"),
("1802","Admin","Added new room","Admin added a new room: 5","2024-10-03 17:40:16"),
("1803","Admin","Added new room","Admin added a new room: 6","2024-10-03 18:45:06"),
("1804","Admin","Login","Admin logged in","2024-10-03 19:35:20"),
("1805","Admin","Added new room","Admin added a new room: 7","2024-10-03 19:37:39"),
("1806","Admin","Logout","Admin logged out","2024-10-04 00:36:36"),
("1807","Admin","Login","Admin logged in","2024-10-04 17:01:06"),
("1808","Admin","Backup Database","Admin backed up the database.","2024-10-04 17:01:15"),
("1809","Admin","Logout","Admin logged out","2024-10-04 17:01:26"),
("1810","Admin","Login","Admin logged in","2024-10-05 20:42:15"),
("1811","Admin","Logout","Admin logged out","2024-10-05 20:43:00"),
("1812","Admin","Login","Admin logged in","2024-10-05 20:43:16"),
("1813","Admin","Logout","Admin logged out","2024-10-05 20:44:18"),
("1814","Admin","Login","Admin logged in","2024-10-05 21:00:31"),
("1815","Admin","Logout","Admin logged out","2024-10-05 21:01:27"),
("1816","Admin","Login","Admin logged in","2024-10-05 21:29:01");
INSERT INTO activity_log VALUES
("1817","Admin","Logout","Admin logged out","2024-10-05 21:49:27"),
("1818","Admin","Login","Admin logged in","2024-10-05 22:06:12"),
("1819","Admin","Logout","Admin logged out","2024-10-05 22:09:19"),
("1820","Admin","Login","Admin logged in","2024-10-06 07:08:06"),
("1821","Admin","Added new room","Admin added a new room: Library","2024-10-06 07:09:51"),
("1822","Admin","Logout","Admin logged out","2024-10-06 07:10:07"),
("1823","Admin","Login","Admin logged in","2024-10-06 16:03:42"),
("1824","Admin","Login","Admin logged in","2024-10-06 23:58:11"),
("1825","Admin","Logout","Admin logged out","2024-10-06 23:59:31"),
("1826","Admin","Login","Admin logged in","2024-10-07 22:14:35"),
("1827","Admin","Backup Database","Admin backed up the database.","2024-10-07 22:15:21"),
("1828","Admin","Login","Admin logged in","2024-10-09 22:02:11"),
("1829","Admin","Added new room","Admin added a new room: Good For 2","2024-10-09 22:08:54"),
("1830","Admin","Update staff","Admin updated staff: Joezer Kallai Aleño","2024-10-09 22:19:51"),
("1831","Admin","Restore database","Admin restored database","2024-10-09 22:24:21"),
("1832","Admin","Restore database","Admin restored database","2024-10-09 22:25:07"),
("1833","Admin","Backup Database","Admin backed up the database.","2024-10-09 22:25:35"),
("1834","Admin","Logout","Admin logged out","2024-10-09 22:28:24"),
("1835","Admin","Login","Admin logged in","2024-10-09 22:30:45"),
("1836","Admin","Login","Admin logged in","2024-10-10 08:48:10"),
("1837","Admin","Update Booking","Updated booking with ID: 46","2024-10-10 09:22:19"),
("1838","Admin","Update Booking","Updated booking with ID: 46","2024-10-10 09:22:19"),
("1839","Admin","Update Booking","Updated booking for customer: Joezer Aleño","2024-10-10 09:25:25"),
("1840","Admin","Update Booking","Updated booking for customer: Joezer Aleño","2024-10-10 09:25:25"),
("1841","Admin","Update Booking","Updated booking for customer: Joezer Aleño","2024-10-10 09:25:39"),
("1842","Admin","Update Booking","Updated booking for customer: Joezer Aleño","2024-10-10 09:25:39"),
("1843","Admin","Update Booking","Updated booking for customer: Joezer Aleño","2024-10-10 09:26:14"),
("1844","Admin","Update Booking","Updated booking for customer: Joezer Aleño","2024-10-10 09:28:06"),
("1845","Admin","Update Booking","Updated booking for customer: Joezer Aleño","2024-10-10 09:28:25"),
("1846","Admin","Update Booking","Updated booking for customer: Joezer Aleño","2024-10-10 09:28:25"),
("1847","Admin","Update Booking","Updated booking for customer: Joezer Aleño","2024-10-10 09:28:28"),
("1848","Admin","Update Booking","Updated booking for customer: Joezer Aleño","2024-10-10 09:28:39"),
("1849","Admin","Update Booking","Updated booking for customer: Joezer Aleño","2024-10-10 09:28:39"),
("1850","Admin","Update Booking","Updated booking for customer: Joezer Aleño","2024-10-10 09:30:02"),
("1851","Admin","Update Booking","Updated booking for customer: Joezer Aleño","2024-10-10 09:32:08"),
("1852","Admin","Update Booking","Updated booking for customer: Alexis Mejica","2024-10-10 09:36:23"),
("1853","Admin","Logout","Admin logged out","2024-10-10 10:01:16"),
("1854","Admin","Login","Admin logged in","2024-10-10 12:35:43"),
("1855","Admin","Update Booking","Updated booking for customer: Alexis Mejica","2024-10-10 13:10:08"),
("1856","Admin","Update Booking","Updated booking for customer: Alexis Mejica","2024-10-10 13:10:08"),
("1857","Admin","Update Booking","Updated booking for customer: Alexis Mejica","2024-10-10 13:10:53"),
("1858","Admin","Update Booking","Updated booking for customer: Alexis Mejica","2024-10-10 13:11:48"),
("1859","Admin","Update Booking","Updated booking for customer: Alexis Mejica","2024-10-10 13:12:43"),
("1860","Admin","Update Booking","Updated booking for customer: Alexis Mejica","2024-10-10 13:12:53"),
("1861","Admin","Update Booking","Updated booking for customer: Alexis Mejica","2024-10-10 13:13:08"),
("1862","Admin","Update Booking","Updated booking for customer: Alexis Mejica","2024-10-10 13:15:32"),
("1863","Admin","Update Booking","Updated booking for customer: Alexis Mejica","2024-10-10 13:16:20"),
("1864","Admin","Update Booking","Updated booking for customer: Alexis Mejica","2024-10-10 13:16:34"),
("1865","Admin","Update Booking","Updated booking for customer: Alexis Mejica","2024-10-10 13:16:34"),
("1866","Admin","Update Booking","Updated booking for customer: Alexis Mejica","2024-10-10 13:16:48"),
("1867","Admin","Update Booking","Updated booking for customer: Joezer Aleño","2024-10-10 13:17:06"),
("1868","Admin","Update Booking","Updated booking for customer: Joezer Aleño","2024-10-10 13:17:16"),
("1869","Admin","Update Booking","Updated booking for customer: Joezer Aleño","2024-10-10 13:17:31"),
("1870","Admin","Update Booking","Updated booking for customer: Joezer Aleño","2024-10-10 13:17:54"),
("1871","Admin","Update Booking","Updated booking for customer: Alexis Mejica","2024-10-10 13:19:12"),
("1872","Admin","Update Booking","Updated booking for customer: Alexis Mejica","2024-10-10 13:25:54"),
("1873","Admin","Update Booking","Updated booking for customer: Alexis Mejica","2024-10-10 13:26:07"),
("1874","Admin","Login","Admin logged in","2024-10-10 17:53:37"),
("1875","Admin","Update Booking","Updated booking for customer: Alexis Mejica","2024-10-10 17:56:15"),
("1876","Admin","Update Booking","Updated booking for customer: Alexis Mejica","2024-10-11 08:44:26"),
("1877","Admin","Update Booking","Updated booking for customer: Alexis Mejica","2024-10-11 08:44:37"),
("1878","Admin","Update Booking","Updated booking for customer: Alexis Mejica","2024-10-11 08:51:01"),
("1879","Admin","Update Booking","Updated booking for customer: Alexis Mejica","2024-10-11 08:51:15"),
("1880","Admin","Update Booking","Updated booking for customer: Alexis Mejica","2024-10-11 08:51:43"),
("1881","Admin","Update Booking","Updated booking for customer: Joezer Aleño","2024-10-11 08:52:41"),
("1882","Admin","Update Booking","Updated booking for customer: Alexis Mejica","2024-10-11 08:53:08"),
("1883","Admin","Update Booking","Updated booking for customer: Alexis Mejica","2024-10-11 08:54:16"),
("1884","Admin","Logout","Admin logged out","2024-10-11 09:05:53"),
("1885","Admin","Login","Admin logged in","2024-10-11 11:21:15"),
("1886","Admin","Update Booking","Updated booking for customer: Alexis Mejica","2024-10-11 11:41:31"),
("1887","Admin","Logout","Admin logged out","2024-10-11 11:43:55"),
("1888","Admin","Login","Admin logged in","2024-10-11 12:51:14"),
("1889","Admin","Update Booking","Updated booking for customer: Joezer Aleño","2024-10-11 12:55:59"),
("1890","Admin","Backup Database","Admin backed up the database.","2024-10-11 15:01:02"),
("1891","Admin","Added new KTV room","Admin added a new KTV room: KTV1","2024-10-11 15:17:37"),
("1892","Admin","Added new KTV room","Admin added a new KTV room: KTV2","2024-10-11 15:28:18"),
("1893","Admin","Added new KTV room","Admin added a new KTV room: KTV3","2024-10-11 15:30:01"),
("1894","Admin","Added new KTV room","Admin added a new KTV room: KTV4","2024-10-11 15:31:37"),
("1895","Admin","Logout","Admin logged out","2024-10-11 17:29:34"),
("1896","Admin","Login","Admin logged in","2024-10-11 19:18:52"),
("1897","Admin","Update Booking","Updated booking for customer: Joezer Aleño","2024-10-11 19:25:14"),
("1898","Admin","Added new category","Admin added a new category named FAMILY ROOM","2024-10-11 19:31:23"),
("1899","Admin","Logout","Admin logged out","2024-10-11 19:38:02"),
("1900","Admin","Login","Admin logged in","2024-10-11 20:35:52"),
("1901","Admin","Update KTV Room","Admin updated KTV room: KTV1","2024-10-11 20:36:00"),
("1902","Admin","Update KTV Room","Updated KTV room: KTV1","2024-10-11 21:05:53"),
("1903","Admin","Update KTV Room","Admin updated KTV room: KTV1","2024-10-11 21:25:23"),
("1904","Admin","Update KTV Room","Admin updated KTV room: KTV1","2024-10-11 21:39:34"),
("1905","Admin","Add KTV Images","Admin added images to KTV room ID: 1","2024-10-11 21:39:39"),
("1906","Admin","Add KTV Images","Admin added images to KTV room ID: 1","2024-10-11 21:39:39"),
("1907","Admin","Add KTV Images","Admin added images to KTV room ID: 1","2024-10-11 21:39:50"),
("1908","Admin","Update KTV Room","Admin updated KTV room: KTV1","2024-10-11 21:42:58"),
("1909","Admin","Update KTV Room","Admin updated KTV room: KTV1","2024-10-11 21:43:03"),
("1910","Admin","Update KTV Room","Admin updated KTV room: KTV1","2024-10-11 21:43:10"),
("1911","Admin","Add KTV Images","Admin added images to KTV room ID: 1","2024-10-11 21:44:32"),
("1912","Admin","Add KTV Images","Admin added images to KTV room ID: 1","2024-10-11 21:44:48"),
("1913","Admin","Add KTV Images","Admin added images to KTV room ID: 1","2024-10-11 21:45:44"),
("1914","Admin","Add KTV Images","Admin added images to KTV room ID: 1","2024-10-11 21:48:43"),
("1915","Admin","Add KTV Images","Admin added images to KTV room ID: 1","2024-10-11 21:54:29"),
("1916","Admin","Update KTV Room","Admin updated KTV room: KTV1","2024-10-11 22:07:55");
INSERT INTO activity_log VALUES
("1917","Admin","Add KTV Images","Admin added images to KTV room ID: 1","2024-10-11 22:11:37"),
("1918","Admin","Add KTV Images","Admin added images to KTV room ID: 1","2024-10-11 22:12:36"),
("1919","Admin","Add KTV Images","Admin added images to KTV room ID: 1","2024-10-11 22:16:38"),
("1920","Admin","Add KTV Images","Admin added images to KTV room ID: 1","2024-10-11 22:19:31"),
("1921","Admin","Add KTV Images","Admin added images to KTV room ID: 1","2024-10-11 22:34:26"),
("1922","Admin","Add KTV Images","Admin added images to KTV room ID: 1","2024-10-11 22:40:10"),
("1923","Admin","Add KTV Images","Admin added images to KTV room ID: 1","2024-10-11 22:40:25"),
("1924","Admin","Update KTV Room","Admin updated KTV room: KTV1","2024-10-11 22:40:50"),
("1925","Admin","Add KTV Images","Admin added images to KTV room ID: 1","2024-10-11 22:51:59"),
("1926","Admin","Update KTV Room","Admin updated KTV room: KTV1","2024-10-11 22:52:18"),
("1927","Admin","Add KTV Images","Admin added images to KTV room ID: 1","2024-10-11 23:05:14"),
("1928","Admin","Add KTV Images","Admin added images to KTV room ID: 1","2024-10-11 23:05:25"),
("1929","Admin","Add KTV Images","Admin added images to KTV room ID: 1","2024-10-11 23:05:42"),
("1930","Admin","Add KTV Images","Admin added images to KTV room ID: 1","2024-10-11 23:08:17"),
("1931","Admin","Add KTV Images","Admin added images to KTV room ID: 1","2024-10-11 23:08:28"),
("1932","Admin","Update KTV Room","Admin updated KTV room: KTV1","2024-10-11 23:09:11"),
("1933","Admin","Add KTV Images","Admin added images to KTV room ID: 2","2024-10-11 23:14:22"),
("1934","Admin","Update Room","Admin updated room: 7","2024-10-11 23:38:13"),
("1935","Admin","Logout","Admin logged out","2024-10-11 23:43:21"),
("1936","Admin","Login","Admin logged in","2024-10-12 06:21:40"),
("1937","Admin","Added new room","Admin added a new room: 3","2024-10-12 06:23:49"),
("1938","Admin","Update Room","Admin updated room: 7","2024-10-12 07:04:23"),
("1939","Admin","Update Room","Admin updated room: 7","2024-10-12 07:06:40"),
("1940","Admin","Update Room","Admin updated room: 7","2024-10-12 07:09:18"),
("1941","Admin","Update Room","Admin updated room: 7","2024-10-12 07:15:06"),
("1942","Admin","Add Room Images","Admin added new images to room ID: 25","2024-10-12 07:15:16"),
("1943","Admin","Add Room Images","Admin added new images to room ID: 25","2024-10-12 07:19:50"),
("1944","Admin","Login","Admin logged in","2024-10-12 15:26:05"),
("1945","Admin","Backup Database","Admin backed up the database.","2024-10-12 15:27:00"),
("1946","Admin","Backup Database","Admin backed up the database.","2024-10-12 16:43:25"),
("1947","Admin","Backup Database","Admin backed up the database.","2024-10-12 17:00:33"),
("1948","Admin","Login","Admin logged in","2024-10-12 22:40:13"),
("1949","Admin","Backup Database","Admin backed up the database.","2024-10-12 22:43:13"),
("1950","Admin","Update Booking","Updated booking for customer: Unknown Customer","2024-10-12 22:50:53"),
("1951","Admin","Update Booking","Updated booking for customer: Unknown Customer","2024-10-12 23:36:53"),
("1952","Admin","Update Booking","Updated booking for customer: Unknown Customer","2024-10-12 23:36:56"),
("1953","Admin","Update KTV Booking","Updated KTV booking for customer: Unknown Customer","2024-10-12 23:53:37"),
("1954","Admin","Update KTV Booking","Updated KTV booking for customer: Joezer Aleño","2024-10-12 23:56:24"),
("1955","Admin","Update KTV Booking","Updated KTV booking for customer: Joezer Aleño","2024-10-12 23:56:37"),
("1956","Admin","Update KTV Booking","Updated KTV booking for customer: Joezer Aleño","2024-10-13 00:49:44"),
("1957","Admin","Logout","Admin logged out","2024-10-13 01:02:21"),
("1958","Admin","Login","Admin logged in","2024-10-13 05:40:41"),
("1959","Admin","Update KTV Booking","Updated KTV booking for customer: Joezer Aleño","2024-10-13 05:49:48"),
("1960","Admin","Update KTV Booking","Updated KTV booking for customer: Joezer Aleño","2024-10-13 06:00:34"),
("1961","Admin","Update KTV Booking","Updated KTV booking for customer: Joezer Aleño","2024-10-13 06:38:38"),
("1962","Admin","Update KTV Booking","Updated KTV booking for customer: Joezer Aleño","2024-10-13 06:55:22"),
("1963","Admin","Update KTV Booking","Updated KTV booking for customer: Joezer Aleño","2024-10-13 07:21:58"),
("1964","Admin","Logout","Admin logged out","2024-10-13 08:59:38"),
("1965","Admin","Login","Admin logged in","2024-10-13 14:07:30"),
("1966","Admin","Update Table Seats","Admin updated the available seats to 100 for table ID: 1","2024-10-13 15:21:47"),
("1967","Admin","Update Table Seats","Admin updated the available seats to 100 for table ID: 1","2024-10-13 15:21:59"),
("1968","Admin","Update Table Seats","Admin updated the available seats to 100 for table ID: 1","2024-10-13 15:22:01"),
("1969","Admin","Update Table Seats","Admin updated the available seats to 100 for table ID: 1","2024-10-13 15:22:05"),
("1970","Admin","Update Table Seats","Admin updated the available seats to 100 for table ID: 1","2024-10-13 15:22:08"),
("1971","Admin","Update Table Seats","Admin updated the available seats to 100 for table ID: 1","2024-10-13 15:22:31"),
("1972","Admin","Update Table Seats","Admin updated the available seats to 100 for table ID: 1","2024-10-13 15:23:18"),
("1973","Admin","Update Table Seats","Admin updated the available seats to 101 for table ID: 1","2024-10-13 15:29:07"),
("1974","Admin","Update Table Seats","Admin updated the available seats to 100 for table ID: 1","2024-10-13 15:29:11"),
("1975","Admin","Login","Admin logged in","2024-10-14 16:04:53"),
("1976","Admin","Update Table Seats","Admin updated the available seats to 50 for table ID: 1","2024-10-14 16:05:04"),
("1977","Admin","Update Seat Booking","Updated seat booking for customer: Joezer Kallai L. Aleño","2024-10-14 22:20:35"),
("1978","Admin","Update Seat Booking","Updated seat booking for customer: Joezer Kallai L. Aleño","2024-10-14 22:20:40"),
("1979","Admin","Update Seat Booking","Updated seat booking for customer: Joezer Kallai L. Aleño","2024-10-14 22:32:19"),
("1980","Admin","Update Seat Booking","Updated seat booking for customer: Joezer Kallai L. Aleño","2024-10-14 22:39:04"),
("1981","Admin","Update Seat Booking","Updated seat booking for customer: Joezer Kallai L. Aleño","2024-10-14 22:39:11"),
("1982","Admin","Update Seat Booking","Updated seat booking for customer: Joezer Kallai L. Aleño","2024-10-14 22:39:16"),
("1983","Admin","Update Seat Booking","Updated seat booking for customer: Joezer Kallai L. Aleño","2024-10-14 22:40:27"),
("1984","Admin","Update Seat Booking","Updated seat booking for customer: Joezer Kallai L. Aleño","2024-10-14 22:41:59"),
("1985","Admin","Update Booking","Updated booking for customer: Joezer Aleño","2024-10-14 23:25:12"),
("1986","Admin","Login","Admin logged in","2024-10-15 09:20:21"),
("1987","Admin","Login","Admin logged in","2024-10-15 10:32:53"),
("1988","Admin","Update Table Seats","Admin updated the available seats to 0 for table ID: 1","2024-10-15 10:47:02"),
("1989","Admin","Update Room","Admin updated room: 7","2024-10-15 10:50:12"),
("1990","Admin","Update KTV Room","Admin updated KTV room: KTV1","2024-10-15 10:55:48"),
("1991","Admin","Add KTV Images","Admin added images to KTV room ID: 1","2024-10-15 10:56:07"),
("1992","Admin","Logout","Admin logged out","2024-10-15 12:34:08"),
("1993","Admin","Login","Admin logged in","2024-10-15 13:46:22"),
("1994","Admin","Added new menu","Admin added a new menu: Pork Siningang","2024-10-15 14:14:16"),
("1995","Admin","Added new menu","Admin added a new menu: Bangus Siningang","2024-10-15 14:31:02"),
("1996","Admin","Login","Admin logged in","2024-10-15 15:42:06"),
("1997","Admin","Update menu","Admin updated menu: Pork Siningang","2024-10-15 16:42:56"),
("1998","Admin","Update menu","Admin updated menu: Pork Siningang","2024-10-15 16:44:03"),
("1999","Admin","Update menu","Admin updated menu: Pork Siningang","2024-10-15 16:44:27"),
("2000","Admin","Update menu","Admin updated menu: Pork Siningang","2024-10-15 16:45:54"),
("2001","Admin","Update menu","Admin updated menu: Pork Siningang","2024-10-15 16:48:47"),
("2002","Admin","Backup Database","Admin backed up the database.","2024-10-15 16:58:45"),
("2003","Admin","Update KTV Booking","Updated KTV booking for customer: Joezer Aleño","2024-10-15 18:57:32"),
("2004","Admin","Added new category","Admin added a new category named SINGLE ROOM","2024-10-15 19:06:41"),
("2005","Admin","Added new room","Admin added a new room: 8","2024-10-15 19:07:39"),
("2006","Admin","Added new menu","Admin added a new menu: Chicken","2024-10-15 19:31:52"),
("2007","Admin","Restore database","Admin restored database","2024-10-15 19:40:05"),
("2008","Admin","Update Booking","Updated booking for customer: Alexis Mejica","2024-10-15 19:46:06"),
("2009","Admin","Login","Admin logged in","2024-10-16 05:50:37"),
("2010","Admin","Logout","Admin logged out","2024-10-16 05:52:20"),
("2011","Admin","Login","Admin logged in","2024-10-17 06:14:58"),
("2012","Admin","Update Booking","Updated booking for customer: Joezer Aleño","2024-10-17 06:25:24"),
("2013","Admin","Logout","Admin logged out","2024-10-17 06:28:06"),
("2014","Admin","Login","Admin logged in","2024-10-17 11:51:49"),
("2015","Admin","Login","Admin logged in","2024-10-17 21:49:11"),
("2016","Admin","Update Booking","Updated booking for customer: Joezer Aleño","2024-10-17 22:08:28");
INSERT INTO activity_log VALUES
("2017","Admin","Update Booking","Updated booking for customer: Joezer Aleño","2024-10-17 22:11:09"),
("2018","Admin","Update Booking","Updated booking for customer: Joezer Aleño","2024-10-17 22:11:26"),
("2019","Admin","Update Booking","Updated booking for customer: Joezer Aleño","2024-10-17 22:11:45"),
("2020","Admin","Update Booking","Updated booking for customer: Joezer Aleño","2024-10-17 22:20:00"),
("2021","Admin","Update Booking","Updated booking for customer: Joezer Aleño","2024-10-17 22:23:44"),
("2022","Admin","Login","Admin logged in","2024-10-18 08:05:58"),
("2023","Admin","Login","Admin logged in","2024-10-18 12:56:20"),
("2024","Admin","Delete Booking","Booking ID 88 was marked as deleted by Admin","2024-10-18 13:39:19"),
("2025","Admin","Delete Booking","Booking ID 87 was marked as deleted by Admin","2024-10-18 13:46:38"),
("2026","Admin","Delete Booking","Booking ID 86 was marked as deleted by Admin","2024-10-18 13:56:09"),
("2027","Admin","Delete Booking","Booking ID 85 was marked as deleted by Admin","2024-10-18 13:57:18"),
("2028","Admin","Delete Booking","Booking ID 83 was marked as deleted by Admin","2024-10-18 13:59:19"),
("2029","Admin","Delete Booking","Booking ID 81 was marked as deleted by Admin","2024-10-18 13:59:22"),
("2030","Admin","Delete Booking","Booking ID 79 was marked as deleted by Admin","2024-10-18 13:59:24"),
("2031","Admin","Delete Booking","Booking ID 76 was marked as deleted by Admin","2024-10-18 14:09:01"),
("2032","Admin","Delete Booking","Booking ID 75 was marked as deleted by Admin","2024-10-18 14:09:02"),
("2033","Admin","Delete Booking","Booking ID 74 was marked as deleted by Admin","2024-10-18 14:09:03"),
("2034","Admin","Delete Booking","Booking ID 73 was marked as deleted by Admin","2024-10-18 14:09:04"),
("2035","Admin","Delete Booking","Booking ID 72 was marked as deleted by Admin","2024-10-18 14:09:05"),
("2036","Admin","Delete Booking","Booking ID 71 was marked as deleted by Admin","2024-10-18 14:09:06"),
("2037","Admin","Delete Booking","Booking ID 67 was marked as deleted by Admin","2024-10-18 14:09:06"),
("2038","Admin","Delete Booking","Booking ID 64 was marked as deleted by Admin","2024-10-18 14:09:31"),
("2039","Admin","Delete Booking","Booking ID 63 was marked as deleted by Admin","2024-10-18 14:09:32"),
("2040","Admin","Delete Booking","Booking ID 62 was marked as deleted by Admin","2024-10-18 14:09:33"),
("2041","Admin","Delete Booking","Booking ID 61 was marked as deleted by Admin","2024-10-18 14:09:33"),
("2042","Admin","Delete Booking","Booking ID 60 was marked as deleted by Admin","2024-10-18 14:09:34"),
("2043","Admin","Delete Booking","Booking ID 59 was marked as deleted by Admin","2024-10-18 14:09:34"),
("2044","Admin","Delete Booking","Booking ID 57 was marked as deleted by Admin","2024-10-18 14:09:34"),
("2045","Admin","Delete Booking","Booking ID 56 was marked as deleted by Admin","2024-10-18 14:09:35"),
("2046","Admin","Delete Booking","Booking ID 55 was marked as deleted by Admin","2024-10-18 14:09:35"),
("2047","Admin","Delete Booking","Booking ID 55 was marked as deleted by Admin","2024-10-18 14:09:35"),
("2048","Admin","Delete Booking","Booking ID 55 was marked as deleted by Admin","2024-10-18 14:09:35"),
("2049","Admin","Delete Booking","Booking ID 54 was marked as deleted by Admin","2024-10-18 14:09:36"),
("2050","Admin","Delete Booking","Booking ID 54 was marked as deleted by Admin","2024-10-18 14:09:36"),
("2051","Admin","Delete Booking","Booking ID 53 was marked as deleted by Admin","2024-10-18 14:09:36"),
("2052","Admin","Delete Booking","Booking ID 52 was marked as deleted by Admin","2024-10-18 14:09:36"),
("2053","Admin","Delete Booking","Booking ID 51 was marked as deleted by Admin","2024-10-18 14:09:37"),
("2054","Admin","Delete Booking","Booking ID 50 was marked as deleted by Admin","2024-10-18 14:09:37"),
("2055","Admin","Delete Booking","Booking ID 48 was marked as deleted by Admin","2024-10-18 14:09:37"),
("2056","Admin","Delete Booking","Booking ID 47 was marked as deleted by Admin","2024-10-18 14:09:38"),
("2057","Admin","Delete Booking","Booking ID 46 was marked as deleted by Admin","2024-10-18 14:09:39"),
("2058","Admin","Login","Admin logged in","2024-10-18 20:49:43"),
("2059","Admin","Delete Ktv_bookings","Ktv_bookings ID 14 was marked as deleted by Admin","2024-10-18 21:36:55"),
("2060","Admin","Delete Ktv_bookings","Ktv_bookings ID 13 was marked as deleted by Admin","2024-10-18 21:36:58"),
("2061","Admin","Delete Ktv_bookings","Ktv_bookings ID 12 was marked as deleted by Admin","2024-10-18 21:36:59"),
("2062","Admin","Delete Ktv_bookings","Ktv_bookings ID 11 was marked as deleted by Admin","2024-10-18 21:37:00"),
("2063","Admin","Delete Bookings","Bookings ID 25 was marked as deleted by Admin","2024-10-18 21:37:55"),
("2064","Admin","Delete Bookings","Bookings ID 26 was marked as deleted by Admin","2024-10-18 21:37:57"),
("2065","Admin","Delete Bookings","Bookings ID 25 was marked as deleted by Admin","2024-10-18 21:42:44"),
("2066","Admin","Delete Bookings","Bookings ID 25 was marked as deleted by Admin","2024-10-18 21:42:48"),
("2067","Admin","Delete Ktv_bookings","Ktv_bookings ID 10 was marked as deleted by Admin","2024-10-18 21:43:49"),
("2068","Admin","Delete Rooms","Rooms ID 25 was marked as deleted by Admin","2024-10-18 21:49:47"),
("2069","Admin","Delete Rooms","Rooms ID 26 was marked as deleted by Admin","2024-10-18 21:49:48"),
("2070","Admin","Delete Ktv_rooms","Ktv_rooms ID 1 was marked as deleted by Admin","2024-10-18 22:01:43"),
("2071","Admin","Delete Ktv_rooms","Ktv_rooms ID 2 was marked as deleted by Admin","2024-10-18 22:01:48"),
("2072","Admin","Delete Ktv_rooms","Ktv_rooms ID 3 was marked as deleted by Admin","2024-10-18 22:04:42"),
("2073","Admin","Delete Rooms","Rooms ID 25 was marked as deleted by Admin","2024-10-18 22:04:49"),
("2074","Admin","Delete Rooms","Rooms ID 26 was marked as deleted by Admin","2024-10-18 22:04:50"),
("2075","Admin","Delete Rooms","Rooms ID 28 was marked as deleted by Admin","2024-10-18 22:04:52"),
("2076","Admin","Update category","Admin updated category: DELUXE ROOM","2024-10-18 22:05:53"),
("2077","Admin","Delete Rooms","Rooms ID 25 was marked as deleted by Admin","2024-10-18 22:06:48"),
("2078","Admin","Delete Ktv_rooms","Ktv_rooms ID 4 was marked as deleted by Admin","2024-10-18 22:07:01"),
("2079","Admin","Delete Rooms","Rooms ID 25 was marked as deleted by Admin","2024-10-18 22:07:08"),
("2080","Admin","Delete Rooms","Rooms ID 26 was marked as deleted by Admin","2024-10-18 22:07:09"),
("2081","Admin","Delete Rooms","Rooms ID 25 was marked as deleted by Admin","2024-10-18 22:10:59"),
("2082","Admin","Delete Rooms","Rooms ID 25 was marked as deleted by Admin","2024-10-18 22:11:03"),
("2083","Admin","Delete Rooms","Rooms ID 26 was marked as deleted by Admin","2024-10-18 22:11:04"),
("2084","Admin","Delete Rooms","Rooms ID 27 was marked as deleted by Admin","2024-10-18 22:11:05"),
("2085","Admin","Delete Rooms","Rooms ID 28 was marked as deleted by Admin","2024-10-18 22:11:05"),
("2086","Admin","Delete Rooms","Rooms ID 29 was marked as deleted by Admin","2024-10-18 22:11:06"),
("2087","Admin","Delete Rooms","Rooms ID 25 was marked as deleted by Admin","2024-10-18 22:12:55"),
("2088","Admin","Delete Rooms","Rooms ID 26 was marked as deleted by Admin","2024-10-18 22:12:57"),
("2089","Admin","Delete Rooms","Rooms ID 25 was marked as deleted by Admin","2024-10-18 22:12:59"),
("2090","Admin","Delete Rooms","Rooms ID 26 was marked as deleted by Admin","2024-10-18 22:13:00"),
("2091","Admin","Delete Rooms","Rooms ID 25 was marked as deleted by Admin","2024-10-18 22:15:05"),
("2092","Admin","Delete Rooms","Rooms ID 26 was marked as deleted by Admin","2024-10-18 22:15:06"),
("2093","Admin","Delete Ktv_bookings","Ktv_bookings ID 9 was marked as deleted by Admin","2024-10-18 22:15:20"),
("2094","Admin","Delete Rooms","Rooms ID 25 was marked as deleted by Admin","2024-10-18 22:16:22"),
("2095","Admin","Delete Rooms","Rooms ID 26 was marked as deleted by Admin","2024-10-18 22:16:24"),
("2096","Admin","Delete Rooms","Rooms ID 27 was marked as deleted by Admin","2024-10-18 22:16:24"),
("2097","Admin","Delete Rooms","Rooms ID 25 was marked as deleted by Admin","2024-10-18 22:16:37"),
("2098","Admin","Delete Ktv_rooms","Ktv_rooms ID 1 was marked as deleted by Admin","2024-10-18 22:27:29"),
("2099","Admin","Delete Rooms","Rooms ID 25 was marked as deleted by Admin","2024-10-18 22:27:38"),
("2100","Admin","Delete Bookings","Bookings ID 105 was marked as deleted by Admin","2024-10-18 22:38:16"),
("2101","Admin","Delete Bookings","Bookings ID 105 was marked as deleted by Admin","2024-10-18 22:38:24"),
("2102","Admin","Delete Bookings","Bookings ID 109 was marked as deleted by Admin","2024-10-18 22:38:27"),
("2103","Admin","Delete Bookings","Bookings ID 105 was marked as deleted by Admin","2024-10-18 22:39:38"),
("2104","Admin","Delete Categories","Categories ID 105 was marked as deleted by Admin","2024-10-18 22:40:16"),
("2105","Admin","Delete Categories","Categories ID 105 was marked as deleted by Admin","2024-10-18 22:40:21"),
("2106","Admin","Delete Ktv_rooms","Ktv_rooms ID 2 was marked as deleted by Admin","2024-10-18 22:40:25"),
("2107","Admin","Delete Rooms","Rooms ID 26 was marked as deleted by Admin","2024-10-18 22:40:32"),
("2108","Admin","Delete Categories","Categories ID 105 was marked as deleted by Admin","2024-10-18 22:41:55"),
("2109","Admin","Delete Categories","Categories ID 105 was marked as deleted by Admin","2024-10-18 22:54:41"),
("2110","Admin","Delete Categories","Categories ID 105 was marked as deleted by Admin","2024-10-18 22:54:45"),
("2111","Admin","Delete Categories","Categories ID 109 was marked as deleted by Admin","2024-10-18 22:54:46"),
("2112","Admin","Delete Categories","Categories ID 106 was marked as deleted by Admin","2024-10-18 22:54:47"),
("2113","Admin","Delete Categories","Categories ID 108 was marked as deleted by Admin","2024-10-18 22:55:45"),
("2114","Admin","Delete Rooms","Rooms ID 25 was marked as deleted by Admin","2024-10-18 22:55:50"),
("2115","Admin","Delete Ktv_rooms","Ktv_rooms ID 3 was marked as deleted by Admin","2024-10-18 22:55:55"),
("2116","Admin","Delete Categories","Categories ID 110 was marked as deleted by Admin","2024-10-18 22:56:04");
INSERT INTO activity_log VALUES
("2117","Admin","Delete Rooms","Rooms ID 28 was marked as deleted by Admin","2024-10-18 23:05:18"),
("2118","Admin","Delete Blogs","Blogs ID 4 was marked as deleted by Admin","2024-10-18 23:13:15"),
("2119","Admin","Delete Blogs","Blogs ID 1 was marked as deleted by Admin","2024-10-18 23:13:33"),
("2120","Admin","Delete Menu","Menu ID 1 was marked as deleted by Admin","2024-10-18 23:20:28"),
("2121","Admin","Delete Bookings","Bookings ID 52 was marked as deleted by Admin","2024-10-18 23:21:30"),
("2122","Admin","Delete Bookings","Bookings ID 51 was marked as deleted by Admin","2024-10-18 23:21:31"),
("2123","Admin","Delete Bookings","Bookings ID 50 was marked as deleted by Admin","2024-10-18 23:21:32"),
("2124","Admin","Delete Ktv_bookings","Ktv_bookings ID 3 was marked as deleted by Admin","2024-10-18 23:21:50"),
("2125","Admin","Delete Seat_bookings","Seat_bookings ID  was marked as deleted by Admin","2024-10-18 23:29:03"),
("2126","Admin","Delete Seat_bookings","Seat_bookings ID  was marked as deleted by Admin","2024-10-18 23:29:08"),
("2127","Admin","Delete Seat_bookings","Seat_bookings ID  was marked as deleted by Admin","2024-10-18 23:29:42"),
("2128","Admin","Delete Seat_bookings","Seat_bookings ID  was marked as deleted by Admin","2024-10-18 23:29:43"),
("2129","Admin","Delete Seat_bookings","Seat_bookings ID  was marked as deleted by Admin","2024-10-18 23:29:46"),
("2130","Admin","Delete Seat_bookings","Seat_bookings ID  was marked as deleted by Admin","2024-10-18 23:29:47"),
("2131","Admin","Delete Seat_bookings","Seat_bookings ID  was marked as deleted by Admin","2024-10-18 23:29:47"),
("2132","Admin","Delete Seat_bookings","Seat_bookings ID  was marked as deleted by Admin","2024-10-18 23:29:48"),
("2133","Admin","Delete Seat_bookings","Seat_bookings ID  was marked as deleted by Admin","2024-10-18 23:32:04"),
("2134","Admin","Delete Seat_bookings","Seat_bookings ID  was marked as deleted by Admin","2024-10-18 23:32:05"),
("2135","Admin","Delete Seat_bookings","Seat_bookings ID  was marked as deleted by Admin","2024-10-18 23:32:07"),
("2136","Admin","Delete Seat_bookings","Seat_bookings ID  was marked as deleted by Admin","2024-10-18 23:32:07"),
("2137","Admin","Delete Seat_bookings","Seat_bookings ID  was marked as deleted by Admin","2024-10-18 23:34:44"),
("2138","Admin","Delete Seat_bookings","Seat_bookings ID  was marked as deleted by Admin","2024-10-18 23:34:45"),
("2139","Admin","Delete Seat_bookings","Seat_bookings ID  was marked as deleted by Admin","2024-10-18 23:34:45"),
("2140","Admin","Delete Seat_bookings","Seat_bookings ID  was marked as deleted by Admin","2024-10-18 23:34:45"),
("2141","Admin","Delete Seat_bookings","Seat_bookings ID  was marked as deleted by Admin","2024-10-18 23:34:46"),
("2142","Admin","Delete Seat_bookings","Seat_bookings ID  was marked as deleted by Admin","2024-10-18 23:34:46"),
("2143","Admin","Delete Seat_bookings","Seat_bookings ID  was marked as deleted by Admin","2024-10-18 23:34:55"),
("2144","Admin","Delete Seat_bookings","Seat_bookings ID  was marked as deleted by Admin","2024-10-18 23:34:56"),
("2145","Admin","Delete Seat_bookings","Seat_bookings ID  was marked as deleted by Admin","2024-10-18 23:34:57"),
("2146","Admin","Delete Seat_bookings","Seat_bookings ID  was marked as deleted by Admin","2024-10-18 23:34:57"),
("2147","Admin","Delete Seat_bookings","Seat_bookings ID  was marked as deleted by Admin","2024-10-18 23:34:57"),
("2148","Admin","Delete Seat_bookings","Seat_bookings ID  was marked as deleted by Admin","2024-10-18 23:34:58"),
("2149","Admin","Delete Seat_bookings","Seat_bookings ID  was marked as deleted by Admin","2024-10-18 23:34:58"),
("2150","Admin","Delete Seat_bookings","Seat_bookings ID  was marked as deleted by Admin","2024-10-18 23:34:58"),
("2151","Admin","Delete Seat_bookings","Seat_bookings ID  was marked as deleted by Admin","2024-10-18 23:34:58"),
("2152","Admin","Delete Seat_bookings","Seat_bookings ID  was marked as deleted by Admin","2024-10-18 23:34:59"),
("2153","Admin","Delete Seat_bookings","Seat_bookings ID  was marked as deleted by Admin","2024-10-18 23:35:00"),
("2154","Admin","Delete Seat_bookings","Seat_bookings ID  was marked as deleted by Admin","2024-10-18 23:35:00"),
("2155","Admin","Delete Seat_bookings","Seat_bookings ID 18 was marked as deleted by Admin","2024-10-18 23:39:51"),
("2156","Admin","Delete Seat_bookings","Seat_bookings ID 17 was marked as deleted by Admin","2024-10-18 23:39:55"),
("2157","Admin","Delete Seat_bookings","Seat_bookings ID 16 was marked as deleted by Admin","2024-10-18 23:40:17"),
("2158","Admin","Delete Seat_bookings","Seat_bookings ID 15 was marked as deleted by Admin","2024-10-18 23:40:18"),
("2159","Admin","Delete Seat_bookings","Seat_bookings ID 14 was marked as deleted by Admin","2024-10-18 23:40:22"),
("2160","Admin","Delete Staff","Staff ID 25 was marked as deleted by Admin","2024-10-18 23:49:49"),
("2161","Admin","Delete Ktv_bookings","Ktv_bookings ID 12 was marked as deleted by Admin","2024-10-18 23:50:28"),
("2162","Admin","Delete Bookings","Bookings ID 20 was marked as deleted by Admin","2024-10-18 23:55:49"),
("2163","Admin","Delete Ratings","Ratings ID 20 was marked as deleted by Admin","2024-10-18 23:57:41"),
("2164","Admin","Delete Ratings","Ratings ID 18 was marked as deleted by Admin","2024-10-18 23:57:44"),
("2165","Admin","Delete Ratings","Ratings ID 17 was marked as deleted by Admin","2024-10-18 23:57:45"),
("2166","Admin","Delete Ratings","Ratings ID 16 was marked as deleted by Admin","2024-10-18 23:57:46"),
("2167","Admin","Delete Bookings","Bookings ID 2 was marked as deleted by Admin","2024-10-19 00:03:27"),
("2168","Admin","Delete Bookings","Bookings ID 1 was marked as deleted by Admin","2024-10-19 00:03:30"),
("2169","Admin","Delete Bookings","Bookings ID 4 was marked as deleted by Admin","2024-10-19 00:03:31"),
("2170","Admin","Delete Bookings","Bookings ID 3 was marked as deleted by Admin","2024-10-19 00:03:33"),
("2171","Admin","Delete Bookings","Bookings ID 3 was marked as deleted by Admin","2024-10-19 00:03:49"),
("2172","Admin","Delete Contact_messages","Contact_messages ID 4 was marked as deleted by Admin","2024-10-19 00:05:45"),
("2173","Admin","Delete Contact_messages","Contact_messages ID 2 was marked as deleted by Admin","2024-10-19 00:05:53"),
("2174","Admin","Add KTV Images","Admin added images to KTV room ID: 4","2024-10-19 00:27:08"),
("2175","Admin","Add KTV Images","Admin added images to KTV room ID: 4","2024-10-19 00:29:57"),
("2176","Admin","Delete Image","Admin deleted image: ../../../imagektv/ktv_image_1729268997_67128d05782a5.jfif","2024-10-19 00:30:04"),
("2177","Admin","Add KTV Images","Admin added images to KTV room ID: 4","2024-10-19 00:31:17"),
("2178","Admin","Delete Image","Admin deleted image","2024-10-19 00:34:23"),
("2179","Admin","Add KTV Images","Admin added images to KTV room ID: 4","2024-10-19 00:39:26"),
("2180","Admin","Delete Image","Admin deleted image","2024-10-19 00:39:34"),
("2181","Admin","Add Room Images","Admin added new images to room ID: 26","2024-10-19 00:43:08"),
("2182","Admin","Delete Image","Admin deleted image room","2024-10-19 00:45:59"),
("2183","Admin","Delete Image","Admin deleted image room","2024-10-19 00:46:01"),
("2184","Admin","Update Room","Admin updated room: Library","2024-10-19 00:46:18"),
("2185","Admin","Delete Rooms","Rooms ID 26 was marked as deleted by Admin","2024-10-19 00:59:21"),
("2186","Admin","Delete Seat_bookings","Seat_bookings ID 13 was marked as deleted by Admin","2024-10-19 01:00:12"),
("2187","Admin","Delete Ratings","Ratings ID 10 was marked as deleted by Admin","2024-10-19 01:00:40"),
("2188","Admin","Delete Ratings","Ratings ID 9 was marked as deleted by Admin","2024-10-19 01:00:41"),
("2189","Admin","Logout","Admin logged out","2024-10-19 01:01:45"),
("2190","Admin","Login","Admin logged in","2024-10-19 06:32:52"),
("2191","Admin","Delete Rooms","Rooms ID 27 was marked as deleted by Admin","2024-10-19 06:40:42"),
("2192","Admin","Delete Bookings","Bookings ID 48 was marked as deleted by Admin","2024-10-19 06:51:40"),
("2193","Admin","Delete Categories","Categories ID 107 was marked as deleted by Admin","2024-10-19 06:59:31"),
("2194","Admin","Delete Ktv_rooms","Ktv_rooms ID 4 was marked as deleted by Admin","2024-10-19 07:15:44"),
("2195","Admin","Delete Blogs","Blogs ID 2 was marked as deleted by Admin","2024-10-19 07:19:37"),
("2196","Admin","Delete Menu","Menu ID 2 was marked as deleted by Admin","2024-10-19 07:23:27"),
("2197","Admin","Delete Ktv_bookings","Ktv_bookings ID 11 was marked as deleted by Admin","2024-10-19 07:26:56"),
("2198","Admin","Backup Database","Admin backed up the database.","2024-10-19 07:29:13"),
("2199","Admin","Update Table Seats","Admin updated the available seats to 290 for table ID: 1","2024-10-19 07:30:32"),
("2200","Admin","Update Table Seats","Admin updated the available seats to 300 for table ID: 1","2024-10-19 07:30:43"),
("2201","Admin","Delete Contact_messages","Contact_messages ID 1 was marked as deleted by Admin","2024-10-19 07:33:48"),
("2202","Admin","Delete Contact_messages","Contact_messages ID 1 was marked as deleted by Admin","2024-10-19 07:57:43"),
("2203","Admin","Restore Contact_messages","Contact_messages with ID 1 was restored by Admin","2024-10-19 07:58:01"),
("2204","Admin","Restore Contact_messages","Contact_messages with ID 1 was restored by Admin","2024-10-19 08:01:40"),
("2205","Admin","Restore Ktv_bookings","Ktv_bookings with ID 11 was restored by Admin","2024-10-19 08:01:48"),
("2206","Admin","Delete Rooms","Rooms ID 29 was marked as deleted by Admin","2024-10-19 08:01:56"),
("2207","Admin","Restore Rooms","Rooms with ID 29 was restored by Admin","2024-10-19 08:02:11"),
("2208","Admin","Restore Menu","Menu with ID 2 was restored by Admin","2024-10-19 08:48:30"),
("2209","Admin","Restore Blogs","Blogs with ID 2 was restored by Admin","2024-10-19 08:48:34"),
("2210","Admin","Restore Ktv_rooms","Ktv_rooms with ID 4 was restored by Admin","2024-10-19 08:48:39"),
("2211","Admin","Restore Categories","Categories with ID 107 was restored by Admin","2024-10-19 08:48:41"),
("2212","Admin","Restore Bookings","Bookings with ID 48 was restored by Admin","2024-10-19 08:48:43"),
("2213","Admin","Restore Rooms","Rooms with ID 27 was restored by Admin","2024-10-19 08:48:45"),
("2214","Admin","Restore Ratings","Ratings with ID 9 was restored by Admin","2024-10-19 08:48:47"),
("2215","Admin","Restore Ratings","Ratings with ID 10 was restored by Admin","2024-10-19 08:48:49"),
("2216","Admin","Restore Seat_bookings","Seat_bookings with ID 13 was restored by Admin","2024-10-19 08:48:50");
INSERT INTO activity_log VALUES
("2217","Admin","Restore Rooms","Rooms with ID 26 was restored by Admin","2024-10-19 08:48:52"),
("2218","Admin","Delete Ktv_rooms","Ktv_rooms ID 4 was marked as deleted by Admin","2024-10-19 08:49:10"),
("2219","Admin","Restore Ktv_rooms","Ktv_rooms with ID 4 was restored by Admin","2024-10-19 08:49:18"),
("2220","Admin","Delete Rooms","Rooms ID 26 was marked as deleted by Admin","2024-10-19 08:49:26"),
("2221","Admin","Delete Rooms","Rooms ID 27 was marked as deleted by Admin","2024-10-19 08:49:27"),
("2222","Admin","Delete Rooms","Rooms ID 29 was marked as deleted by Admin","2024-10-19 08:49:28"),
("2223","Admin","Restore Rooms","Rooms with ID 29 was restored by Admin","2024-10-19 08:49:32"),
("2224","Admin","Restore Rooms","Rooms with ID 27 was restored by Admin","2024-10-19 08:49:34"),
("2225","Admin","Restore Rooms","Rooms with ID 26 was restored by Admin","2024-10-19 08:49:35"),
("2226","Admin","Delete Rooms","Rooms ID 26 was marked as deleted by Admin","2024-10-19 08:51:51"),
("2227","Admin","Restore Rooms","Rooms with ID 26 was restored by Admin","2024-10-19 08:51:56"),
("2228","Admin","Delete Bookings","Bookings ID 46 was marked as deleted by Admin","2024-10-19 08:52:09"),
("2229","Admin","Restore Bookings","Bookings with ID 46 was restored by Admin","2024-10-19 09:15:50"),
("2230","Admin","Delete Rooms","Rooms ID 26 was marked as deleted by Admin","2024-10-19 09:15:57"),
("2231","Admin","Restore Rooms","Rooms with ID 26 was restored by Admin","2024-10-19 09:27:46"),
("2232","Admin","Delete Rooms","Rooms ID 26 was marked as deleted by Admin","2024-10-19 09:27:52"),
("2233","Admin","Restore Rooms","Rooms with ID 26 was restored by Admin","2024-10-19 09:31:44"),
("2234","Admin","Delete Rooms","Rooms ID 26 was marked as deleted by Admin","2024-10-19 09:31:54"),
("2235","Admin","Delete Bookings","Bookings ID 48 was marked as deleted by Admin","2024-10-19 09:32:07"),
("2236","Admin","Delete Bookings","Bookings ID 46 was marked as deleted by Admin","2024-10-19 09:32:08"),
("2237","Admin","Restore Bookings","Bookings with ID 46 was restored by Admin","2024-10-19 09:37:06"),
("2238","Admin","Restore Bookings","Bookings with ID 48 was restored by Admin","2024-10-19 10:20:48"),
("2239","Admin","Delete Blogs","Blogs ID 2 was marked as deleted by Admin","2024-10-19 10:21:02"),
("2240","Admin","Delete Blogs","Blogs with ID 2 was deleted permanently by Admin","2024-10-19 10:21:07"),
("2241","Admin","Delete Menu","Menu ID 2 was marked as deleted by Admin","2024-10-19 10:21:40"),
("2242","Admin","Delete Menu","Menu with ID 2 was deleted permanently by Admin","2024-10-19 10:21:44"),
("2243","Admin","Restore Rooms","Rooms with ID 26 was restored by Admin","2024-10-19 10:23:12"),
("2244","Admin","Delete Bookings","Bookings ID 48 was marked as deleted by Admin","2024-10-19 10:23:21"),
("2245","Admin","Delete Rooms","Rooms ID 26 was marked as deleted by Admin","2024-10-19 10:23:37"),
("2246","Admin","Delete Ktv_rooms","Ktv_rooms ID 4 was marked as deleted by Admin","2024-10-19 10:24:15"),
("2247","Admin","Delete Blogs","Blogs ID 3 was marked as deleted by Admin","2024-10-19 10:24:25"),
("2248","Admin","Delete Blogs","Blogs with ID 3 was deleted permanently by Admin","2024-10-19 10:24:29"),
("2249","Admin","Delete Categories","Categories ID 107 was marked as deleted by Admin","2024-10-19 10:25:05"),
("2250","Admin","Delete Categories","Categories with ID 107 was deleted permanently by Admin","2024-10-19 10:25:11"),
("2251","Admin","Delete Ktv_bookings","Ktv_bookings ID 11 was marked as deleted by Admin","2024-10-19 10:25:26"),
("2252","Admin","Delete Ktv_bookings","Ktv_bookings with ID 11 was deleted permanently by Admin","2024-10-19 10:25:30"),
("2253","Admin","Delete Ktv_bookings","Ktv_bookings ID 10 was marked as deleted by Admin","2024-10-19 10:25:43"),
("2254","Admin","Delete Ktv_bookings","Ktv_bookings with ID 10 was deleted permanently by Admin","2024-10-19 10:25:48"),
("2255","Admin","Delete Bookings","Bookings ID 46 was marked as deleted by Admin","2024-10-19 10:25:55"),
("2256","Admin","Delete Seat_bookings","Seat_bookings ID 10 was marked as deleted by Admin","2024-10-19 10:26:07"),
("2257","Admin","Delete Seat_bookings","Seat_bookings ID 9 was marked as deleted by Admin","2024-10-19 10:26:09"),
("2258","Admin","Delete Seat_bookings","Seat_bookings ID 8 was marked as deleted by Admin","2024-10-19 10:26:11"),
("2259","Admin","Delete Seat_bookings","Seat_bookings with ID 8 was deleted permanently by Admin","2024-10-19 10:26:16"),
("2260","Admin","Delete Seat_bookings","Seat_bookings with ID 9 was deleted permanently by Admin","2024-10-19 10:26:19"),
("2261","Admin","Delete Seat_bookings","Seat_bookings with ID 10 was deleted permanently by Admin","2024-10-19 10:26:31"),
("2262","Admin","Delete Staff","Staff ID 25 was marked as deleted by Admin","2024-10-19 10:26:47"),
("2263","Admin","Delete Ratings","Ratings ID 13 was marked as deleted by Admin","2024-10-19 10:26:59"),
("2264","Admin","Delete Ratings","Ratings ID 12 was marked as deleted by Admin","2024-10-19 10:27:00"),
("2265","Admin","Delete Ratings","Ratings with ID 12 was deleted permanently by Admin","2024-10-19 10:27:04"),
("2266","Admin","Delete Ratings","Ratings with ID 13 was deleted permanently by Admin","2024-10-19 10:27:07"),
("2267","Admin","Delete Contact_messages","Contact_messages ID 1 was marked as deleted by Admin","2024-10-19 10:27:13"),
("2268","Admin","Delete Contact_messages","Contact_messages with ID 1 was deleted permanently by Admin","2024-10-19 10:27:17"),
("2269","Admin","Delete Staff","Staff with ID 25 was deleted permanently by Admin","2024-10-19 11:02:29"),
("2270","Admin","Delete Blogs","Blogs ID 5 was marked as deleted by Admin","2024-10-19 11:05:59"),
("2271","Admin","Delete Blogs","Blogs with ID 5 was deleted permanently by Admin","2024-10-19 11:06:16"),
("2272","Admin","Restore Bookings","Bookings with ID 46 was restored by Admin","2024-10-19 11:06:21"),
("2273","Admin","Delete Menu","Menu ID 3 was marked as deleted by Admin","2024-10-19 11:08:58"),
("2274","Admin","Delete Menu","Menu with ID 3 was deleted permanently by Admin","2024-10-19 11:09:02"),
("2275","Admin","Delete Rooms","Rooms ID 29 was marked as deleted by Admin","2024-10-19 11:09:17"),
("2276","Admin","Delete Rooms","Rooms ID 27 was marked as deleted by Admin","2024-10-19 11:51:06"),
("2277","Admin","Restore Rooms","Rooms with ID 27 was restored by Admin","2024-10-19 11:51:12"),
("2278","Admin","Restore Rooms","Rooms with ID 26 was restored by Admin","2024-10-19 11:51:19"),
("2279","Admin","Delete Bookings","Bookings ID 47 was marked as deleted by Admin","2024-10-19 11:51:38"),
("2280","Admin","Delete Bookings","Bookings ID 46 was marked as deleted by Admin","2024-10-19 11:51:40"),
("2281","Admin","Delete Bookings","Bookings with ID 46 was deleted permanently by Admin","2024-10-19 11:54:13"),
("2282","Admin","Delete Bookings","Bookings with ID 47 was deleted permanently by Admin","2024-10-19 11:54:29"),
("2283","Admin","Delete Rooms","Rooms with ID 29 was deleted permanently by Admin","2024-10-19 11:54:31"),
("2284","Admin","Delete Ktv_rooms","Ktv_rooms with ID 4 was deleted permanently by Admin","2024-10-19 11:54:33"),
("2285","Admin","Delete Bookings","Bookings with ID 48 was deleted permanently by Admin","2024-10-19 11:54:36"),
("2286","Admin","Delete Rooms","Rooms ID 26 was marked as deleted by Admin","2024-10-19 11:54:44"),
("2287","Admin","Delete Rooms","Rooms with ID 26 was deleted permanently by Admin","2024-10-19 11:54:49"),
("2288","Admin","Delete Ktv_bookings","Ktv_bookings ID 9 was marked as deleted by Admin","2024-10-19 11:55:09"),
("2289","Admin","Delete Ktv_bookings","Ktv_bookings with ID 9 was deleted permanently by Admin","2024-10-19 11:55:15"),
("2290","Admin","Delete Seat_bookings","Seat_bookings ID 11 was marked as deleted by Admin","2024-10-19 11:55:24"),
("2291","Admin","Delete Seat_bookings","Seat_bookings with ID 11 was deleted permanently by Admin","2024-10-19 11:55:33"),
("2292","Admin","Delete Ratings","Ratings ID 11 was marked as deleted by Admin","2024-10-19 11:55:50"),
("2293","Admin","Delete Ratings","Ratings ID 10 was marked as deleted by Admin","2024-10-19 11:55:52"),
("2294","Admin","Delete Ratings","Ratings ID 9 was marked as deleted by Admin","2024-10-19 11:55:54"),
("2295","Admin","Delete Ratings","Ratings with ID 9 was deleted permanently by Admin","2024-10-19 11:56:10"),
("2296","Admin","Delete Ratings","Ratings with ID 10 was deleted permanently by Admin","2024-10-19 11:56:13"),
("2297","Admin","Delete Ratings","Ratings with ID 11 was deleted permanently by Admin","2024-10-19 11:56:15"),
("2298","Admin","Delete Contact_messages","Contact_messages ID 3 was marked as deleted by Admin","2024-10-19 11:56:24"),
("2299","Admin","Delete Contact_messages","Contact_messages with ID 3 was deleted permanently by Admin","2024-10-19 11:56:29"),
("2300","Admin","Update Seat Booking","Seat booking for customer Joezer Kallai L. Aleño (Booking ID: 13) was updated by Admin.","2024-10-19 12:01:57"),
("2301","Admin","Update Seat Booking","Seat booking for customer Joezer Kallai L. Aleño (Booking ID: 13) was updated by Admin.","2024-10-19 12:02:00"),
("2302","Admin","Update KTV Booking","Updated KTV booking for customer: Joezer Aleño","2024-10-19 12:02:26"),
("2303","Admin","Logout","Admin logged out","2024-10-19 12:08:16"),
("2304","Admin","Login","Admin logged in","2024-10-19 19:49:50"),
("2305","Admin","Added new staff","Admin added a new staff named Joezer Kallai L. Aleño","2024-10-19 19:53:52"),
("2306","Admin","Logout","Admin logged out","2024-10-19 20:00:18"),
("2307","Admin","Login","Admin logged in","2024-10-19 20:00:25"),
("2308","Admin","Logout","Admin logged out","2024-10-19 20:00:35"),
("2309","Admin","Login","Admin logged in","2024-10-19 20:08:00"),
("2310","Admin","Logout","Admin logged out","2024-10-19 20:08:03"),
("2311","Admin","Login","Admin logged in","2024-10-19 20:10:43"),
("2312","Admin","Logout","Admin logged out","2024-10-19 20:10:54"),
("2313","Admin","Login","Admin logged in","2024-10-19 20:16:07"),
("2314","Admin","Logout","Admin logged out","2024-10-19 20:16:11"),
("2315","Admin","Login","Admin logged in","2024-10-19 20:17:13"),
("2316","Admin","Logout","Admin logged out","2024-10-19 20:17:17");
INSERT INTO activity_log VALUES
("2317","Admin","Login","Admin logged in","2024-10-19 20:26:13"),
("2318","26","Login","Staff logged in","2024-10-19 20:29:13"),
("2319","Admin","Added new room","Admin added a new room: 1","2024-10-19 20:50:12"),
("2320","Admin","Added new room","Admin added a new room: 2","2024-10-19 20:50:27"),
("2321","Admin","Delete Rooms","Rooms ID 30 was marked as deleted by Admin","2024-10-19 20:51:41"),
("2322","Admin","Delete Rooms","Rooms ID 31 was marked as deleted by Admin","2024-10-19 20:51:42"),
("2323","Admin","Delete Rooms","Rooms with ID 31 was deleted permanently by Admin","2024-10-19 20:51:47"),
("2324","Admin","Delete Rooms","Rooms with ID 30 was deleted permanently by Admin","2024-10-19 20:51:49"),
("2325","Admin","Added new room","Admin added a new room: 1","2024-10-19 20:57:01"),
("2326","Admin","Delete Rooms","Rooms ID 32 was marked as deleted by Admin","2024-10-19 20:57:18"),
("2327","Admin","Added new room","Admin added a new room: Library","2024-10-19 20:59:01"),
("2328","Admin","Logout","Admin logged out","2024-10-19 21:00:10"),
("2329","26","Login","Staff logged in","2024-10-19 21:01:22"),
("2330","Admin","Added new KTV room","Admin added a new KTV room: KTV11","2024-10-19 21:09:10"),
("2331","Admin","Delete Rooms","Rooms ID 35 was marked as deleted by Admin","2024-10-19 21:28:55"),
("2332","Admin","Delete Rooms","Rooms ID 36 was marked as deleted by Admin","2024-10-19 21:28:57"),
("2333","Admin","Added new room","Admin added a new room: Librarybfgrg","2024-10-19 21:35:08"),
("2334","Admin","Logout","Admin logged out","2024-10-19 21:35:56"),
("2335","26","Login","Staff logged in","2024-10-19 21:36:28"),
("2336","26","Added new room","Staff added a new room: Librarybfgrgfnfyh","2024-10-19 21:37:14"),
("2337","26","Update Room","Staff (ID: 26) updated room: Good For 2","2024-10-19 21:41:37"),
("2338","26","Update Room","Staff (ID: 26) updated room: Good For 2","2024-10-19 21:41:43"),
("2339","26","Add Room Images","Staff (ID: 26) added new images to room ID: 27","2024-10-19 21:42:38"),
("2340","26","Delete Image","Staff (ID: 26) deleted image: ../../../imagerooms/image_1728482933.png","2024-10-19 21:44:42"),
("2341","26","Delete Image","Staff (ID: 26) deleted image: ../../../imagerooms/image_1728482933.png","2024-10-19 21:44:44"),
("2342","26","Added new KTV room","Staff (ID: 26) added a new KTV room: KTV11g","2024-10-19 21:48:52"),
("2343","26","Added new KTV room","Staff (ID: 26) added a new KTV room: KTV11gffd","2024-10-19 21:49:01"),
("2344","26","Update KTV Room","Staff (ID: 26) updated KTV room: KTV11","2024-10-19 21:52:25"),
("2345","26","Delete Rooms","Staff (ID: 26) marked Rooms ID 37 as deleted.","2024-10-19 21:54:45"),
("2346","26","Delete Rooms","Staff (ID: 26) marked Rooms ID 38 as deleted.","2024-10-19 21:54:48"),
("2347","26","Delete Ktv_rooms","Staff (ID: 26) marked Ktv_rooms ID 7 as deleted.","2024-10-19 21:55:03"),
("2348","26","Update KTV Room","Staff (ID: 26) updated KTV room: KTV11","2024-10-19 21:55:26"),
("2349","26","Add KTV Images","Staff (ID: 26) added images to KTV room ID: 5","2024-10-19 21:55:47"),
("2350","26","Delete Image","Staff (ID: 26) deleted an image with path: ../../../imagektv/ktv_image_1729346147_6713ba6340c13.png","2024-10-19 21:59:12"),
("2351","26","Update Table Seats","Staff (ID: 26) updated the available seats to 300 for table ID: 1","2024-10-19 22:01:27"),
("2352","26","Added new category","Staff (ID: 26) added a new category named DELUXES ROOM","2024-10-19 22:04:11"),
("2353","26","Delete Categories","Staff (ID: 26) marked Categories ID 111 as deleted.","2024-10-19 22:04:38"),
("2354","26","Added new blog","Staff (ID: 26) added a new blog: gfhftht","2024-10-19 22:08:17"),
("2355","26","Added new menu","Staff (ID: 26) added a new menu: Pork Siningangs","2024-10-19 22:12:30"),
("2356","26","Update menu","Staff (ID: 26) updated menu: Pork Siningangs","2024-10-19 22:16:13"),
("2357","Admin","Restore Categories","Categories with ID 111 was restored by Admin","2024-10-19 22:17:38"),
("2358","Admin","Delete Ktv_rooms","Ktv_rooms with ID 7 was deleted permanently by Admin","2024-10-19 22:17:41"),
("2359","Admin","Delete Rooms","Rooms with ID 38 was deleted permanently by Admin","2024-10-19 22:17:43"),
("2360","Admin","Delete Rooms","Rooms with ID 37 was deleted permanently by Admin","2024-10-19 22:22:11"),
("2361","26","Restore Rooms","Staff (ID: 26) restored Rooms with ID 36","2024-10-19 22:22:15"),
("2362","Admin","Update Booking","Updated booking for customer: Joezer Aleño","2024-10-19 22:22:59"),
("2363","26","Update Booking","Staff (ID: 26) updated booking for customer: Joezer Aleño","2024-10-19 22:24:25"),
("2364","Admin","Update KTV Booking","Updated KTV booking for customer: Joezer Aleño","2024-10-19 22:25:21"),
("2365","26","Update KTV Booking","Staff (ID: 26) updated KTV booking for customer: Joezer Aleño","2024-10-19 22:28:43"),
("2366","26","Update Seat Booking","Staff (ID: 26) updated seat booking for customer Joezer Kallai L. Aleño (Booking ID: 13).","2024-10-19 22:30:06"),
("2367","26","Delete Rooms","Rooms with ID 35 was deleted permanently by Staff (ID: 26)","2024-10-19 22:31:42");




CREATE TABLE `admin_acc` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `username` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `admin_pass` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO admin_acc VALUES
("1","Melinda","@admin","admin123");




CREATE TABLE `archived_entries` (
  `archive_id` int(11) NOT NULL AUTO_INCREMENT,
  `table_name` varchar(50) NOT NULL,
  `entry_id` int(11) NOT NULL,
  `entry_data` text NOT NULL,
  `deleted_at` datetime DEFAULT current_timestamp(),
  `status` tinyint(4) DEFAULT 1,
  PRIMARY KEY (`archive_id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO archived_entries VALUES
("58","rooms","32","{\"room_id\":32,\"room_name\":\"2\",\"room_type\":\"FAMILY ROOM\",\"room_description\":\"jhfhfhtfhgfbfththtfb\",\"room_package\":\"sfsrefsrf\\r\\nrsefgrsfsr\\r\\nfsegfse\\r\\ngfse\\r\\nfse\\r\\nfse\\r\\ngfse\\r\\ngfsergrsegse\\r\\ngesgrg\",\"price_per_night\":\"799.00\",\"max_occupancy\":6,\"status\":0,\"created_at\":\"2024-10-19 20:52:24\",\"available_slots\":4}","2024-10-19 20:57:18","1");




CREATE TABLE `blogs` (
  `blog_id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_title` varchar(255) NOT NULL,
  `blog_description` text NOT NULL,
  `image_name` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`blog_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO blogs VALUES
("1","Hand Make Ingredients","Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ac tortor at tellus feugiat congue quis ut nunc. Semper ac dolor vitae accumsan. interdum hendrerit lacinia.","image_1727913346.jpg","1","2024-10-03 07:55:46"),
("4","Room Area","Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ac tortor at tellus feugiat congue quis ut nunc. Semper ac dolor vitae accumsan. interdum hendrerit lacinia.","image_1727943318.png","1","2024-10-03 16:15:18"),
("6","gfhftht","gjgyjygjtyjtyj","image_1729346897.png","0","2024-10-19 22:08:17");




CREATE TABLE `bookings` (
  `booking_id` int(11) NOT NULL AUTO_INCREMENT,
  `room_id` int(11) NOT NULL,
  `check_in` date DEFAULT NULL,
  `check_out` date DEFAULT NULL,
  `rooms` int(11) DEFAULT NULL,
  `adults` int(11) DEFAULT NULL,
  `children` int(11) DEFAULT NULL,
  `total_price` decimal(10,2) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `booking_status` varchar(50) DEFAULT 'Pending',
  `valid_id` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`booking_id`),
  KEY `room_id` (`room_id`),
  CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`room_id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO bookings VALUES
("35","25","2024-10-15","2024-10-16","2","2","1","2800.00","Joezer","Aleño","alejoezer@gmail.com","09759549073","Pending","","0","2024-10-07 18:05:50"),
("36","25","2024-10-15","2024-10-16","2","2","1","2800.00","Joezer","Aleño","alejoezer@gmail.com","09759549073","Pending","","0","2024-10-07 18:14:40"),
("37","25","2024-10-15","2024-10-16","2","2","1","2800.00","Joezer","Aleño","alejoezer@gmail.com","09759549073","Pending","","0","2024-10-07 19:15:22"),
("38","26","2024-10-15","2024-10-16","1","2","2","1000.00","Joezer","Aleño","alejoezer@gmail.com","09759549073","Pending","","0","2024-10-07 22:16:13"),
("39","26","2024-10-15","2024-10-16","1","2","2","1000.00","Joezer","Aleño","alejoezer@gmail.com","09759549073","Pending","","0","2024-10-07 22:53:21"),
("40","26","2024-10-15","2024-10-16","1","2","2","1000.00","Joezer","Aleño","alejoezer@gmail.com","09759549073","Pending","","0","2024-10-07 23:15:44"),
("41","26","2024-10-15","2024-10-16","1","2","2","1000.00","Joezer","Aleño","alejoezer@gmail.com","09759549073","Pending","","0","2024-10-07 23:52:50"),
("42","26","2024-10-16","2024-10-17","1","1","2","1000.00","Joezer","Aleño","alejoezer@gmail.com","09759549073","Pending","","0","2024-10-08 13:27:51"),
("43","26","2024-10-15","2024-10-16","1","2","1","1000.00","Joezer","Aleño","alejoezer@gmail.com","09759549073","Pending","","0","2024-10-08 14:51:42"),
("44","26","2024-10-15","2024-10-16","1","2","1","1000.00","Joezer","Aleño","alejoezer@gmail.com","09759549073","Pending","","0","2024-10-08 15:02:23"),
("45","26","2024-10-16","2024-10-17","1","2","2","1000.00","Joezer","Aleño","alejoezer@gmail.com","09759549073","Pending","","0","2024-10-08 16:58:17"),
("49","26","2024-10-08","2024-10-09","1","2","1","1000.00","Joezer","Aleño","alejoezer@gmail.com","09759549073","Pending","","0","2024-10-08 19:08:46"),
("50","26","2024-10-08","2024-10-09","1","2","1","1000.00","Joezer","Aleño","alejoezer@gmail.com","09759549073","Pending","","1","2024-10-08 19:11:18"),
("51","26","2024-10-08","2024-10-09","1","2","1","1000.00","Joezer","Aleño","alejoezer@gmail.com","09759549073","Pending","","1","2024-10-08 19:17:12"),
("52","26","2024-10-08","2024-10-09","1","2","1","1000.00","Joezer","Aleño","alejoezer@gmail.com","09759549073","Pending","","1","2024-10-08 19:20:23"),
("53","26","2024-10-15","2024-10-16","1","2","1","1000.00","Joezer","Aleño","alejoezer@gmail.com","09759549073","Pending","","1","2024-10-08 20:42:23"),
("54","26","2024-10-09","2024-10-10","1","1","2","1000.00","Joezer","Aleño","alejoezer@gmail.com","09759549073","Pending","","1","2024-10-08 20:50:34"),
("55","26","2024-10-15","2024-10-16","1","1","2","1000.00","Joezer","Aleño","alejoezer@gmail.com","09759549073","Pending","","1","2024-10-08 22:25:04"),
("56","26","2024-10-09","2024-10-10","1","2","2","1000.00","Joezer","Aleño","alejoezer@gmail.com","09759549073","Pending","","1","2024-10-08 22:43:15"),
("57","26","2024-10-09","2024-10-10","1","2","1","1000.00","Joezer","Aleño","alejoezer@gmail.com","09759549073","Pending","","1","2024-10-08 23:09:33"),
("58","26","2024-10-09","2024-10-10","1","2","1","1000.00","Joezer","Aleño","alejoezer@gmail.com","09759549073","Pending","","0","2024-10-09 08:03:08"),
("59","26","2024-10-09","2024-10-10","1","2","1","1000.00","Joezer","Aleño","alejoezer@gmail.com","09759549073","pending","","1","2024-10-09 08:18:16"),
("60","26","2024-10-09","2024-10-10","1","2","0","1000.00","Joezer","Aleño","alejoezer@gmail.com","09759549073","Pending","","1","2024-10-09 08:36:25"),
("61","26","2024-10-11","2024-10-12","1","2","1","1000.00","Joezer","Aleño","alejoezer@gmail.com","09759549073","Pending","","1","2024-10-09 12:36:29"),
("62","25","2024-10-09","2024-10-10","4","3","3","5600.00","Joezer","Aleño","alejoezer@gmail.com","09759549073","Pending","","1","2024-10-09 12:46:28"),
("63","26","2024-10-12","2024-10-13","1","2","1","1000.00","Joezer","Aleño","alejoezer@gmail.com","09759549073","Check In","","1","2024-10-09 15:07:23"),
("64","25","2024-10-17","2024-10-18","5","3","0","7000.00","Joezer","Aleño","alejoezer@gmail.com","09759549073","Pending","","1","2024-10-09 15:14:38"),
("65","25","2024-10-23","2024-10-24","2","3","0","2800.00","Joezer","Aleño","alejoezer@gmail.com","09759549073","Pending","","0","2024-10-09 16:10:27"),
("66","25","2024-10-23","2024-10-24","2","3","0","2800.00","Joezer","Aleño","alejoezer@gmail.com","09759549073","Pending","","0","2024-10-09 16:29:13"),
("67","25","2024-10-23","2024-10-24","2","3","0","2800.00","Joezer","Aleño","alejoezer@gmail.com","09759549073","Reschedule","","1","2024-10-09 16:34:48"),
("68","26","2024-10-22","2024-10-23","1","2","0","1000.00","Joezer","Aleño","alejoezer@gmail.com","09759549073","Pending","","0","2024-10-09 16:46:02"),
("69","26","2024-10-22","2024-10-23","1","2","0","1000.00","Joezer","Aleño","alejoezer@gmail.com","09759549073","Pending","","0","2024-10-09 17:06:27"),
("70","26","2024-10-22","2024-10-23","1","2","0","1000.00","Joezer","Aleño","alejoezer@gmail.com","09759549073","Pending","","0","2024-10-09 17:07:26"),
("71","26","2024-10-23","2024-10-26","1","2","0","3000.00","Alexis","Mejica","alexismejica23@gmail.com","09307741934","Check Out","","1","2024-10-09 21:52:00"),
("72","27","2024-10-09","2024-10-10","2","2","0","1600.00","Alexis","Mejica","alexismejica23@gmail.com","09307741934","Check Out","","1","2024-10-09 22:12:19"),
("73","27","2024-10-24","2024-10-26","3","2","0","4800.00","Alexis","Mejica","alexismejica23@gmail.com","09307741934","Check In","","1","2024-10-10 09:41:16"),
("74","27","2024-10-10","2024-10-11","2","2","0","1600.00","Alexis","Mejica","alexismejica23@gmail.com","09307741934","Check Out","","1","2024-10-10 17:31:49"),
("75","27","2024-10-10","2024-10-11","2","2","0","1600.00","Alexis","Mejica","alexismejica23@gmail.com","09307741934","Check In","","1","2024-10-10 17:51:15"),
("76","28","2024-10-13","2024-10-14","2","2","0","200.00","Joezer","Aleño","alejoezer@gmail.com","09759549073","Pending","","1","2024-10-13 07:28:27"),
("77","25","2024-10-16","2024-10-17","3","2","1","4200.00","Joezer","Aleño","alejoezer@gmail.com","09759549073","Pending","","0","2024-10-16 21:15:50"),
("78","25","2024-10-16","2024-10-17","3","2","1","4200.00","Joezer","Aleño","alejoezer@gmail.com","09759549073","Pending","","0","2024-10-16 21:16:10"),
("79","25","2024-10-16","2024-10-17","3","2","1","4200.00","Joezer","Aleño","alejoezer@gmail.com","09759549073","Pending","","1","2024-10-16 21:29:27"),
("80","25","2024-10-16","2024-10-17","3","6","3","4200.00","Joezer","Aleño","alejoezer@gmail.com","09759549073","Pending","","0","2024-10-16 22:00:02"),
("81","25","2024-10-16","2024-10-17","3","6","3","4200.00","Joezer","Aleño","alejoezer@gmail.com","09759549073","Pending","","1","2024-10-16 22:02:57"),
("82","25","2024-10-16","2024-10-17","3","6","3","4200.00","Joezer","Aleño","alejoezer@gmail.com","09759549073","Pending","","0","2024-10-16 22:11:25"),
("83","29","2024-10-17","2024-10-18","1","2","0","1200.00","Joezer","Aleño","alejoezer@gmail.com","09759549073","Check In","","1","2024-10-17 05:36:16"),
("84","25","2024-10-25","2024-10-26","3","9","0","4200.00","Joezer","Aleño","alejoezer@gmail.com","09759549073","Pending","../imagevalidid/valid_id_67103719d1ef81.15459587.jpg","0","2024-10-17 05:58:49"),
("85","25","2024-10-24","2024-10-25","3","6","0","4200.00","Joezer","Aleño","alejoezer@gmail.com","09759549073","Check Out","../imagevalidid/valid_id_67103d0db98cb0.51355501.jpg","1","2024-10-17 06:24:13"),
("86","26","2024-10-17","2024-10-18","1","2","0","1000.00","Joezer","Aleño","alejoezer@gmail.com","09759549073","Check Out","../imagevalidid/valid_id_6710fdbadcc2d3.52598101.jpg","1","2024-10-17 20:06:18"),
("87","26","2024-10-18","2024-10-19","1","2","0","1000.00","Joezer","Aleño","alejoezer@gmail.com","09759549073","Pending","../imagevalidid/valid_id_67119fb79497f2.47761495.jpg","1","2024-10-18 07:37:27"),
("88","29","2024-10-18","2024-10-19","1","2","0","1200.00","Joezer","Aleño","alejoezer@gmail.com","09759549073","Pending","../imagevalidid/valid_id_6711a6483a20b0.32042362.jpg","1","2024-10-18 08:05:28"),
("89","34","2024-10-19","2024-10-20","1","2","0","1300.00","Joezer","Aleño","alejoezer@gmail.com","09759549073","Check Out","../imagevalidid/valid_id_6713bfdc9c8795.36647426.png","0","2024-10-19 22:19:08");




CREATE TABLE `categories` (
  `cat_id` int(255) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(1000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `datecreated` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO categories VALUES
("105","DELUXE ROOM","1","2024-10-03 17:07:06"),
("106","MASTER ROOM","1","2024-10-03 17:07:24"),
("108","NORMAL ROOM","1","2024-10-03 17:08:27"),
("109","FAMILY ROOM","1","2024-10-11 19:31:23"),
("110","SINGLE ROOM","1","2024-10-15 19:06:40"),
("111","DELUXES ROOM","0","2024-10-19 22:04:11");




CREATE TABLE `contact_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO contact_messages VALUES
("2","Joezer Kallai L. Aleño","alejoezer@gmail.com","gfhtfh","1","2024-10-15 17:33:51"),
("4","Joezer Kallai L. Aleño","alejoezer@gmail.com","fghtfhrb","1","2024-10-15 18:00:36");




CREATE TABLE `ktv_bookings` (
  `booking_id` int(11) NOT NULL AUTO_INCREMENT,
  `ktv_id` int(11) NOT NULL,
  `visit_date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `booking_status` varchar(255) NOT NULL DEFAULT 'Pending',
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`booking_id`),
  KEY `ktv_id` (`ktv_id`),
  CONSTRAINT `ktv_bookings_ibfk_1` FOREIGN KEY (`ktv_id`) REFERENCES `ktv_rooms` (`ktv_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO ktv_bookings VALUES
("1","3","2024-10-10","12:00:00","18:00:00","12000.00","Joezer","Aleño","alejoezer@gmail.com","09759549073","Pending","0","2024-10-12 15:31:02"),
("2","3","2024-10-10","12:00:00","18:00:00","12000.00","Joezer","Aleño","alejoezer@gmail.com","09759549073","Pending","0","2024-10-12 15:36:50"),
("3","3","2024-10-10","12:00:00","18:00:00","12000.00","Joezer","Aleño","alejoezer@gmail.com","09759549073","Pending","0","2024-10-12 15:55:01"),
("4","3","2024-10-10","12:00:00","18:00:00","12000.00","Joezer","Aleño","alejoezer@gmail.com","09759549073","Pending","0","2024-10-12 16:46:27"),
("5","3","2024-10-10","12:00:00","18:00:00","12000.00","Joezer","Aleño","alejoezer@gmail.com","09759549073","Pending","0","2024-10-12 16:48:32"),
("6","3","2024-10-10","12:00:00","18:00:00","12000.00","Joezer","Aleño","alejoezer@gmail.com","09759549073","Pending","0","2024-10-12 16:58:35"),
("7","3","2024-10-10","12:00:00","18:00:00","12000.00","Joezer","Aleño","alejoezer@gmail.com","09759549073","Pending","0","2024-10-12 16:58:45"),
("8","3","2024-10-10","12:00:00","18:00:00","12000.00","Joezer","Aleño","alejoezer@gmail.com","09759549073","Pending","0","2024-10-12 16:58:55"),
("12","4","2024-10-13","12:30:00","14:30:00","4000.00","Joezer","Aleño","alejoezer@gmail.com","09759549073","Check Out","1","2024-10-12 18:08:46"),
("13","4","2024-10-13","06:30:00","05:30:00","46000.00","Joezer","Aleño","alejoezer@gmail.com","09759549073","Check In","1","2024-10-12 21:48:24"),
("14","4","2024-10-13","04:00:00","05:00:00","2000.00","Joezer","Aleño","alejoezer@gmail.com","09759549073","Reschedule","1","2024-10-13 06:14:59"),
("15","5","2024-10-19","16:00:00","06:00:00","4200.00","Joezer","Aleño","alejoezer@gmail.com","09759549073","Pending","0","2024-10-19 21:09:54"),
("16","5","2024-10-19","16:00:00","06:00:00","4200.00","Joezer","Aleño","alejoezer@gmail.com","09759549073","Pending","0","2024-10-19 21:10:44");




CREATE TABLE `ktv_images` (
  `image_id` int(11) NOT NULL AUTO_INCREMENT,
  `ktv_id` int(11) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  PRIMARY KEY (`image_id`),
  KEY `ktv_id` (`ktv_id`),
  CONSTRAINT `ktv_images_ibfk_1` FOREIGN KEY (`ktv_id`) REFERENCES `ktv_rooms` (`ktv_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO ktv_images VALUES
("1","1","../../../imagektv/ktv_image_1728631057_6708d111aa692.jpg"),
("2","1","../../../imagektv/ktv_image_1728631057_6708d111d017a.jpg"),
("3","2","../../../imagektv/ktv_image_1728631698_6708d3921f1d2.jpg"),
("4","2","../../../imagektv/ktv_image_1728631698_6708d39244504.jpg"),
("5","3","../../../imagektv/ktv_image_1728631801_6708d3f97357d.jpg"),
("6","3","../../../imagektv/ktv_image_1728631801_6708d3f98e8db.jpg"),
("9","4","../../../imagektv/ktv_image_1728631897_6708d45917c59.jpg"),
("32","1","../../../imagektv/ktv_image_1728656198_67093346b89ec.jpg"),
("33","1","../../../imagektv/ktv_image_1728656198_67093346d17cd.jpg"),
("34","1","../../../imagektv/ktv_image_1728656371_670933f37a5ed.jpg"),
("35","1","../../../imagektv/ktv_image_1728656371_670933f3a707a.jpg"),
("36","1","../../../imagektv/ktv_image_1728657266_6709377270b01.jpg"),
("37","1","../../../imagektv/ktv_image_1728657266_67093772a7ac0.jpg"),
("38","1","../../../imagektv/ktv_image_1728657609_670938c9e4d4b.jpg"),
("39","1","../../../imagektv/ktv_image_1728657610_670938ca00685.jpg"),
("40","1","../../../imagektv/ktv_image_1728657625_670938d99d866.jpg"),
("41","1","../../../imagektv/ktv_image_1728657625_670938d9b2d18.jpg"),
("42","1","../../../imagektv/ktv_image_1728658318_67093b8ed3195.png"),
("43","1","../../../imagektv/ktv_image_1728658318_67093b8ee6835.png"),
("44","1","../../../imagektv/ktv_image_1728659114_67093eaa3b644.jpg"),
("45","1","../../../imagektv/ktv_image_1728659114_67093eaa59c8b.jpg"),
("46","1","../../../imagektv/ktv_image_1728659125_67093eb57c483.jpg"),
("47","1","../../../imagektv/ktv_image_1728659125_67093eb58fbf4.jpg"),
("48","1","../../../imagektv/ktv_image_1728659141_67093ec5c3cd8.jpg"),
("49","1","../../../imagektv/ktv_image_1728659141_67093ec5d8b21.jpg"),
("50","1","../../../imagektv/ktv_image_1728659297_67093f61a5da3.png"),
("51","1","../../../imagektv/ktv_image_1728659308_67093f6ca5f4c.jpg"),
("52","2","../../../imagektv/ktv_image_1728659662_670940cec98af.png"),
("53","1","../../../imagektv/ktv_image_1728960967_670dd9c7cea07.jpg"),
("58","5","../../../imagektv/ktv_image_1729343350_6713af768c11e.png"),
("59","5","../../../imagektv/ktv_image_1729343350_6713af769f8c9.png"),
("60","5","../../../imagektv/ktv_image_1729343350_6713af76a4752.png"),
("61","6","../../../imagektv/ktv_image_1729345732_6713b8c469b73.jpg"),
("62","6","../../../imagektv/ktv_image_1729345732_6713b8c482195.jpg"),
("63","6","../../../imagektv/ktv_image_1729345732_6713b8c492583.jpg"),
("64","6","../../../imagektv/ktv_image_1729345732_6713b8c4b8485.jpg"),
("65","6","../../../imagektv/ktv_image_1729345732_6713b8c4c3228.jpg"),
("66","7","../../../imagektv/ktv_image_1729345741_6713b8cd4ddd4.jpg"),
("67","7","../../../imagektv/ktv_image_1729345741_6713b8cd52c73.jpg"),
("68","7","../../../imagektv/ktv_image_1729345741_6713b8cd58b25.jpg"),
("69","7","../../../imagektv/ktv_image_1729345741_6713b8cd68f35.jpg"),
("70","7","../../../imagektv/ktv_image_1729345741_6713b8cd7934b.jpg");




CREATE TABLE `ktv_receipts` (
  `receipt_id` int(11) NOT NULL AUTO_INCREMENT,
  `booking_id` int(11) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`receipt_id`),
  KEY `booking_id` (`booking_id`),
  CONSTRAINT `ktv_receipts_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `ktv_bookings` (`booking_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO ktv_receipts VALUES
("1","3","receipts/6064517912879808052.jpg","12000.00","2024-10-12 16:20:53"),
("2","3","receipts/6064517912879808053.jpg","12000.00","2024-10-12 16:35:33"),
("3","3","receipts/6064517912879808052.jpg","12000.00","2024-10-12 16:43:34"),
("4","9","receipts/6064517912879808053.jpg","12000.00","2024-10-12 17:00:14"),
("7","12","receipts/6064517912879808053.jpg","4000.00","2024-10-12 18:08:53"),
("8","13","receipts/6064517912879808052.jpg","46000.00","2024-10-12 21:48:36"),
("9","14","receipts/6064517912879808053.jpg","2000.00","2024-10-13 06:15:10"),
("10","15","receipts/b8b35dcc-3423-4dd2-a825-d3ad0189c3a1-removebg-preview.png","4200.00","2024-10-19 21:10:04"),
("11","16","receipts/b8b35dcc-3423-4dd2-a825-d3ad0189c3a1-removebg-preview.png","4200.00","2024-10-19 21:10:59");




CREATE TABLE `ktv_rooms` (
  `ktv_id` int(11) NOT NULL AUTO_INCREMENT,
  `ktv_name` varchar(255) NOT NULL,
  `ktv_type` enum('Small','Big') NOT NULL,
  `room_description` text NOT NULL,
  `room_package` text NOT NULL,
  `price_per_hour` decimal(10,2) NOT NULL,
  `max_occupancy` int(11) NOT NULL,
  `status` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`ktv_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO ktv_rooms VALUES
("1","KTV1","Small","Semper ac dolor vitae accumsan. interdum hendrerit lacinia. ac dolor vitae accumsan interdum. Semper ac dolor vitae accumsan. interdum hendrerit lacinia.","Good for 10 pax\nfree host","1500.00","10","1","2024-10-11 15:17:37"),
("2","KTV2","Small","Semper ac dolor vitae accumsan. interdum hendrerit lacinia. ac dolor vitae accumsan interdum. Semper ac dolor vitae accumsan. interdum hendrerit lacinia.","Good for 20 pax\nFree wifi\nWith Bathroom","1800.00","15","1","2024-10-11 15:28:18"),
("3","KTV3","Big","Semper ac dolor vitae accumsan. interdum hendrerit lacinia. ac dolor vitae accumsan interdum. Semper ac dolor vitae accumsan. interdum hendrerit lacinia.","Good for 20 pax\nFree wifi\nWith Bathroom","2000.00","21","1","2024-10-11 15:30:01"),
("5","KTV11","Small","gbhtfhthtbththtfntr","gfdgfdgg\nrdgdrgdrg\nrdgrdg\ndrgrdgdr\ngrdg\nrd\ngrdgrdg","300.00","10","0","2024-10-19 21:09:10"),
("6","KTV11g","Big","gyghigtty","rtgfrer\ne\nfe\nfefef\ngthgh","300.00","10","0","2024-10-19 21:48:52");




CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `foodName` varchar(255) NOT NULL,
  `category` varchar(100) NOT NULL,
  `menuDescription` text NOT NULL,
  `menuPackage` text NOT NULL,
  `pricePerOrder` decimal(10,2) NOT NULL,
  `imagePath` varchar(255) DEFAULT NULL,
  `dateCreated` datetime DEFAULT current_timestamp(),
  `status` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO menu VALUES
("1","Pork Siningang","Meat","gthegregreg","regergrgreg\ntrhrh\nftrhthth","480.00","image_1728982127.jpg","2024-10-15 14:14:15","1"),
("4","Pork Siningangs","Meat","trhthtrhth","ththth\nththt\nhtht\nhth","480.00","image_1729347150.png","2024-10-19 22:12:30","0");




CREATE TABLE `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` text NOT NULL,
  `sender_name` varchar(255) NOT NULL,
  `sender_email` varchar(255) NOT NULL,
  `sender_image` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_new` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;






CREATE TABLE `notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO notifications VALUES
("16","New customer Joezer Aleño check-in at October 08, 2024","1","2024-10-08 18:57:45"),
("17","New customer Joezer Aleño check-in at October 08, 2024","1","2024-10-08 19:20:22"),
("18","New customer Joezer Aleño check-in at October 08, 2024","1","2024-10-08 19:20:41"),
("19","New customer Joezer Aleño check-in at October 15, 2024","1","2024-10-08 20:42:45"),
("20","New customer Joezer Aleño check-in at October 09, 2024","1","2024-10-08 20:50:51"),
("21","New customer Joezer Aleño check-in at October 15, 2024","1","2024-10-08 22:26:07"),
("22","New customer Joezer Aleño check-in at October 09, 2024","1","2024-10-08 22:44:11"),
("23","New customer Joezer Aleño check-in at October 09, 2024","1","2024-10-08 23:09:48"),
("24","New customer Joezer Aleño check-in at October 09, 2024","1","2024-10-09 08:20:16"),
("25","New customer Joezer Aleño check-in at October 09, 2024","1","2024-10-09 08:36:48"),
("26","New customer Joezer Aleño check-in at October 11, 2024","1","2024-10-09 12:37:18"),
("27","New customer Joezer Aleño check-in at October 09, 2024","1","2024-10-09 12:46:57"),
("28","New customer Joezer Aleño check-in at October 12, 2024","1","2024-10-09 15:07:43"),
("29","New customer Joezer Aleño check-in at October 17, 2024","1","2024-10-09 15:15:05"),
("30","New customer Joezer Aleño check-in at October 23, 2024","1","2024-10-09 16:41:24"),
("31","New customer Alexis Mejica check-in at October 23, 2024","1","2024-10-09 21:55:01"),
("32","New customer Alexis Mejica check-in at October 09, 2024","1","2024-10-09 22:12:57"),
("33","New customer Alexis Mejica check-in at October 24, 2024","1","2024-10-10 09:41:48"),
("34","New customer Alexis Mejica check-in at October 10, 2024","1","2024-10-10 17:32:07"),
("35","New customer Alexis Mejica check-in at October 10, 2024","1","2024-10-10 17:52:38"),
("36","New customer Joezer Aleño will visit at October 10, 2024","1","2024-10-12 16:20:58"),
("37","New customer Joezer Aleño will visit at October 10, 2024","1","2024-10-12 16:35:38"),
("38","New customer Joezer Aleño will visit at October 10, 2024","1","2024-10-12 16:43:38"),
("39","New customer Joezer Aleño will visit at October 10, 2024","1","2024-10-12 17:00:18"),
("40","New customer Joezer Aleño will visit at October 10, 2024","1","2024-10-12 17:41:50"),
("41","New customer Joezer Aleño will visit at October 10, 2024","1","2024-10-12 18:01:46"),
("42","New customer Joezer Aleño will visit at October 13, 2024","1","2024-10-12 18:08:58"),
("43","New customer Joezer Aleño will visit at October 13, 2024","1","2024-10-12 21:48:42"),
("44","New customer Joezer Aleño will visit at October 13, 2024","1","2024-10-13 06:15:15"),
("45","New customer Joezer Aleño check-in at October 13, 2024","1","2024-10-13 07:29:11"),
("46","New table booking for Joezer Kallai L. Aleño on 2024-10-20 at 1:00 PM.","1","2024-10-14 16:27:12"),
("47","New table booking for Joezer Kallai L. Aleño on 2024-10-14 at 1:00 PM.","1","2024-10-14 19:39:33"),
("48","New table booking for Joezer Kallai L. Aleño on 2024-10-14 at 1:00 PM.","1","2024-10-14 19:40:10"),
("49","New table booking for Joezer Kallai L. Aleño on 2024-10-14 at 1:00 PM.","1","2024-10-14 19:48:10"),
("50","New table booking for Joezer Kallai L. Aleño on 2024-10-14 at 1:00 PM.","1","2024-10-14 20:08:38"),
("51","New table booking for Joezer Kallai L. Aleño on 2024-10-14 at 2:00 PM.","1","2024-10-14 20:09:39"),
("52","New table booking for Joezer Kallai L. Aleño on 2024-10-14 at 12:00 PM.","1","2024-10-14 20:10:36"),
("53","New table booking for Joezer Kallai L. Aleño on 2024-10-14 at 2:10 PM.","1","2024-10-14 20:13:15"),
("54","New table booking for Joezer Kallai L. Aleño on 2024-10-14 at 2:05 PM.","1","2024-10-14 20:40:45"),
("55","New customer Joezer Aleño check-in at October 16, 2024","1","2024-10-16 21:29:44"),
("56","New customer Joezer Aleño check-in at October 16, 2024","1","2024-10-16 22:03:12"),
("57","New customer Joezer Aleño check-in at October 17, 2024","1","2024-10-17 05:36:31"),
("58","New customer Joezer Aleño check-in at October 24, 2024","1","2024-10-17 06:24:44"),
("59","New customer Joezer Aleño check-in at October 17, 2024","0","2024-10-17 20:06:34"),
("60","New customer Joezer Aleño check-in at October 18, 2024","0","2024-10-18 07:37:46"),
("61","New customer Joezer Aleño check-in at October 18, 2024","0","2024-10-18 08:05:40"),
("62","New customer Joezer Aleño will visit at October 19, 2024","0","2024-10-19 21:10:08"),
("63","New customer Joezer Aleño will visit at October 19, 2024","0","2024-10-19 21:11:06"),
("64","New customer Joezer Aleño check-in at October 19, 2024","0","2024-10-19 22:19:22");




CREATE TABLE `ratings` (
  `rating_id` int(11) NOT NULL AUTO_INCREMENT,
  `booking_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` text DEFAULT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`rating_id`),
  KEY `booking_id` (`booking_id`),
  KEY `room_id` (`room_id`),
  CONSTRAINT `ratings_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`booking_id`),
  CONSTRAINT `ratings_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`room_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO ratings VALUES
("1","35","25","Joezer","Aleño","3","NIce","","0","2024-10-15 07:38:55"),
("2","35","25","Joezer","Aleño","3","NIce sarap ulit ulitin dito dahil nakaka enjoy and so reftreshing","profile_images/1728949382_6064517912879808054.jpg","0","2024-10-15 07:43:02"),
("3","35","25","Joezer","Aleño","3","NIce sarap ulit ulitin dito dahil nakaka enjoy and so reftreshing","profile_images/1728949387_6064517912879808054.jpg","0","2024-10-15 07:43:07"),
("4","35","25","Joezer","Aleño","5","NIce sarap ulit ulitin dito dahil nakaka enjoy and so reftreshing","profile_images/1728949476_6064517912879808054.jpg","0","2024-10-15 07:44:36"),
("5","35","25","Joezer","Aleño","2","NIce sarap ulit ulitin dito dahil nakaka enjoy and so reftreshing","profile_images/1728949485_6064517912879808054.jpg","0","2024-10-15 07:44:45"),
("6","35","25","Joezer","Aleño","2","So reftreshing","profile_images/1728949813_6064517912879808054.jpg","0","2024-10-15 07:50:13"),
("7","35","25","Joezer","Aleño","4","So reftreshing","profile_images/1728949875_6064517912879808054.jpg","0","2024-10-15 07:51:15"),
("8","35","25","Joezer","Aleño","4","So reftreshing","profile_images/1728949878_6064517912879808054.jpg","0","2024-10-15 07:51:18"),
("16","37","25","","","4","hfyhjtrhj","","1","2024-10-16 05:43:53"),
("17","38","26","","","4","thtrhh5t","profile_images/6064517912879808048.jpg","1","2024-10-16 05:48:05"),
("18","39","26","","","5","fyjyjyjy","profile_images/6064517912879808061 (1).jpg","1","2024-10-16 05:50:03"),
("20","40","26","","","5","sobrang ganda ng pool","profile_images/6064517912879808080.jpg","1","2024-10-16 19:18:41");




CREATE TABLE `receipts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `booking_id` int(11) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `uploaded_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `booking_id` (`booking_id`),
  CONSTRAINT `receipts_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`booking_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO receipts VALUES
("6","46","receipts/wp3348519-removebg-preview.png","1000.00","2024-10-08 18:43:46"),
("7","46","receipts/PXL_20240808_231957736-removebg-preview.png","1000.00","2024-10-08 18:43:53"),
("8","46","receipts/PXL_20240808_231957736-removebg-preview.png","1000.00","2024-10-08 18:48:06"),
("9","47","receipts/download-building-hotel-clipart-png-33.png","1000.00","2024-10-08 18:49:17"),
("10","48","receipts/_MG_3483-removebg-preview.png","1000.00","2024-10-08 18:57:45"),
("11","50","receipts/court.jpg","1000.00","2024-10-08 19:16:33"),
("12","51","receipts/458405672_832516119072468_262920101599123347_n.png","1000.00","2024-10-08 19:17:23"),
("13","51","receipts/458405672_832516119072468_262920101599123347_n.png","1000.00","2024-10-08 19:20:16"),
("14","52","receipts/_MG_3483-removebg-preview.png","1000.00","2024-10-08 19:20:34"),
("15","53","receipts/download-building-hotel-clipart-png-33.png","1000.00","2024-10-08 20:42:37"),
("16","54","receipts/458405672_832516119072468_262920101599123347_n.png","1000.00","2024-10-08 20:50:43"),
("17","55","receipts/figure2.jfif","1000.00","2024-10-08 22:26:00"),
("18","56","receipts/848643bf-14ca-4366-b29c-f0b0a252c2d6.jfif","1000.00","2024-10-08 22:44:05"),
("19","57","receipts/download-building-hotel-clipart-png-33.png","1000.00","2024-10-08 23:09:41"),
("20","59","receipts/35225877_238312750083724_6079646269003792384_n (1).jpg","1000.00","2024-10-09 08:20:06"),
("21","60","receipts/image-removebg-preview.png","1000.00","2024-10-09 08:36:41"),
("22","61","receipts/7cd686f5-d398-4602-a8e7-6646895305bd-removebg-preview.png","1000.00","2024-10-09 12:37:05"),
("23","62","receipts/20cb714c-278f-4830-b532-e56e201d86fe.jfif","5600.00","2024-10-09 12:46:48"),
("24","63","receipts/download-building-hotel-clipart-png-33.png","1000.00","2024-10-09 15:07:38"),
("25","64","receipts/download-building-hotel-clipart-png-33.png","7000.00","2024-10-09 15:14:58"),
("26","67","receipts/7cd686f5-d398-4602-a8e7-6646895305bd-removebg-preview.png","2800.00","2024-10-09 16:41:15"),
("27","71","receipts/20cb714c-278f-4830-b532-e56e201d86fe.jfif","3000.00","2024-10-09 21:54:52"),
("28","72","receipts/20cb714c-278f-4830-b532-e56e201d86fe.jfif","1600.00","2024-10-09 22:12:47"),
("29","73","receipts/6064517912879808049.jpg","4800.00","2024-10-10 09:41:43"),
("30","74","receipts/6064517912879808061.jpg","1600.00","2024-10-10 17:32:02"),
("31","75","receipts/20cb714c-278f-4830-b532-e56e201d86fe.jfif","1600.00","2024-10-10 17:52:34"),
("32","76","receipts/6064517912879808052.jpg","200.00","2024-10-13 07:29:07"),
("33","79","receipts/6064517912879808053.jpg","4200.00","2024-10-16 21:29:38"),
("34","81","receipts/6064517912879808053.jpg","4200.00","2024-10-16 22:03:04"),
("35","83","receipts/6064517912879808053.jpg","1200.00","2024-10-17 05:36:27"),
("36","85","receipts/20cb714c-278f-4830-b532-e56e201d86fe.jfif","4200.00","2024-10-17 06:24:38"),
("37","86","receipts/6064517912879808053.jpg","1000.00","2024-10-17 20:06:28"),
("38","87","receipts/6064517912879808061 (1).jpg","1000.00","2024-10-18 07:37:38"),
("39","88","receipts/6064517912879808061 (1).jpg","1200.00","2024-10-18 08:05:35"),
("40","89","receipts/b8b35dcc-3423-4dd2-a825-d3ad0189c3a1-removebg-preview.png","1300.00","2024-10-19 22:19:17");




CREATE TABLE `restaurant_tables` (
  `table_id` int(11) NOT NULL AUTO_INCREMENT,
  `table_name` varchar(100) NOT NULL,
  `capacity` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO restaurant_tables VALUES
("1","1","12","0","2024-09-24 15:47:45"),
("2","1","12","0","2024-09-24 15:48:07"),
("3","1","12","0","2024-09-24 16:00:03"),
("4","1","12","0","2024-09-24 16:11:45"),
("5","2","12","0","2024-09-24 16:18:47"),
("6","3","14","0","2024-09-24 16:21:31"),
("7","4","14","0","2024-09-24 16:32:13"),
("8","5","14","0","2024-09-24 16:32:29");




CREATE TABLE `room_images` (
  `image_id` int(11) NOT NULL AUTO_INCREMENT,
  `room_id` int(11) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  PRIMARY KEY (`image_id`),
  KEY `room_id` (`room_id`),
  CONSTRAINT `room_images_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`room_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO room_images VALUES
("58","25","../../../imagerooms/image_1727955459.jpg"),
("59","25","../../../imagerooms/image_1727955459.jpg"),
("60","25","../../../imagerooms/image_1727955459.jpg"),
("61","26","../../../imagerooms/image_1728169791.JPG"),
("62","26","../../../imagerooms/image_1728169791.JPG"),
("63","26","../../../imagerooms/image_1728169791.png"),
("67","27","../../../imagerooms/image_1728482933.png"),
("68","27","../../../imagerooms/image_1728482934.png"),
("69","28","../../../imagerooms/image_1728685429_6709a5757d18e.jpg"),
("70","28","../../../imagerooms/image_1728685429_6709a57590014.jpg"),
("71","28","../../../imagerooms/image_1728685429_6709a5759de43.jpg"),
("73","25","../../../imagerooms/room_image_1728688790_6709b2963eaf5.jpg"),
("74","29","../../../imagerooms/image_1728990459_670e4cfb3edf9.jpg"),
("75","29","../../../imagerooms/image_1728990459_670e4cfb5aafe.jpg"),
("76","29","../../../imagerooms/image_1728990459_670e4cfb6dc15.jpg"),
("78","30","../../../imagerooms/image_1729342212_6713ab0464db7.png"),
("79","30","../../../imagerooms/image_1729342212_6713ab047fe71.png"),
("80","30","../../../imagerooms/image_1729342212_6713ab048d71b.png"),
("81","30","../../../imagerooms/image_1729342212_6713ab0498498.png"),
("82","31","../../../imagerooms/image_1729342227_6713ab130b148.png"),
("83","31","../../../imagerooms/image_1729342227_6713ab131b445.png"),
("84","31","../../../imagerooms/image_1729342227_6713ab13201b3.png"),
("85","31","../../../imagerooms/image_1729342227_6713ab1326180.png"),
("86","33","../../../imagerooms/image_1729342620_6713ac9cdebd3.jpg"),
("87","33","../../../imagerooms/image_1729342621_6713ac9d055f6.jpg"),
("88","33","../../../imagerooms/image_1729342621_6713ac9d172f4.jpg"),
("89","34","../../../imagerooms/image_1729342741_6713ad155790b.jpg"),
("90","34","../../../imagerooms/image_1729342741_6713ad15755bd.jpg"),
("91","34","../../../imagerooms/image_1729342741_6713ad15c2355.jpg"),
("92","37","../../../imagerooms/image_1729344907_6713b58bc6dc4.jpg"),
("93","37","../../../imagerooms/image_1729344908_6713b58c16080.jpg"),
("94","37","../../../imagerooms/image_1729344908_6713b58c21511.jpg"),
("95","38","../../../imagerooms/image_1729345034_6713b60a51dc2.jpg"),
("96","38","../../../imagerooms/image_1729345034_6713b60a6a3b3.jpg"),
("97","38","../../../imagerooms/image_1729345034_6713b60a6f252.jpg"),
("98","38","../../../imagerooms/image_1729345034_6713b60a7fe6f.jpg"),
("99","27","../../../imagerooms/room_image_1729345358_6713b74e0f42f.jpg");




CREATE TABLE `rooms` (
  `room_id` int(11) NOT NULL AUTO_INCREMENT,
  `room_name` varchar(100) NOT NULL,
  `room_type` varchar(50) NOT NULL,
  `room_description` text NOT NULL,
  `room_package` text NOT NULL,
  `price_per_night` decimal(10,2) NOT NULL,
  `max_occupancy` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `available_slots` int(11) NOT NULL,
  PRIMARY KEY (`room_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO rooms VALUES
("25","7","Single","Semper ac dolor vitae accumsan. interdum hendrerit lacinia. ac dolor vitae accumsan interdum. Semper ac dolor vitae accumsan. interdum hendrerit lacinia.","Cr lang","1400.00","7","1","2024-10-03 19:37:39","5"),
("27","Good For 2","Single","Semper ac dolor vitae accumsan. interdum hendrerit lacinia. ac dolor vitae accumsan interdum. Semper ac dolor vitae accumsan. interdum hendrerit lacinia.","Bathroom\nFree Meal\nFree Wifi\nAircon","800.00","2","0","2024-10-09 22:08:53","3"),
("28","3","FAMILY ROOM","Semper ac dolor vitae accumsan. interdum hendrerit lacinia. ac dolor vitae accumsan interdum. Semper ac dolor vitae accumsan. interdum hendrerit lacinia.","Bathroom","100.00","6","1","2024-10-12 06:23:49","8"),
("32","2","FAMILY ROOM","jhfhfhtfhgfbfththtfb","sfsrefsrf\nrsefgrsfsr\nfsegfse\ngfse\nfse\nfse\ngfse\ngfsergrsegse\ngesgrg","799.00","6","1","2024-10-19 20:52:24","4"),
("33","1","NORMAL ROOM","thfthfthtfh","tfhtfh\nrdhtfh\nthhth\nrdhtrhh","799.00","6","0","2024-10-19 20:57:00","4"),
("34","Library","MASTER ROOM","fgbnfgtbtfbdgb","rdgrdgdrgrgrdg\nsgdrgrd\ngrdg\nrdg\nrdg\nrdg\nrdgrdgrdg\nrd\ngrdg\ndgr\ngrd\ngrdgrdg","1300.00","4","0","2024-10-19 20:59:01","4"),
("36","Librarysfrrrrr","FAMILY ROOM","fdgrdgrgrdg","rdgrdgdrg\nrdgdr\ngr\ngrd\ngrd\ngdrgrdg\nrdh","1300.00","4","0","2024-10-19 21:23:36","4");




CREATE TABLE `seat_bookings` (
  `booking_id` int(11) NOT NULL AUTO_INCREMENT,
  `seat_id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `person_count` int(11) NOT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `telephone_number` varchar(20) DEFAULT NULL,
  `visit_date` date NOT NULL,
  `visit_time` time NOT NULL,
  `payment_amount` int(255) NOT NULL,
  `booking_status` varchar(255) NOT NULL DEFAULT 'Pending',
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`booking_id`),
  KEY `seat_id` (`seat_id`),
  CONSTRAINT `seat_bookings_ibfk_1` FOREIGN KEY (`seat_id`) REFERENCES `seats` (`seat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO seat_bookings VALUES
("7","1","Joezer Kallai L. Aleño","45","alejoezer@gmail.com","09759549073","2024-10-20","12:00:00","0","Pending","0","2024-10-14 16:05:42","2024-10-14 16:05:42"),
("12","1","Joezer Kallai L. Aleño","7","alejoezer@gmail.com","09759549073","2024-10-14","01:00:00","0","Pending","0","2024-10-14 19:40:03","2024-10-14 19:40:03"),
("13","1","Joezer Kallai L. Aleño","7","alejoezer@gmail.com","09759549073","2024-10-14","01:00:00","300","Confirmed","0","2024-10-14 19:48:02","2024-10-19 11:58:10"),
("14","1","Joezer Kallai L. Aleño","3","alejoezer@gmail.com","09759549073","2024-10-14","01:00:00","300","Confirmed","1","2024-10-14 20:08:30","2024-10-18 23:40:22"),
("15","1","Joezer Kallai L. Aleño","0","alejoezer@gmail.com","","0000-00-00","00:00:00","0","Done","1","2024-10-14 20:09:27","2024-10-18 23:40:18"),
("16","1","Joezer Kallai L. Aleño","0","alejoezer@gmail.com","","0000-00-00","00:00:00","0","Done","1","2024-10-14 20:10:30","2024-10-18 23:40:17"),
("17","1","Joezer Kallai L. Aleño","0","alejoezer@gmail.com","","0000-00-00","00:00:00","0","Confirmed","1","2024-10-14 20:13:09","2024-10-18 23:39:54"),
("18","1","Joezer Kallai L. Aleño","0","alejoezer@gmail.com","","0000-00-00","00:00:00","0","Cancelled","1","2024-10-14 20:40:38","2024-10-18 23:39:50");




CREATE TABLE `seats` (
  `seat_id` int(11) NOT NULL AUTO_INCREMENT,
  `available_seats` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`seat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO seats VALUES
("1","300","2024-10-13 15:23:10","2024-10-19 07:30:43");




CREATE TABLE `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `header_logo` varchar(255) NOT NULL,
  `header_color` varchar(10) NOT NULL,
  `header_title` varchar(255) NOT NULL,
  `footer_address` varchar(255) NOT NULL,
  `footer_email` varchar(255) NOT NULL,
  `footer_phone` varchar(255) NOT NULL,
  `footer_color` varchar(11) NOT NULL,
  `footer_website` varchar(255) NOT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `home_page_background_color` varchar(50) DEFAULT NULL,
  `home_page_cover_photo` varchar(255) DEFAULT NULL,
  `home_page_history` text DEFAULT NULL,
  `home_page_mission` text DEFAULT NULL,
  `home_page_vision` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;






CREATE TABLE `staff` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `staffName` varchar(255) NOT NULL,
  `staffImage` varchar(255) NOT NULL,
  `contactNumber` varchar(20) NOT NULL,
  `staffEmail` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `password` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO staff VALUES
("26","Joezer Kallai L. Aleño","../../../imagestaff/image_1729338832.png","09759549073","alejoezer@gmail.com","0","joelene","2024-10-19 19:53:52");




CREATE TABLE `table_images` (
  `image_id` int(11) NOT NULL AUTO_INCREMENT,
  `table_id` int(11) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  PRIMARY KEY (`image_id`),
  KEY `table_id` (`table_id`),
  CONSTRAINT `table_images_ibfk_1` FOREIGN KEY (`table_id`) REFERENCES `restaurant_tables` (`table_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO table_images VALUES
("1","1","../../../imagetables/image_1727164065.jpg"),
("2","1","../../../imagetables/image_1727164065.png"),
("3","1","../../../imagetables/image_1727164065.png"),
("4","2","../../../imagetables/image_1727164087.jpg"),
("5","2","../../../imagetables/image_1727164087.png"),
("6","2","../../../imagetables/image_1727164087.png"),
("7","4","../../../imagetables/image_1727165505_1243.jpg"),
("8","4","../../../imagetables/image_1727165505_9884.jpg"),
("9","4","../../../imagetables/image_1727165505_3969.png"),
("10","4","../../../imagetables/image_1727165505_2177.png"),
("11","4","../../../imagetables/image_1727165505_7560.jpg"),
("12","4","../../../imagetables/image_1727165505_4626.jpg"),
("13","5","../../../imagetables/image_1727165927_6065.jpg"),
("14","5","../../../imagetables/image_1727165927_3858.jpg"),
("15","5","../../../imagetables/image_1727165927_5364.jpg"),
("16","5","../../../imagetables/image_1727165927_2520.jpg"),
("17","5","../../../imagetables/image_1727165927_5878.jpg"),
("18","5","../../../imagetables/image_1727165927_1335.jpg"),
("19","6","../../../imagetables/image_1727166091_9379.jpg"),
("20","6","../../../imagetables/image_1727166091_7151.jpg"),
("21","6","../../../imagetables/image_1727166091_4881.jpg"),
("22","6","../../../imagetables/image_1727166091_1357.jpg"),
("23","7","../../../imagetables/image_1727166733_7128.jpg"),
("24","8","../../../imagetables/image_1727166749_4199.jpg");


