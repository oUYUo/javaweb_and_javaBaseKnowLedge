package dao;
//商品的业务逻辑类

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;



import entity.Items;
import util.DBHelper;

public class Iteamsdao {
//活得所有的商品信息
	public ArrayList<Items> getAllItems(){
		Connection conn = null;
		PreparedStatement stmt=null;
		ResultSet rs  =null;
		ArrayList<Items> list = new ArrayList<Items>();
		try {
			conn=DBHelper.getConnection();
			String sql = "select * from items;";
			stmt =conn.prepareStatement(sql);
			rs = stmt.executeQuery();
			while(rs.next())
			{
				Items item = new Items();
				item.setId(rs.getInt("id"));
				item.setName(rs.getString("name"));
				item.setCity(rs.getString("city"));
				item.setNumber(rs.getInt("number"));
				item.setPicture(rs.getString("picture"));
				item.setPrice(rs.getInt("price"));
				list.add(item);
			}
			return list;
		} catch (Exception e) {
			// TODO: handle exception
			return null;
		}
		finally {
//			释放数据集对象
			if(rs!=null)
			{
				try {
					rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				rs=null;
			}
			
//			释放语句对象
			if(stmt!=null)
			{
				try {
					rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				stmt=null;
			}
		}
	}
}
