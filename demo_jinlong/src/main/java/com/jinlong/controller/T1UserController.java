package com.jinlong.controller;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.jinlong.model.T1Fun;
import com.jinlong.model.T1Model;
import com.jinlong.model.T1Role;
import com.jinlong.model.T1User;
import com.jinlong.service.T1RoleService;
import com.jinlong.service.T1UserService;

@Controller
@RequestMapping("/t1User")
public class T1UserController {

	@Resource
	private T1UserService t1UserService;
	
	@Resource
	private T1RoleService t1RoleService;
	
	@RequestMapping("/getT1User")
	public String getT1User() {
		List<T1User> list = t1UserService.getT1User();
		return "";
	}

	@RequestMapping("/getT1UserById")
	public String getT1UserById(String id) {
		T1User t1User = t1UserService.getT1UserById(Integer.valueOf(id));
		return "";
	}

	@RequestMapping("/addT1User")
	public String addT1User(T1User t1User) {
		t1UserService.addT1User(t1User);
		return "";
	}

	@RequestMapping("/updateT1User")
	public String updateT1User(T1User t1User) {
		t1UserService.updateT1User(t1User);
		return "";
	}

	@RequestMapping("/deleteT1User")
	public String deleteT1User(String id) {
		t1UserService.deleteT1User(Integer.valueOf(id));
		return "";
	}

	
	@RequestMapping("head")
	public String head() {
		return "main/head";
	}

	@RequestMapping("main")
	public String main() {
		return "main/main";
	}
	
	@RequestMapping("index")
	public String index() {
		return "main/index";
	}
	/**
	 * 登录
	 * 
	 * @param user
	 * @param session
	 * @return
	 */
	@RequestMapping("login")
	@ResponseBody
	public String login(@RequestParam("admin") String admin,@RequestParam("password") String password, HttpSession session) {
		try {
			UsernamePasswordToken token = new UsernamePasswordToken(admin,password);
			
			//创建当前运行时对象
			Subject currentUser = SecurityUtils.getSubject();
			
            if (!currentUser.isAuthenticated()){
                //使用shiro来验证 
                currentUser.login(token);//验证角色和权限 ,执行认证提交
            }
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "";
	}

	
	
	@RequestMapping("exit")
	public String exit(HttpSession session) {
		session.removeAttribute("user");
		session.invalidate();
		return "redirect:/login.jsp";
	}
	
	

}
