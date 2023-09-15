SELECT name, kind, number
  FROM person
  LEFT JOIN phone
  ON id = personid;
