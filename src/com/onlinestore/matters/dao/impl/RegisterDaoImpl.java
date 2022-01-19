package com.onlinestore.matters.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.onlinestore.matters.dao.RegisterDao;
import com.onlinestore.matters.models.Register;
import com.onlinestore.matters.models.SellerAddress;
import com.onlinestore.matters.utils.DbUtils;
import com.onlinestore.matters.utils.impl.DbUtilsImpl;

public class RegisterDaoImpl implements RegisterDao {

	@Override
	public boolean registerUser(Register reg) {
		int status = 0;
		int status1 = 0;
		Connection con = null;
		PreparedStatement parentInsertionQuery = null;
		PreparedStatement childInsertionQuery = null;
		DbUtils dbutil = new DbUtilsImpl();
		try {
			con = dbutil.makeConnection(con);
//			ps = con.prepareStatement(INSERT_DATA);
//			ps.setString(1, reg.getFirstName());
//			ps.setString(2, reg.getLastName());
//			ps.setString(3, reg.getUserName());
//			ps.setString(4, reg.getEmail());
//			ps.setString(5, reg.getPass());
//			ps.setString(6, reg.getStoreName());
//			ps.setString(7, reg.getGender());
//			ps.setString(8, reg.getDob());
//			status = ps.executeUpdate();

			con.setAutoCommit(false);
			parentInsertionQuery = con.prepareStatement(
					"INSERT INTO seller(firstname, lastname, username, email, password, shopname, datentime, gender, dob) VALUES(?,?,?,?,?,?,current_timestamp(),?,?)");
			parentInsertionQuery.setString(1, reg.getFirstName());
			parentInsertionQuery.setString(2, reg.getLastName());
			parentInsertionQuery.setString(3, reg.getUserName());
			parentInsertionQuery.setString(4, reg.getEmail());
			parentInsertionQuery.setString(5, reg.getPass());
			parentInsertionQuery.setString(6, reg.getStoreName());
			parentInsertionQuery.setString(7, reg.getGender());
			parentInsertionQuery.setString(8, reg.getDob());
			status = parentInsertionQuery.executeUpdate();
			childInsertionQuery = con.prepareStatement(
					"INSERT INTO seller_address(address, city, state, country,shopname) VALUES(?,?,?,?,?)");
			childInsertionQuery.setString(1, reg.getAddress());
			childInsertionQuery.setString(2, reg.getCity());
			childInsertionQuery.setString(3, reg.getState());
			childInsertionQuery.setString(4, reg.getCountry());
			childInsertionQuery.setString(5, reg.getStoreName());
			status1 = childInsertionQuery.executeUpdate();
			con.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (parentInsertionQuery != null) {
					parentInsertionQuery.close();
				}
				if (childInsertionQuery != null) {
					childInsertionQuery.close();
				}

				if (con != null) {
					con.close();
				}
			} catch (Exception e) {
				System.out.println("Cant close ps and con @DAO-->Register User method");
			}
		}
		return (status != 0 && status1 != 0);
	}

}
