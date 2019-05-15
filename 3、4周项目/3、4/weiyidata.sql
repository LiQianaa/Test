CREATE DATABASE weiyidata;

USE weiyidata;

CREATE TABLE testTable(
id INT PRIMARY KEY AUTO_INCREMENT,
param_name VARCHAR(50),
param_value VARCHAR(50),
remark VARCHAR(50)
)

INSERT INTO testTable(param_name,param_value,remark) 
VALUES('测试数据1','100','第一条数据'),('测试数据2','200','第二条数据');