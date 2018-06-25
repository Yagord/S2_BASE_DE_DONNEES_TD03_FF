/*DROP TABLE AVION CASCADE CONSTRAINTS;
DROP TABLE TRAJET CASCADE CONSTRAINTS;
DROP TABLE PILOTE CASCADE CONSTRAINTS;*/
 
CREATE TABLE AVION
   (
    NumAvion NUMBER(4)  NOT NULL,
	  NomAvion VARCHAR2(20)  NOT NULL,
    Capacite NUMBER(5),
    Localisation VARCHAR2(20),
	  HeuresDeVol NUMBER(5) DEFAULT 0,
    CONSTRAINT PK_AVION PRIMARY KEY (NumAvion)  
   ) ;

CREATE TABLE PILOTE
   (
    NumPilote NUMBER(4)  NOT NULL,
    NomPilote VARCHAR2(20)  NOT NULL,
    PrenomPilote VARCHAR2(20)  NOT NULL,
    Ville VARCHAR2(20),
    Salaire NUMBER(6),
    CONSTRAINT PK_EMPLOYE PRIMARY KEY (NumPilote)  
   ) ;

CREATE TABLE TRAJET
   (
    NumTrajet NUMBER(4) NOT NULL,
    NumPilote NUMBER(4) NOT NULL,
    NumAvion NUMBER(4) NOT NULL,
    VilleDep VARCHAR2(20),
    VilleArr VARCHAR2(20),
    DateDep DATE,
    DateArr DATE,
    CONSTRAINT PK_TRAJET PRIMARY KEY (NumTrajet),
    CONSTRAINT FK_TRAJET_PILOTE  FOREIGN KEY (NumPilote)  REFERENCES PILOTE (NumPilote),
    CONSTRAINT FK_TRAJET_AVION  FOREIGN KEY (NumAvion)  REFERENCES AVION (NumAvion)    
   ) ;
   
insert into AVION values(123, 'A300', 300, 'Nice', 200);
insert into AVION values(234, 'A310', 320, 'Nice', 50);
insert into AVION values(345, 'A300', 300, 'Lyon', 25);
insert into AVION values(456, 'A380', 750, 'Paris', 30);
insert into AVION values(567, 'B747', 350, 'Paris', 500);
insert into AVION values(678, 'B707', 340, 'Paris', 200);
insert into AVION values(789, 'A310', 300, 'Toulouse', 120);
insert into AVION values(890, 'A310', 310, 'Lyon', 500);
insert into AVION values(901, 'A380', 750, 'Lyon', 1200);
insert into AVION values(012, 'A380', 780, 'Paris', 500);
   
insert into PILOTE values(1, 'NEMARD', 'Jean', 'Paris', 2100);
insert into PILOTE values(2, 'AROIDE', 'Paul', 'Toulouse', 2100);
insert into PILOTE values(3, 'HAUDUVILLAGE', 'Lidye', 'Nice', 2100);
insert into PILOTE values(4, 'BIDJOBAT', 'Joe', 'Toulouse', 2150);
insert into PILOTE values(5, 'PLOUE DE BRIERES', 'Roger', 'Paris', 2000);
insert into PILOTE values(6, 'MEURDESOIF', 'Jean', 'Paris', 1900);
insert into PILOTE values(7, 'RENAUT', 'Megane', 'Brest', 1820);
insert into PILOTE values(8, 'DIOT', 'Kelly', 'Paris', 3300);
insert into PILOTE values(9, 'PROVISTE', 'Alain', 'Dijon', 5000);
insert into PILOTE values(10, 'COURCI', 'Sarah', 'Paris', 1360);

