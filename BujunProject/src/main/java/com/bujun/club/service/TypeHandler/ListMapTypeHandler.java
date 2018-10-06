package com.bujun.club.service.TypeHandler;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import org.apache.ibatis.type.JdbcType;
import org.apache.ibatis.type.TypeHandler;
import org.springframework.jdbc.support.nativejdbc.CommonsDbcpNativeJdbcExtractor;


import oracle.sql.ARRAY;
import oracle.sql.ArrayDescriptor;

public class ListMapTypeHandler implements TypeHandler<Object>{

	@Override
	public void setParameter(PreparedStatement ps, int i, Object parameter, JdbcType jdbcType) throws SQLException {
		System.out.println("parameter" + parameter);
		
		String     list = (String)parameter;
		String[]   Strings = new String[1];
		Strings[0] = list;
	

		CommonsDbcpNativeJdbcExtractor extracter = new CommonsDbcpNativeJdbcExtractor();
		Connection conn = extracter.getNativeConnection(ps.getConnection());
		ArrayDescriptor desc = ArrayDescriptor.createDescriptor("FILE_ARRAY", conn);
		parameter = new ARRAY(desc, conn, Strings);
		ps.setArray(i, (oracle.sql.ARRAY) parameter);
	}

	@Override
	public Object getResult(ResultSet rs, String columnName) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Object getResult(ResultSet rs, int columnIndex) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Object getResult(CallableStatement cs, int columnIndex) throws SQLException {
		// TODO Auto-generated method stub
		if(cs.wasNull()) {
			
			return null;
		} else {
			return cs.getString(columnIndex);
		}
	}

}
