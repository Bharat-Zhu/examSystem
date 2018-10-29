package com.exam.system.core.shiro.Realms;

import com.exam.system.core.utils.LogUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;

import com.exam.system.core.entitys.User;
import com.exam.system.modules.sys.services.EmployeeService;

public class ExamRealm extends AuthorizingRealm {

	@Autowired
	private EmployeeService employeeService;
	
	// 授权
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
		// 从PrincipalCollection中获取用户登录的信息
        Object principal = principals.getPrimaryPrincipal();

		return null;
	}

    // 认证
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
		// 把AuthenticationToken转为UsernamePasswordToken
	    UsernamePasswordToken uptoken = (UsernamePasswordToken)token;
	    // 从UsernamePasswordToken中获取username
		String userId = uptoken.getUsername();
		// 从数据库中获取username中对应的记录
        User user = employeeService.getEmployeeById(userId);

        // 用户存不存在
        if (user == null) {
            throw new UnknownAccountException();
        }

        SimpleAuthenticationInfo authenticationInfo =
                new SimpleAuthenticationInfo(user,
                        user.getPassword(),
                        ByteSource.Util.bytes(user.getSalt()),
                        getName());
		return authenticationInfo;
	}

    @Override
    protected void clearCachedAuthorizationInfo(PrincipalCollection principals) {
        super.clearCachedAuthorizationInfo(principals);
    }

    @Override
    protected void clearCachedAuthenticationInfo(PrincipalCollection principals) {
        super.clearCachedAuthenticationInfo(principals);
    }

    @Override
    protected void clearCache(PrincipalCollection principals) {
        super.clearCache(principals);
    }

    public void clearAllCachedAuthorizationInfo() {
        getAuthorizationCache().clear();
    }

    public void clearAllCachedAuthenticationInfo() {
        getAuthenticationCache().clear();
    }

    public void clearAllCache() {
        clearAllCachedAuthenticationInfo();
        clearAllCachedAuthorizationInfo();
    }
}
