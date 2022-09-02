import axios from "axios"; //https://www.npmjs.com/package/axios   axios is a promised based http client for node
import { authHeader, HandleError } from "../_helper";

const apiUrl = process.env.REACT_APP_BASEURL_DEMO;

export const schoolService = {
  getAllDepartments,
  getAllSchools,
  getDepartmentBySchoolId,
  getModulesBySchoolId,
  studentByDepartment,
  getStudentAttendance,
};

//The api request to get all schools from the service
async function getAllSchools() {
  const requestOptions = {
    method: "get",
    headers: authHeader(),
    url: `${apiUrl}/school_management/api/get_all_schools`,
  };
  try {
    let response = await axios(requestOptions);
    response = response.data;
    return response;
  } catch (error) {
    throw HandleError(error);
  }
}

//The api request to get departments schools from the service
async function getAllDepartments() {
  const requestOptions = {
    method: "get",
    headers: authHeader(),
    url: `${apiUrl}/school_management/api/get_all_departments`,
  };
  try {
    let response = await axios(requestOptions);
    response = response.data;
    return response;
  } catch (error) {
    throw HandleError(error);
  }
}

//The api request to get all student in a department from the service
async function studentByDepartment(id) {
  const requestOptions = {
    method: "get",
    headers: authHeader(),
    url: `${apiUrl}/school_management/api/get_all_students_in_a_department?id=${id}`,
  };
  try {
    let response = await axios(requestOptions);
    response = response.data;
    return response;
  } catch (error) {
    throw HandleError(error);
  }
}

//The api request to get departments schools from the service
async function getDepartmentBySchoolId(id) {
  const requestOptions = {
    method: "get",
    headers: authHeader(),
    url: `${apiUrl}/school_management/api/get_department_by_school_id?school_id=${parseInt(
      id
    )}`,
  };
  try {
    let response = await axios(requestOptions);
    response = response.data;
    return response;
  } catch (error) {
    throw HandleError(error);
  }
}

//The api request to get departments schools from the service
async function getStudentAttendance(id) {
  const requestOptions = {
    method: "get",
    headers: authHeader(),
    url: `${apiUrl}/school_management/api/get_student_attendance_record?id=${id}`,
  };
  try {
    let response = await axios(requestOptions);
    response = response.data;
    return response;
  } catch (error) {
    throw HandleError(error);
  }
}

//The api request to get modules  by school id  from the service
async function getModulesBySchoolId(id) {
  const requestOptions = {
    method: "get",
    headers: authHeader(),
    url: `${apiUrl}/school_management/api/get_modules_by_school_id?school_id=${id}`,
  };
  try {
    let response = await axios(requestOptions);
    response = response.data;
    return response;
  } catch (error) {
    throw HandleError(error);
  }
}
