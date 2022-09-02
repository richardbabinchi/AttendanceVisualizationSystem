import { ValidationError } from "../_exception_handling/index.mjs";

export class SchoolsService {
  constructor(fieldValidator, schoolsRepository) {
    this._fieldValidator = fieldValidator;
    this._schoolsRepository = schoolsRepository;
  }
}

//the method to get all schools
SchoolsService.prototype.getAllSchools = async function () {
  try {
    //method to get all schools from the database
    const result = await this._schoolsRepository.getAll();
    return result;
  } catch (err) {
    console.log(err);
  }
};

//the method to get all module by school id
SchoolsService.prototype.getModuleBySchoolId = async function (params) {
  try {
    let reqFields = ["school_id"];
    this._fieldValidator.validateRequiredFields(reqFields, params);

    //method to get all schools from the database
    const result = await this._schoolsRepository.getModuleBySchoolId(
      params?.school_id
    );
    return result;
  } catch (err) {
    console.log(err);
  }
};

//the method to get all departments
SchoolsService.prototype.getAllDepartments = async function () {
  //method to get all departments  from the database
  const result = await this._schoolsRepository.getAllDepartments();
  return result;
};

//the method to get a department by school id
SchoolsService.prototype.getDepartmentBySchoolId = async function (params) {
  let reqFields = ["school_id"];
  this._fieldValidator.validateRequiredFields(reqFields, params);

  //method to get a department  from the database
  const result = await this._schoolsRepository.getDepartmentBySchoolId(
    params?.school_id
  );
  return result;
};
