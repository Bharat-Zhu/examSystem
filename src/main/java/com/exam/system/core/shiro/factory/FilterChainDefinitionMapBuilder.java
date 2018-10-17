package com.exam.system.core.shiro.factory;

import java.util.LinkedHashMap;

public class FilterChainDefinitionMapBuilder {

	public LinkedHashMap<String, String> buildFilterChainDefinitionMap() {
		LinkedHashMap<String, String> map = new LinkedHashMap<>();
		
		map.put("/static/**", "anon");
		map.put("/upload/**", "anon");
		map.put("/logout", "logout");
		
		map.put("/**", "sysUser,onlineSession,user,perms,roles");
		
		return map;
	}
}
