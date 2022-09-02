import * as fs from "fs/promises";
import * as path from "path";
import "dotenv/config";
import { ValidationError } from "../_exception_handling/index.mjs";

export class VisualizationService {
  constructor(fieldValidator, visualizationRepository) {
    this._fieldValidator = fieldValidator;
    this._visualizationRepository = visualizationRepository;
  }
}

VisualizationService.prototype.countStudentsBySchools = async function () {
  const filePath = process.env.READ_STUDENTS_BY_SCHOOL;
  const data = await fs.readFile(path.normalize(filePath), {
    encoding: "utf8",
  });

  const result = this._visualizationRepository.visualizeQuery(data.toString());
  return result;
};

VisualizationService.prototype.countStudentsByDepartment = async function (
  params
) {
  let reqFields = ["school_id"];
  this._fieldValidator.validateRequiredFields(reqFields, params);

  // if (typeof params?.school_id !== "number") {
  //   throw new ValidationError(`invalid school identifier`);
  // }

  const filePath = process.env.COUNT_STUDENTS_BY_DEPARTMENTS;

  const data = await fs.readFile(path.normalize(filePath), {
    encoding: "utf8",
  });

  const result = this._visualizationRepository.visualizeQueryWithDeptUserParams(
    data.toString(),
    params
  );
  return result;
};

VisualizationService.prototype.computeModuleDeparmentAttendance =
  async function (params) {
    let reqFields = ["module_id", "department_id"];

    // if (typeof params?.module_id !== "number") {
    //   throw new ValidationError(`invalid module identifier`);
    // }

    // if (typeof params?.department_id !== "number") {
    //   throw new ValidationError(`invalid department identifier`);
    // }

    this._fieldValidator.validateRequiredFields(reqFields, params);
    const filePath = process.env.COMPUTE_MODULE_DEPARTMENT_ATTENDANCE;
    const data = await fs.readFile(path.normalize(filePath), {
      encoding: "utf8",
    });

    const result =
      this._visualizationRepository.visualizeModuleDeparmentAttendance(
        data.toString(),
        params
      );
    return result;
  };

//the method to get all users in a department
VisualizationService.prototype.getDepartmentUsers = async function (params) {
  let reqFields = ["id"];
  this._fieldValidator.validateRequiredFields(reqFields, params);

  // if (typeof params?.id !== "number") {
  //   throw new ValidationError(`invalid department identifier`);
  // }

  const filePath = process.env.GET_DEPARTMENT_USERS;
  const data = await fs.readFile(path.normalize(filePath), {
    encoding: "utf8",
  });

  const result = this._visualizationRepository.visualizeQueryWithParams(
    data.toString(),
    params
  );
  return result;
};

//the method to get all users in a department
VisualizationService.prototype.getAttendanceRecord = async function (params) {
  let reqFields = ["id"];

  this._fieldValidator.validateRequiredFields(reqFields, params);

  // if (typeof params?.id !== "number") {
  //   throw new ValidationError(`invalid user identifier`);
  // }
  // console.log(100);
  const filePath = process.env.GET_ATTENDANCE_RECORD;
  const data = await fs.readFile(path.normalize(filePath), {
    encoding: "utf8",
  });
  const result = this._visualizationRepository.visualizeQueryWithParams(
    data.toString(),
    params
  );
  return result;
};

VisualizationService.prototype.countModulesBySchools = async function () {
  const filePath = process.env.COUNT_ALL_MODULES;
  const data = await fs.readFile(path.normalize(filePath), {
    encoding: "utf8",
  });

  const result = this._visualizationRepository.visualizeQuery(data.toString());
  return result;
};

VisualizationService.prototype.moduleAttendanceWithAttended = async function (
  params
) {
  let reqFields = ["id"];
  this._fieldValidator.validateRequiredFields(reqFields, params);

  // if (typeof params?.id !== "number") {
  //   throw new ValidationError(`invalid module identifier`);
  // }

  const filePath = process.env.MODULE_ATTENDANCE_WITH_ATTENDED;
  const data = await fs.readFile(path.normalize(filePath), {
    encoding: "utf8",
  });

  const result = this._visualizationRepository.visualizeQueryWithParams(
    data.toString(),
    params
  );
  return result;
};

