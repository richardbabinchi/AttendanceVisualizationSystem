import axios from "axios"; //https://www.npmjs.com/package/axios   axios is a promised based http client for node
import { authHeader, HandleError } from "../_helper";

const apiUrl = process.env.REACT_APP_BASEURL_DEMO;

export const visualizationService = {
  countAllStudentsBySchool,
  countAllModulesBySchools,
  getDepartmentBySchoolId,
  getAttendanceByEventDate,
  getAttendanceForModuleByDate,
  computeModuleDeptAttendance,
  computeStudentAttendance,
  computeStudentAttendanceTimeSeries,
};

//The api request to count all students by school from the service
async function countAllStudentsBySchool() {
  const requestOptions = {
    method: "get",
    headers: authHeader(),
    url: `${apiUrl}/school_management/api/count_students_by_school`,
  };
  try {
    let response = await axios(requestOptions); //https://www.npmjs.com/package/axios#request-config
    response = response.data;
    return response;
  } catch (error) {
    throw HandleError(error);
  }
}

//The api request to count all modules by schools from the service
async function countAllModulesBySchools() {
  const requestOptions = {
    method: "get",
    headers: authHeader(),
    url: `${apiUrl}/school_management/api/count_modules_by_schools`,
  };
  try {
    let response = await axios(requestOptions); //https://www.npmjs.com/package/axios#request-config
    response = response.data;
    return response;
  } catch (error) {
    throw HandleError(error);
  }
}

//api call to get departments by school id
async function getDepartmentBySchoolId(id) {
  const requestOptions = {
    method: "get",
    headers: authHeader(),
    url: `${apiUrl}/school_management/api/get_department_by_school_id?school_id=${id}`,
  };
  try {
    let response = await axios(requestOptions); //https://www.npmjs.com/package/axios#request-config
    response = response.data;
    return response;
  } catch (error) {
    throw HandleError(error);
  }
}

//get all module attedance based on event date
async function getAttendanceByEventDate(val) {
  const requestOptions = {
    method: "get",
    headers: authHeader(),
    url: `${apiUrl}/school_management/api/count_all_attendance_event_date?event_date=${val}`,
  };
  try {
    let response = await axios(requestOptions); //https://www.npmjs.com/package/axios#request-config
    response = response.data;
    return response;
  } catch (error) {
    throw HandleError(error);
  }
}

// compute module attendance by department
async function computeModuleDeptAttendance(department_id, module_id) {
  const requestOptions = {
    method: "get",
    headers: authHeader(),
    url: `${apiUrl}/school_management/api/compute_module_department_attendance?department_id=${department_id}&module_id=${module_id}`,
  };
  try {
    let response = await axios(requestOptions); //https://www.npmjs.com/package/axios#request-config
    response = response.data;
    return response;
  } catch (error) {
    throw HandleError(error);
  }
}

// compute the attendance of a student by the student id
async function computeStudentAttendance(student_id, courseType) {
  const requestOptions = {
    method: "post",
    data: { courseType },
    headers: authHeader(),
    url: `${apiUrl}/school_management/api/compute_student_attendance_record?student_id=${student_id}`,
  };
  try {
    let response = await axios(requestOptions); //https://www.npmjs.com/package/axios#request-config
    response = response.data;
    return response;
  } catch (error) {
    throw HandleError(error);
  }
}

// get the attendace for a course module by event date
async function getAttendanceForModuleByDate(eventDate, schoolId) {
  const requestOptions = {
    method: "get",
    headers: authHeader(),
    url: `${apiUrl}/school_management/api/get_module_attendance_by_date?event_date=${eventDate}&school_id=${schoolId}`, //https://www.npmjs.com/package/axios#request-config
  };
  try {
    let response = await axios(requestOptions);
    response = response.data;
    return response;
  } catch (error) {
    throw HandleError(error);
  }
}

// compute  a student attendance by time series
async function computeStudentAttendanceTimeSeries(userlId) {
  const requestOptions = {
    method: "get",
    headers: authHeader(),
    url: `${apiUrl}/school_management/api/compute_attendance_time_series?user_id=${userlId}`, //https://www.npmjs.com/package/axios#request-config
  };
  try {
    let response = await axios(requestOptions);
    response = response.data;
    return response;
  } catch (error) {
    throw HandleError(error);
  }
}