insert into TRAJET values(1, 1, 123, 'Nice', 'Toulouse', TO_DATE('18/03/2016 08:00','DD/MM/YYYY HH24:MI'),TO_DATE('18/03/2016 10:00','DD/MM/YYYY HH24:MI'));
insert into TRAJET values(2, 1, 890, 'Paris', 'Toulouse', TO_DATE('18/03/2016 18:00','DD/MM/YYYY HH24:MI'),TO_DATE('18/03/2016 20:00','DD/MM/YYYY HH24:MI'));
insert into TRAJET values(3, 2, 123, 'Toulouse', 'Lyon', TO_DATE('18/03/2016 14:00','DD/MM/YYYY HH24:MI'),TO_DATE('18/03/2016 16:00','DD/MM/YYYY HH24:MI'));
insert into TRAJET values(4, 5, 345, 'Toulouse', 'Lyon', TO_DATE('18/03/2016 18:00','DD/MM/YYYY HH24:MI'),TO_DATE('18/03/2016 20:00','DD/MM/YYYY HH24:MI'));
insert into TRAJET values(5, 9, 123, 'Paris', 'Nice', TO_DATE('18/03/2016 11:00','DD/MM/YYYY HH24:MI'),TO_DATE('18/03/2016 12:00','DD/MM/YYYY HH24:MI'));
insert into TRAJET values(6, 10, 234, 'Lyon', 'Nice', TO_DATE('18/03/2016 11:00','DD/MM/YYYY HH24:MI'),TO_DATE('18/03/2016 12:00','DD/MM/YYYY HH24:MI'));
insert into TRAJET values(7, 1, 456, 'Paris', 'Lyon', TO_DATE('18/03/2016 08:00','DD/MM/YYYY HH24:MI'),TO_DATE('18/03/2016 09:00','DD/MM/YYYY HH24:MI'));
insert into TRAJET values(8, 8, 456, 'Nice', 'Paris', TO_DATE('18/03/2016 07:00','DD/MM/YYYY HH24:MI'),TO_DATE('18/03/2016 08:00','DD/MM/YYYY HH24:MI'));
insert into TRAJET values(9, 1, 890, 'Nantes', 'Lyon', TO_DATE('18/03/2016 09:00','DD/MM/YYYY HH24:MI'),TO_DATE('18/03/2016 15:00','DD/MM/YYYY HH24:MI'));
insert into TRAJET values(10, 8, 234, 'Nice', 'Paris', TO_DATE('18/03/2016 12:00','DD/MM/YYYY HH24:MI'),TO_DATE('18/03/2016 13:00','DD/MM/YYYY HH24:MI'));
insert into TRAJET values(11, 9, 234, 'Paris', 'Lyon', TO_DATE('18/03/2016 15:00','DD/MM/YYYY HH24:MI'),TO_DATE('18/03/2016 16:00','DD/MM/YYYY HH24:MI'));
insert into TRAJET values(12, 1, 234, 'Lyon', 'Nantes', TO_DATE('18/03/2016 16:00','DD/MM/YYYY HH24:MI'),TO_DATE('18/03/2016 20:00','DD/MM/YYYY HH24:MI'));
insert into TRAJET values(13, 4, 567, 'Nice', 'Lens', TO_DATE('18/03/2016 11:00','DD/MM/YYYY HH24:MI'),TO_DATE('18/03/2016 14:00','DD/MM/YYYY HH24:MI'));
insert into TRAJET values(14, 3, 567, 'Lens', 'Paris', TO_DATE('18/03/2016 15:00','DD/MM/YYYY HH24:MI'),TO_DATE('18/03/2016 16:00','DD/MM/YYYY HH24:MI'));
insert into TRAJET values(15, 8, 901, 'Paris', 'Toulouse', TO_DATE('18/03/2016 17:00','DD/MM/YYYY HH24:MI'),TO_DATE('18/03/2016 18:00','DD/MM/YYYY HH24:MI'));
insert into TRAJET values(16, 7, 567, 'Paris', 'Toulouse', TO_DATE('18/03/2016 18:00','DD/MM/YYYY HH24:MI'),TO_DATE('18/03/2016 19:00','DD/MM/YYYY HH24:MI'));
insert into TRAJET values(17, 5, 890, 'Bordeaux', 'Clermont-Fd', TO_DATE('18/03/2016 21:00','DD/MM/YYYY HH24:MI'),TO_DATE('18/03/2016 22:00','DD/MM/YYYY HH24:MI'));
insert into TRAJET values(18, 10, 789, 'Paris', 'Lille', TO_DATE('18/03/2016 11:00','DD/MM/YYYY HH24:MI'),TO_DATE('18/03/2016 12:00','DD/MM/YYYY HH24:MI'));



-----------------------------------------------
--- LDD Exo 4, 5, 6
-----------------------------------------------

DROP TABLE BONUS;
DROP TABLE EMP;
DROP TABLE DEPT;
DROP TABLE SALGRADE; 

CREATE TABLE BONUS
        (ENAME VARCHAR2(10),
         JOB   VARCHAR2(9),
         SAL   NUMBER,
         COMM  NUMBER);

