select sum(final_Amount) from tblPurchase where Party_ID=4
SELECT (
ISNULL((SELECT SUM(final_Amount) FROM tblPurchase WHERE Product_ID = 3), 0) -
ISNULL((SELECT SUM(final_Amount) FROM tblSells WHERE Product_ID = 3), 0)  
)AS Result
