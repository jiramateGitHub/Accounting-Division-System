from flask import Flask
from flask import render_template
from flask import request
from flask import redirect
from flask import url_for
from datetime import timedelta, datetime, tzinfo, date
import pymysql
import sys
#########################################################################################################################################################################
app = Flask(__name__)
#########################################################################################################################################################################
#config ฐานข้อมูล
conn = pymysql.connect('localhost','root','','acd_db')
#########################################################################################################################################################################
#หน้าแรก
@app.route('/')
def index():
        return render_template('index.html')
#########################################################################################################################################################################
#หน้า Customer
@app.route('/customer')
def customer():
    with conn.cursor() as cursor:
        cursor.execute("SELECT * FROM acd_customer")
        rows_acd_customer = cursor.fetchall()
        return render_template('customer.html',rows_acd_customer=rows_acd_customer)
#########################################################################################################################################################################
#ฟังก์ชันเพิ่มข้อมูล customer ลงฐานข้อมูล
@app.route('/customer_insert',methods=['POST'])
def customer_insert():
    if request.method == "POST":
        cus_code = request.form['cus_code']
        cus_name = request.form['cus_name']
        cus_address = request.form['cus_address']
        cus_email = request.form['cus_email']
        cus_phone = request.form['cus_phone']
        with conn.cursor() as cursor:
            sql="INSERT INTO acd_customer (cus_code,cus_name,cus_address,cus_email,cus_phone) VALUES(%s,%s,%s,%s,%s)"
            cursor.execute(sql,(cus_code,cus_name,cus_address,cus_email,cus_phone))
            conn.commit()
        return redirect(url_for('customer'))  
#########################################################################################################################################################################
#ฟังก์ชันแก้ไขข้อมูล customer จากฐานข้อมูล
@app.route('/customer_update',methods=['POST'])
def customer_update():
    if request.method == "POST":
        cus_id = request.form['cus_id']
        cus_code = request.form['cus_code']
        cus_name = request.form['cus_name']
        cus_address = request.form['cus_address']
        cus_email = request.form['cus_email']
        cus_phone = request.form['cus_phone']
        with conn.cursor() as cursor:
            sql="UPDATE acd_customer SET cus_code=%s,cus_name=%s,cus_address=%s,cus_email=%s,cus_phone=%s WHERE cus_id = %s"
            cursor.execute(sql,(cus_code,cus_name,cus_address,cus_email,cus_phone,cus_id))
            conn.commit()
        return redirect(url_for('customer'))   
#########################################################################################################################################################################
#ฟังก์ชันลบข้อมูล customer ลบออกจากฐานข้อมูล
@app.route('/customer_delete/<string:cus_id>',methods=['GET'])
def customer_delete(cus_id):
    with conn.cursor() as cursor:
        cursor.execute("DELETE FROM acd_customer WHERE cus_id = %s",(cus_id))
        conn.commit()
    return redirect(url_for('customer')) 
#########################################################################################################################################################################
#หน้า Supplier
@app.route('/supplier')
def supplier():
    with conn.cursor() as cursor:
        cursor.execute("SELECT * FROM acd_supplier")
        rows_acd_supplier = cursor.fetchall()
        return render_template('supplier.html',rows_acd_supplier=rows_acd_supplier)
#########################################################################################################################################################################
#ฟังก์ชันเพิ่มข้อมูล supplier ลงฐานข้อมูล
@app.route('/supplier_insert',methods=['POST'])
def supplier_insert():
    if request.method == "POST":
        sup_code = request.form['sup_code']
        sup_name = request.form['sup_name']
        sup_company = request.form['sup_company']
        sup_address = request.form['sup_address']
        sup_email = request.form['sup_email']
        sup_phone = request.form['sup_phone']
        sup_fax = request.form['sup_fax']
        with conn.cursor() as cursor:
            sql="INSERT INTO acd_supplier (sup_code,sup_name,sup_company,sup_address,sup_email,sup_phone,sup_fax) VALUES(%s,%s,%s,%s,%s,%s,%s)"
            cursor.execute(sql,(sup_code,sup_name,sup_company,sup_address,sup_email,sup_phone,sup_fax))
            conn.commit()
        return redirect(url_for('supplier'))  
#########################################################################################################################################################################
#ฟังก์ชันแก้ไขข้อมูล supplier จากฐานข้อมูล
@app.route('/supplier_update',methods=['POST'])
def supplier_update():
    if request.method == "POST":
        sup_id = request.form['sup_id']
        sup_code = request.form['sup_code']
        sup_name = request.form['sup_name']
        sup_company = request.form['sup_company']
        sup_address = request.form['sup_address']
        sup_email = request.form['sup_email']
        sup_phone = request.form['sup_phone']
        sup_fax = request.form['sup_fax']
        with conn.cursor() as cursor:
            sql="UPDATE acd_supplier SET sup_code=%s,sup_name=%s,sup_company=%s,sup_address=%s,sup_email=%s,sup_phone=%s,sup_fax=%s WHERE sup_id = %s"
            cursor.execute(sql,(sup_code,sup_name,sup_company,sup_address,sup_email,sup_phone,sup_fax,sup_id))
            conn.commit()
        return redirect(url_for('supplier'))   
#########################################################################################################################################################################
#ฟังก์ชันลบข้อมูล supplier ลบออกจากฐานข้อมูล
@app.route('/supplier_delete/<string:sup_id>',methods=['GET'])
def supplier_delete(sup_id):
    with conn.cursor() as cursor:
        cursor.execute("DELETE FROM acd_supplier WHERE sup_id = %s",(sup_id))
        conn.commit()
    return redirect(url_for('supplier')) 
#########################################################################################################################################################################
if __name__ == "__main__":
    app.run(debug=True)
