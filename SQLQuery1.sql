Create Database Library

Use Library

Create table [Authors](
[Id] Int Primary Key Identity,
[FirstName] Varchar(50) Not null,
[LastName] Varchar(50) Default 'XXX',
)

Create table [Books] (
[Id] Int Primary Key Identity,
[Title] Varchar(100) Not null,
[Books]  Varchar(13) Default '0000000000000',
[PublicationYear] Int Check([PublicationYear]>0 and [PublicationYear]<2023), 
AuthorId Int References Authors(Id)
)

Create table [Borrowers](
[Id] Int Primary Key Identity,
[FirstName] Varchar(64) Not null,
[LastName] Varchar(64) Default 'XXX',
[Email] Varchar(255) Not Null
)

Create table [Checkouts](
[Id] Int Primary Key Identity,
[CheckoutDate] Date Not Null,
[ReturnDate] Date,
[BorrowerId] Int References [Borrowers](Id),
[BookId] Int References [Books](Id)
)

Insert  [Authors] (FirstName,LastName) Values
('Viktor','Huqo'),
('Oguz','Atay'),
('Mark','Twen')

Insert [Books] Values
('Sefiller','1112223334343',1975,1),
('Tutunamayanlar','1234567890123',1993,2),
('Tom Soyyer','1231234564567',1966,3)

Insert [Borrowers] Values
('Asiman','Qasimzade','asiman@gmail.com'),
('Zulfiyye','Qurbanova','zuzu@gmail.com'),
('Nigar','Glm','glm@gmail.com')

Insert [Checkouts] Values
('2022-09-23',Null,1,10),
('2023-02-09','2023-02-20',2,11),
('2023-10-23','2022-11-30',3,12)





