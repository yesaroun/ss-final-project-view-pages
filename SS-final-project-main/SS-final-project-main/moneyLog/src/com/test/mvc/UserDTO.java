package com.test.mvc;

public class UserDTO
{
	String user_dstn_cd, user_name, user_id, ban_date;

	// getter / setter 구성
	public String getUser_dstn_cd()
	{
		return user_dstn_cd;
	}

	public void setUser_dstn_cd(String user_dstn_cd)
	{
		this.user_dstn_cd = user_dstn_cd;
	}

	public String getUser_name()
	{
		return user_name;
	}

	public void setUser_name(String user_name)
	{
		this.user_name = user_name;
	}

	public String getUser_id()
	{
		return user_id;
	}

	public void setUser_id(String user_id)
	{
		this.user_id = user_id;
	}

	public String getBan_date()
	{
		return ban_date;
	}

	public void setBan_date(String ban_date)
	{
		this.ban_date = ban_date;
	}
	
	
}