VisualizationService.prototype.moduleAttendanceBySchool = async function (
  params
) {
  let reqFields = ["id"];
  this._fieldValidator.validateRequiredFields(reqFields, params);

  // if (typeof params?.id !== "number") {
  //   throw new ValidationError(`invalid school identifier`);
  // }

  const filePath = process.env.MODULE_ATTENDANCE_BY_SCHOOL;
  const data = await fs.readFile(path.normalize(filePath), {
    encoding: "utf8",
  });

  const result = this._visualizationRepository.visualizeQueryWithParams(
    data.toString(),
    params
  );
  return result;
};

VisualizationService.prototype.countAttendedWithNonAttended = async function (
  params
) {
  let reqFields = ["id"];
  this._fieldValidator.validateRequiredFields(reqFields, params);

  // if (typeof params?.id !== "number") {
  //   throw new ValidationError(`invalid school identifier`);
  // }

  const filePath = process.env.COUNT_ATTENDED_WITH_NON_ATTENDED;
  const data = await fs.readFile(path.normalize(filePath), {
    encoding: "utf8",
  });

  const result = this._visualizationRepository.visualizeQueryWithParams(
    data.toString(),
    params
  );
  return result;
};

VisualizationService.prototype.countAttendedWithNonAttendedForAllModules =
  async function (params) {
    const filePath =
      process.env.COUNT_ATTENDED_WITH_NON_ATTENDED_FOR_ALL_MODULES;
    const data = await fs.readFile(path.normalize(filePath), {
      encoding: "utf8",
    });

    const result = this._visualizationRepository.visualizeQuery(
      data.toString(),
      params
    );
    return result;
  };

VisualizationService.prototype.countAllAttendanceEventDate = async function (
  params
) {
  let reqFields = ["event_date"];
  this._fieldValidator.validateRequiredFields(reqFields, params);
  const filePath = process.env.COUNT_ALL_ATTENDANCE_EVENT_DATE;
  const data = await fs.readFile(path.normalize(filePath), {
    encoding: "utf8",
  });

  const result = this._visualizationRepository.visualizeQueryWithDateParams(
    data.toString(),
    params
  );
  return result;
};

VisualizationService.prototype.getAttendanceForModuleByDate = async function (
  params
) {
  try {
    let dateParams;
    let reqFields = ["event_date", "school_id"];
    this._fieldValidator.validateRequiredFields(reqFields, params);

    if ("event_date" in params) {
      dateParams = new Date(params?.event_date);
      if (dateParams === "Invalid Date" || !dateParams instanceof Date)
        throw new ValidationError("event_date is required");
    }

    const filePath = process.env.COUNT_ATTENDANCE_FOR_MODULE_WITH_DATE;
    const data = await fs.readFile(path.normalize(filePath), {
      encoding: "utf8",
    });

    const result =
      this._visualizationRepository.visualizeModuleAttendanceWithDate(
        data.toString(),
        params
      );
    return result;
  } catch (err) {
    console.log(err);
  }
};

VisualizationService.prototype.computeAttendanceTrend = async function (
  params
) {
  let reqFields = ["student_id", "courseType"];

  // if (typeof params?.student_id !== "number") {
  //   throw new ValidationError(`invalid student identifier`);
  // }

  this._fieldValidator.validateRequiredFields(reqFields, params);
  let { courseType } = params;
  function computeCourseType(arr = []) {
    let occurences = {};
    arr.forEach((val) => {
      occurences[val] = (occurences[val] || 0) + 1;
    });
    return occurences;
  }
  let courseCount = computeCourseType(courseType);
  console.log(courseCount);
  const filePath = process.env.COMPUTE_STUDENT_TREND;
  const data = await fs.readFile(path.normalize(filePath), {
    encoding: "utf8",
  });

  const result = this._visualizationRepository.computeStudentAttendance(
    data.toString(),
    params?.student_id,
    courseCount
  );

  return result;
};

VisualizationService.prototype.computeAttendanceTimeSeries = async function (
  params
) {
  let reqFields = ["user_id"];
  this._fieldValidator.validateRequiredFields(reqFields, params);
  const filePath = process.env.COMPUTE_ATTENDANCE_TIME_SERIES;
  const data = await fs.readFile(path.normalize(filePath), {
    encoding: "utf8",
  });

  const result = this._visualizationRepository.visualizeQueryWithParams(
    data.toString(),
    { id: params?.user_id }
  );
  return result;
};