CREATE TABLE EMP
       (EMPNO NUMBER(4) NOT NULL,
        ENAME VARCHAR2(10),
        JOB VARCHAR2(9),
        MGR NUMBER(4),
        HIREDATE DATE,
        SAL NUMBER(7, 2),
        COMM NUMBER(7, 2),
        DEPTNO NUMBER(2));

INSERT INTO EMP VALUES
        (7369, 'SMITH',  'CLERK',     7902,
        TO_DATE('17-12-1980', 'DD-MM-YYYY'),  800, NULL, 20);
INSERT INTO EMP VALUES
        (7499, 'ALLEN',  'SALESMAN',  7698,
        TO_DATE('20-02-1981', 'DD-MM-YYYY'), 1600,  300, 30);
INSERT INTO EMP VALUES
        (7521, 'WARD',   'SALESMAN',  7698,
        TO_DATE('22-02-1981', 'DD-MM-YYYY'), 1250,  500, 30);
INSERT INTO EMP VALUES
        (7566, 'JONES',  'MANAGER',   7839,
        TO_DATE('2-04-1981', 'DD-MM-YYYY'),  2975, NULL, 20);
INSERT INTO EMP VALUES
        (7654, 'MARTIN', 'SALESMAN',  7698,
        TO_DATE('28-09-1981', 'DD-MM-YYYY'), 1250, 1400, 30);
INSERT INTO EMP VALUES
        (7698, 'BLAKE',  'MANAGER',   7839,
        TO_DATE('1-05-1981', 'DD-MM-YYYY'),  2850, NULL, 30);
INSERT INTO EMP VALUES
        (7782, 'CLARK',  'MANAGER',   7839,
        TO_DATE('9-06-1981', 'DD-MM-YYYY'),  2450, NULL, 10);
INSERT INTO EMP VALUES
        (7788, 'SCOTT',  'ANALYST',   7566,
        TO_DATE('09-12-1982', 'DD-MM-YYYY'), 3000, NULL, 20);
INSERT INTO EMP VALUES
        (7839, 'KING',   'PRESIDENT', NULL,
        TO_DATE('17-11-1981', 'DD-MM-YYYY'), 5000, NULL, 10);
INSERT INTO EMP VALUES
        (7844, 'TURNER', 'SALESMAN',  7698,
        TO_DATE('8-09-1981', 'DD-MM-YYYY'),  1500, NULL, 30);
INSERT INTO EMP VALUES
        (7876, 'ADAMS',  'CLERK',     7788,
        TO_DATE('12-01-1983', 'DD-MM-YYYY'), 1100, NULL, 20);
INSERT INTO EMP VALUES
        (7900, 'JAMES',  'CLERK',     7698,
        TO_DATE('3-12-1981', 'DD-MM-YYYY'),   950, NULL, 30);
INSERT INTO EMP VALUES
        (7902, 'FORD',   'ANALYST',   7566,
        TO_DATE('3-12-1981', 'DD-MM-YYYY'),  3000, NULL, 20);
INSERT INTO EMP VALUES
        (7934, 'MILLER', 'CLERK',     7782,
        TO_DATE('23-01-1982', 'DD-MM-YYYY'), 1300, NULL, 10);

CREATE TABLE DEPT
       (DEPTNO NUMBER(2),
        DNAME VARCHAR2(14),
        LOC VARCHAR2(13) );

INSERT INTO DEPT VALUES (10, 'ACCOUNTING', 'NEW YORK');
INSERT INTO DEPT VALUES (20, 'RESEARCH',   'DALLAS');
INSERT INTO DEPT VALUES (30, 'SALES',      'CHICAGO');
INSERT INTO DEPT VALUES (40, 'OPERATIONS', 'BOSTON');

CREATE TABLE SALGRADE
        (GRADE NUMBER,
         LOSAL NUMBER,
         HISAL NUMBER);

INSERT INTO SALGRADE VALUES (1,  700, 1200);
INSERT INTO SALGRADE VALUES (2, 1201, 1400);
INSERT INTO SALGRADE VALUES (3, 1401, 2000);
INSERT INTO SALGRADE VALUES (4, 2001, 3000);
INSERT INTO SALGRADE VALUES (5, 3001, 9999);

COMMIT;

/*Partie 1*/
/*1*/
SELECT *
FROM USER_TABLES;

SELECT TABLE_NAME
FROM USER_TABLES;

