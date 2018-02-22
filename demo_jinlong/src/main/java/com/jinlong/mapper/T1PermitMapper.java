package com.jinlong.mapper;

import org.apache.ibatis.annotations.Param;

public interface T1PermitMapper {

	void delT1Permit(@Param("roleId")Integer roleId,@Param("i") Integer i);

	void addT1Permit(@Param("roleId")Integer roleId,@Param("i") Integer i);
	
}
