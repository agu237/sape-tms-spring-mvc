package com.sapient.tms.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.sapient.tms.model.bean.Employee;

@Controller
@SessionAttributes("Employee")
@RequestMapping("/")
public class SignInController {

	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView myMainHome() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("HomeView");
		return mv;

	}

	@RequestMapping(value = "/SignIn")
	public ModelAndView mySignIn(@ModelAttribute("employee") Employee employee) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("accounts/SignInForm");
		mv.addObject("employee", new Employee());
		return mv;
	}

	public ModelAndView mySignUp(@ModelAttribute("employee") Employee employee) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("accounts/SignUpForm");
		mv.addObject("employee", new Employee());
		return mv;
	}
}

// int id=employee.getId();
// String password=employee.getPassword();
// if (employee.isAdmin()){
// mv.setViewName("AdminHomeView");
// return mv;
// }
// else{
// mv.setViewName("EmployeeHomeView");
// return mv;
// }
//
//
// }
//
// protected void doGet(HttpServletRequest request, HttpServletResponse
// response)
// throws ServletException, IOException {
// boolean isValidEmployee;
// try {
// // Get parameters from request object
// int username = Integer.parseInt(request.getParameter("id"));
// String password = request.getParameter("password");
// // Attempt to authenticate user details
// EmployeeAuthenticator authenticator = new EmployeeAuthenticator();
// Map.Entry<Employee, Boolean> authenticationResult =
// authenticator.authenticate(username, password);
// isValidEmployee = authenticationResult.getValue();
// // If authentication fails
// if (!isValidEmployee) {
// request.setAttribute("status", "Invalid UserID Or Password");
// request.getRequestDispatcher("./HomeView.jsp").forward(request,
// response);
// }
// // If authentication is successful
// else {
// Employee employee = authenticationResult.getKey();
// Request tempRequest =
// centralLogic.searchRequestByEmployeeId(employee.getId());
// if(tempRequest != null) {
// //Request has been rejected
// if(tempRequest.isRejected()) {
// Ride ride = tempRequest.getEmployee().getRide();
// ride.setSeatsAllocated(ride.getSeatsAllocated() - 1);
// centralLogic.updateRide(ride.getVehicle().getId(), ride);
// request.setAttribute("status", "Your request has been rejected");
// request.getRequestDispatcher("./HomeView.jsp").forward(request,
// response);
// centralLogic.deleteRequestByEmployeeId(tempRequest.getEmployee().getId());
// centralLogic.deleteEmployee(tempRequest.getEmployee().getId());
// }
// //Request is still pending
// else if(tempRequest.isPending()) {
// request.setAttribute("status", "Your request is still pending");
// request.getRequestDispatcher("./HomeView.jsp").forward(request,
// response);
// }
// //Request has been accepted
// else {
// request.setAttribute("status", "Your request has been accepted");
// centralLogic.deleteRequestByEmployeeId(tempRequest.getEmployee().getId());
// HttpSession session = request.getSession();
// session.setAttribute("user", employee);
// if(!employee.isAdmin()) {
// response.sendRedirect("./EmployeeHomeView.jsp");
// }
// else {
// response.sendRedirect("./AdminHomeView.jsp");
// }
// }
// }
// else {
// HttpSession session = request.getSession();
// session.setAttribute("user", employee);
// if(!employee.isAdmin()) {
// response.sendRedirect("./EmployeeHomeView.jsp");
// }
// else {
// response.sendRedirect("./AdminHomeView.jsp");
// }
// }
// }
// } catch (ClassNotFoundException | SQLException e) {
// // TODO Auto-generated catch block
// e.printStackTrace();
// }
// }
//
// /**
// * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
// * response)
// */
// protected void doPost(HttpServletRequest request, HttpServletResponse
// response)
// throws ServletException, IOException {
// // TODO Auto-generated method stub
// doGet(request, response);
// }
//
// }