/*2*/
SELECT * 
FROM Trajet;

SELECT NumTrajet, VilleDep, VilleArr, TO_CHAR(DateDep, 'DD/MM/YY HH24:MI'), TO_CHAR(DateArr, 'DD/MM/YY HH24:MI')
FROM TRAJET;

/*3*/
DECLARE
  i NUMBER := 1;
BEGIN
  WHILE i <= 10 LOOP
    UPDATE PILOTE
    SET Salaire = Salaire*1.1
    WHERE NumPilote=i;
    i := i + 1;
  END LOOP;
END;
/
SELECT *
FROM PILOTE;

/*4*/
DECLARE
  i NUMBER := 1;
BEGIN
  WHILE i <= 10 LOOP
    IF (MOD(i,2) = 0) THEN
      UPDATE PILOTE
      SET Salaire = Salaire*1.1
      WHERE (NumPilote=i);
    END IF;
    i := i + 1;
  END LOOP;
END;
/

/*5*/
DECLARE
  i NUMBER := 1;
BEGIN
  WHILE i <= 10 LOOP
    IF (Salaire < 2000) THEN
      UPDATE PILOTE
      SET Salaire = Salaire*1.1
      WHERE NumPilote=i;
    END IF;
    i := i + 1;
  END LOOP;
END;
/

DECLARE
  i NUMBER := 1;
BEGIN
  WHILE i <= 10 LOOP
    UPDATE PILOTE
    SET Salaire = Salaire*1.1
    WHERE (NumPilote=i) AND (Salaire < 2000);
    i := i + 1;
  END LOOP;
END;
/

/*6*/
DECLARE
  i NUMBER := 1;
  v_Salaire NUMBER;
BEGIN
  WHILE i <= 10 LOOP
    
    SELECT Salaire
    INTO v_Salaire
    FROM Pilote
    WHERE numPilote = i;
    
    IF (v_Salaire < 2000) THEN
      UPDATE PILOTE
      SET Salaire = Salaire*1.1
      WHERE NumPilote=i;
    ELSE
      DBMS_OUTPUT.PUT_LINE('Le pilote ' || i || ' n''a pas été augmenté car il gagne déjà plus de 2000 euros.');
    END IF;
    i := i + 1;
  END LOOP;
END;
/


/*Partie 2*/
/*1*/
SELECT Trajet.numTrajet, Pilote.prenomPilote, Pilote.nomPilote, Avion.nomAvion, Trajet.villeDep, Trajet.villeArr, Trajet.dateDep, Trajet.dateArr
FROM Trajet INNER JOIN Pilote ON (Trajet.numPilote = Pilote.numPilote) INNER JOIN Avion ON (Trajet.numAvion = Avion.numAvion)
WHERE Trajet.numTrajet = (SELECT MAX(numTrajet)
                          FROM Trajet);
                    
/*2*/
SET SERVEROUTPUT ON
DECLARE
  v_numTrajet Trajet.numTrajet%TYPE;
  v_prenomPilote Pilote.prenomPilote%TYPE;
  v_nomPilote Pilote.nomPilote%TYPE;
  v_nomAvion Avion.nomAvion%TYPE;
  v_villeDep Trajet.villeDep%TYPE;
  v_villeArr Trajet.villeArr%TYPE;
  v_dateDep Trajet.dateDep%TYPE;
  v_dateArr Trajet.dateArr%TYPE;
BEGIN

  SELECT Trajet.numTrajet, Pilote.prenomPilote, Pilote.nomPilote, Avion.nomAvion, Trajet.villeDep, Trajet.villeArr, Trajet.dateDep, Trajet.dateArr
  INTO v_numTrajet, v_prenomPilote, v_nomPilote, v_nomAvion, v_villeDep, v_villeArr, v_dateDep, v_dateArr
  FROM Trajet INNER JOIN Pilote ON (Trajet.numPilote = Pilote.numPilote)
              INNER JOIN Avion ON (Trajet.numAvion = Avion.numAvion)
  WHERE Trajet.numTrajet = (SELECT MAX(numTrajet)
                            FROM Trajet);
  DBMS_OUTPUT.PUT_LINE('Numéro du dernier trajet : ' || v_numTrajet);
  DBMS_OUTPUT.PUT_LINE('--------------------------------');
  DBMS_OUTPUT.PUT_LINE(v_prenomPilote || ' ' || v_nomPilote || ' a décollé de ' || v_villeDep || ' le ' || v_dateDep || ' à ' || TO_CHAR(v_dateDep, 'HH24:MI') || '.');
  DBMS_OUTPUT.PUT_LINE('Il a atterri à ' || v_villeArr || ' le ' || v_dateArr || ' à ' || TO_CHAR(v_dateArr, 'HH24:MI') || '.');
  DBMS_OUTPUT.PUT_LINE('Le vol s''est effectué avec un ' || v_nomAvion || '.');
  DBMS_OUTPUT.NEW_LINE;
