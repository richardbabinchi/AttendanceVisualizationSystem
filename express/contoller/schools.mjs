import { errorHandler } from "../_exception_handling/index.mjs";

// The contoller class which handles both requests and updates views for schools operations
export class SchoolsController {
  constructor(service, logger, resType) {
    this.service = service;
    this.logger = logger;
    this.resType = resType;
  }
}

// The contoller method to get all schools
SchoolsController.prototype.getAllSchools = async function () {
  try {
    const data = await this.service.getAllSchools();
    const response = this.resType.responseIsJson(data);
    return response;
  } catch (err) {
    console.log(err);
    throw errorHandler(err, this.logger);
  }
};

// The contoller method to get all departments
SchoolsController.prototype.getAllDepartments = async function () {
  try {
    const data = await this.service.getAllDepartments();
    const response = this.resType.responseIsJson(data);
    return response;
  } catch (err) {
    console.log(err);
    throw errorHandler(err, this.logger);
  }
};

// The contoller method to get a department
SchoolsController.prototype.getDepartmentBySchoolId = async function (
  httpRequest
) {
  try {
    const data = await this.service.getDepartmentBySchoolId(httpRequest.query);
    const response = this.resType.responseIsJson(data);
    return response;
  } catch (err) {
    console.log(err);
    throw errorHandler(err, this.logger);
  }
};

// The contoller method to get a department
SchoolsController.prototype.getModuleBySchoolId = async function (httpRequest) {
  try {
    const data = await this.service.getModuleBySchoolId(httpRequest.query);
    const response = this.resType.responseIsJson(data);
    return response;
  } catch (err) {
    console.log(err);
    throw errorHandler(err, this.logger);
  }
};
