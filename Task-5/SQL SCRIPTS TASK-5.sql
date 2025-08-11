##INNER JOIN - Books with their authors
SELECT b.BookID, b.Title, a.Name AS AuthorName, b.Genre, b.Publishedyear
FROM books b
INNER JOIN authors a ON b.AuthorID = a.AuthorID;

## LEFT JOIN – All members and their issued books (if any)
SELECT m.MemberID, m.Name AS MemberName, b.Title, ib.Issuedate, ib.Returndate
FROM members m
LEFT JOIN issued_books ib ON m.MemberID = ib.MemberID
LEFT JOIN books b ON ib.BookID = b.BookID;

## RIGHT JOIN – All issued books and their members
SELECT b.BookID, b.Title, m.Name AS MemberName, ib.Issuedate
FROM books b
RIGHT JOIN issued_books ib ON b.BookID = ib.BookID
RIGHT JOIN members m ON ib.MemberID = m.MemberID;

## NATURAL JOIN – Books with authors (automatic match by AuthorID)
SELECT BookID, Title, Name AS AuthorName, Genre, Publishedyear
FROM books
NATURAL JOIN authors;

## SELF JOIN – Authors from the same country
SELECT a1.AuthorID, a1.Name AS AuthorName, a2.Name AS OtherAuthor, a1.Country
FROM authors a1
JOIN authors a2 
ON a1.Country = a2.Country
WHERE a1.AuthorID <> a2.AuthorID;

## CROSS JOIN – All combinations of members and books
SELECT m.Name AS MemberName, b.Title AS BookTitle
FROM members m
CROSS JOIN books b;

## FULL JOIN (Simulated in MySQL) – All books and issued records, matched where possible
SELECT b.BookID, b.Title, ib.IssuedID, ib.Issuedate
FROM books b
LEFT JOIN issued_books ib ON b.BookID = ib.BookID

UNION

SELECT b.BookID, b.Title, ib.IssuedID, ib.Issuedate
FROM books b
RIGHT JOIN issued_books ib ON b.BookID = ib.BookID;