END;
/

DECLARE
  v_numTrajet Trajet.numTrajet%TYPE;
  v_prenomPilote Pilote.prenomPilote%TYPE;
  v_nomPilote Pilote.nomPilote%TYPE;
  v_nomAvion Avion.nomAvion%TYPE;
  v_villeDep Trajet.villeDep%TYPE;
  v_villeArr Trajet.villeArr%TYPE;
  v_dateDep Trajet.dateDep%TYPE;
  v_dateArr Trajet.dateArr%TYPE;
BEGIN

  SELECT Trajet.numTrajet, Pilote.prenomPilote, Pilote.nomPilote, Avion.nomAvion, Trajet.villeDep, Trajet.villeArr, Trajet.dateDep, Trajet.dateArr
  INTO v_numTrajet, v_prenomPilote, v_nomPilote, v_nomAvion, v_villeDep, v_villeArr, v_dateDep, v_dateArr
  FROM Trajet INNER JOIN Pilote ON (Trajet.numPilote = Pilote.numPilote)
              INNER JOIN Avion ON (Trajet.numAvion = Avion.numAvion)
  WHERE Trajet.numTrajet = (SELECT MAX(numTrajet)
                            FROM Trajet);
  DBMS_OUTPUT.PUT_LINE('Numéro du dernier trajet : ' || v_numTrajet);
  DBMS_OUTPUT.PUT_LINE('--------------------------------');
  DBMS_OUTPUT.PUT_LINE(v_prenomPilote || ' ' || v_nomPilote || ' a décollé de ' || v_villeDep || ' le ' || TO_CHAR(v_dateDep, 'DD/MM/YY') || ' à ' || TO_CHAR(v_dateDep, 'HH24:MI') || '.');
  DBMS_OUTPUT.PUT_LINE('Il a atterri à ' || v_villeArr || ' le ' || TO_CHAR(v_dateArr, 'DD/MM/YY') || ' à ' || TO_CHAR(v_dateArr, 'HH24:MI') || '.');
  DBMS_OUTPUT.PUT_LINE('Le vol s''est effectué avec un ' || v_nomAvion || '.');
  DBMS_OUTPUT.NEW_LINE;
END;
/

/*Partie 3*/
/*1*/
DECLARE
  v_numAvion Avion.numAvion%TYPE := &ask;
  v_nombreVol Avion.heuresDeVol%TYPE;
BEGIN
  SELECT heuresDeVol
  INTO v_nombreVol
  FROM Avion
  WHERE numAvion = v_numAvion;
  DBMS_OUTPUT.PUT_LINE('Nombre de vols de l''avion ' || v_numAvion || ' : ' || v_nombreVol);
  DBMS_OUTPUT.NEW_LINE;
END;
/

DECLARE
  v_numAvion Avion.numAvion%TYPE := &ask;
  v_nombreVol NUMBER;
BEGIN
  SELECT COUNT(numTrajet)
  INTO v_nombreVol
  FROM Trajet
  WHERE numAvion = v_numAvion;
  DBMS_OUTPUT.PUT_LINE('Nombre de vols de l''avion ' || v_numAvion || ' : ' || v_nombreVol);
  DBMS_OUTPUT.NEW_LINE;
END;
/

/*Partie 4*/
/*1*/
DECLARE
  TYPE T_rec IS RECORD
  ( v_nom Emp.ename%TYPE,
    v_salaire Emp.sal%TYPE,
    v_departement Dept.dname%TYPE
  );
  v_rec T_rec;
  v_numeroEmploye Emp.empno%TYPE := &ask;
BEGIN
  SELECT Emp.ename, Emp.sal, Dept.dname
  INTO v_rec.v_nom, v_rec.v_salaire, v_rec.v_departement
  FROM Emp INNER JOIN Dept ON (Emp.deptno = Dept.deptno)
  WHERE empno = v_numeroEmploye;
  
  DBMS_OUTPUT.PUT_LINE(v_rec.v_nom || ', gagne ' || v_rec.v_salaire || '$ et travaille dans le département ' || v_rec.v_departement || '.');
