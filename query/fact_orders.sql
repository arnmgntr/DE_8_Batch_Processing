DROP TABLE IF EXISTS fact_orders;
CREATE TABLE fact_orders (
	order_id INT NOT NULL,
	order_date DATE NOT NULL,
	user_id INT NOT NULL,
	payment_id INT NOT NULL,
	shipper_id INT NOT NULL,
	order_price INT NOT NULL,
	order_discount INT,
	voucher_id INT,
	order_total INT NOT NULL,
	PRIMARY KEY (order_id),
	CONSTRAINT fk_user_id FOREIGN KEY (user_id) REFERENCES tb_users (user_id),
	CONSTRAINT fk_payment_id FOREIGN KEY (payment_id) REFERENCES tb_payments (payment_id),
	CONSTRAINT fk_shipper_id FOREIGN KEY (shipper_id) REFERENCES tb_shippers (shipper_id),
);