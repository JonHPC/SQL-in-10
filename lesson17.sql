--Lesson17

--Challenge 1
ALTER TABLE Vendors
ADD vend_web CHAR(100);

--Challenge 2
UPDATE Vendors
SET vend_web = 'https://google.com/'
WHERE vend_id = 'DLL01';