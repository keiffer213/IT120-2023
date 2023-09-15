CREATE TABLE Merch (
  ID INTEGER PRIMARY KEY NOT NULL,
  Name VARCHAR,
  Description VARCHAR,
  PricePerUnit NUMERIC, --for the decimal places
  Inventory INTEGER,
  Units VARCHAR,
  DateEntered DATE  
);

-- Need: how to capture sale/item/quantity?
CREATE TABLE SoldItem (
  SalesID INTEGER NOT NULL,
  MerchID INTEGER NOT NULL,
  Quantity INTEGER,
  PRIMARY KEY(SalesID, MerchID)
);

CREATE TABLE Sale (
  ID INTEGER PRIMARY KEY NOT NULL,
  CustomerID INTEGER, -- PeopleID
  BillingAddress VARCHAR,
  ShippingAddress VARCHAR,
  DateOrdered DATE,
  DateShipped DATE
);


