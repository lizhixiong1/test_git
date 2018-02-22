package com.jinlong.shiro;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.DisabledAccountException;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

import com.jinlong.model.T1User;
import com.jinlong.service.T1UserService;

public class MyShiroRealm extends AuthorizingRealm {

	@Autowired
	private T1UserService t1UserService;
	
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authcToken)
			throws AuthenticationException {
		// TODO Auto-generated method stub
		UsernamePasswordToken token = (UsernamePasswordToken) authcToken;
		String checkStatus = t1UserService.checkLogin(token.getUsername(),new String(token.getPassword()));

		if (checkStatus.equals("")) {
			T1User sysUser = t1UserService.getUserByValue(token.getUsername(),new String(token.getPassword()));

			return new SimpleAuthenticationInfo(sysUser,token.getPassword(),token.getUsername());
		} else {
			throw new DisabledAccountException("登录失败！");
		}
	}

}
