SELECT 
    Customer.CustomerID,
    Orders.OrderID,
    Orders.TotalCost,
    Menu.Cuisines,
    Menu.Starters,
    Menu.Courses,
    MenuItem.ItemName
FROM
    Orders
        INNER JOIN
    Customer ON Customer.CustomerID = Orders.CustomerID
        INNER JOIN
    Menu ON Orders.MenuID = Menu.MenuID
        INNER JOIN
    MenuItem ON Orders.MenuItemID = MenuItem.MenuItemID
WHERE
    Orders.TotalCost > 150;
