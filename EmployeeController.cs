using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DemoApp1.Models;

namespace DemoApp1.Controllers
{
    public class EmployeeController : Controller
    {
        static List<Employee> employees = new List<Employee>();
        Employee employee = new Employee();
        public EmployeeController()
        {
            employee.Id = 100;
            employee.Name = "Akansha";
            employee.Gender = "Female";
            Employee employee1 = new Employee();
            employee1.Id = 101;
            employee1.Name = "Fransy";
            employee1.Gender = "Female";
            //  ViewData["name"] = employee;
            // ViewBag.empname = employee;
            employees.Add(employee);
            employees.Add(employee1);

        }
      

        // GET: Employee
        public ActionResult Index()
        {
           
            return View(employees);
        }
        [HttpGet]
        //[NonAction]
        public ActionResult Create()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Create(Employee emp)
        {
            employees.Add(emp);
            return View("Index",employees);
        }
    }
}