END;
/

DECLARE
  TYPE T_rec IS RECORD
  ( v_nom Emp.ename%TYPE,
    v_salaire Emp.sal%TYPE,
    v_departement Dept.dname%TYPE
  );
  v_rec T_rec;
  v_numeroEmploye Emp.empno%TYPE := &ask;
BEGIN
  SELECT Emp.ename, Emp.sal, Dept.dname
  INTO v_rec
  FROM Emp INNER JOIN Dept ON (Emp.deptno = Dept.deptno)
  WHERE empno = v_numeroEmploye;
  
  DBMS_OUTPUT.PUT_LINE(v_rec.v_nom || ', gagne ' || v_rec.v_salaire || '$ et travaille dans le département ' || v_rec.v_departement || '.');
END;
/

/*Partie 5*/
/*1*/
DECLARE
  TYPE T_tab
    IS TABLE OF real
    INDEX BY BINARY_INTEGER;
  v_tab T_tab;
  somme NUMBER := 0;
  moyenne NUMBER;
  v_n NUMBER := &ask;
  
BEGIN
  FOR i IN 1 .. v_n LOOP
    v_tab(i) := i;
    somme := somme + i;
  END LOOP;
  moyenne := somme/v_n;
  /*3*/
  DBMS_OUTPUT.PUT_LINE('La moyenne est de ' || moyenne);
  /*4*/
  DBMS_OUTPUT.PUT_LINE(v_tab.first);
  DBMS_OUTPUT.PUT_LINE(v_tab.last);
  DBMS_OUTPUT.PUT_LINE(v_tab.count);
  /*5*/
  v_tab.delete(1);
  v_tab.delete(5);
  v_tab.delete(10);
  DBMS_OUTPUT.PUT_LINE(v_tab.first);
  DBMS_OUTPUT.PUT_LINE(v_tab.last);
  DBMS_OUTPUT.PUT_LINE(v_tab.count);
  /*6*/
  FOR j IN v_tab.first .. v_tab.last LOOP
    IF (v_tab.exists(j)) THEN    
      DBMS_OUTPUT.PUT_LINE('L''élément ' || j || ' est ' || v_tab(j) || '.');
    END IF;
  END LOOP;
END;
/

/*Partie 6*/
/*1*/
DECLARE
	TYPE T_varray
	IS VARRAY (10) OF INTEGER;
	v_var T_varray := T_varray(1, 2, 3);
	somme NUMBER := 0;
	moyenne NUMBER;
BEGIN
/*2*/
	v_var := T_varray(4, 5, 6, 7, 8, 9, 10);
	FOR i IN v_var.first .. v_var.count-1
	LOOP
		somme := somme + v_var(i);
	END LOOP;
	moyenne := somme / v_char.count;
/*3*/
	DBMS_OUTPUT.PUT_LINE('La moyenne est de ' || moyenne);
/*4*/
	v_var.extend(1); 
END;
/

DECLARE
  TYPE t_varray IS VARRAY (10) OF REAL;
  l_varray t_varray := t_varray(1, 2, 3);
  i NUMBER;
  somme NUMBER := 0;
  moyenne NUMBER;
BEGIN
  /*2*/
  l_varray.extend(7);
  FOR i IN 4..10 LOOP
    l_varray(i) := i;
  END LOOP;
  /*3*/
  FOR i IN 1..10 LOOP
    somme := somme + l_varray(i);
  END LOOP;
  moyenne := somme / 10;
  DBMS_OUTPUT.PUT_LINE(moyenne);
  /*4*/
  /*l_varray.extend(1); On obtient une erreur : limit range*/
  /*5*/ 
  DBMS_OUTPUT.PUT_LINE(l_varray.limit);
  DBMS_OUTPUT.PUT_LINE(l_varray.count);
  /*6*/  
  l_varray.trim();  
  DBMS_OUTPUT.PUT_LINE(l_varray.limit);
  DBMS_OUTPUT.PUT_LINE(l_varray.count);
  /*7*/  
  l_varray.delete();  
  DBMS_OUTPUT.PUT_LINE(l_varray.limit);
  DBMS_OUTPUT.PUT_LINE(l_varray.count);
END;