import { errorHandler } from "../_exception_handling/index.mjs";

export class VisualizationController {
  constructor(service, logger, resType) {
    this.service = service;
    this.logger = logger;
    this.resType = resType;
  }
}

VisualizationController.prototype.countStudentsBySchools = async function () {
  try {
    const data = await this.service.countStudentsBySchools();
    const response = this.resType.responseIsJson(data);
    return response;
  } catch (err) {
    throw errorHandler(err, this.logger);
  }
};

VisualizationController.prototype.countStudentByDepartment = async function (
  httpRequest
) {
  try {
    const data = await this.service.countStudentsByDepartment(
      httpRequest.query
    );
    const response = this.resType.responseIsJson(data);
    return response;
  } catch (err) {
    throw errorHandler(err, this.logger);
  }
};

// The contoller method to get all users in a department
VisualizationController.prototype.getDepartmentUsers = async function (
  httpRequest
) {
  try {
    const data = await this.service.getDepartmentUsers(httpRequest.query);
    const response = this.resType.responseIsJson(data);
    return response;
  } catch (err) {
    throw errorHandler(err, this.logger);
  }
};

// The contoller method to get attendance data for a student
VisualizationController.prototype.getAttendanceRecord = async function (
  httpRequest
) {
  try {
    const data = await this.service.getAttendanceRecord(httpRequest.query);
    const response = this.resType.responseIsJson(data);
    return response;
  } catch (err) {
    throw errorHandler(err, this.logger);
  }
};

// The contoller method to get attendance data for a student
VisualizationController.prototype.computeAttendanceTrend = async function (
  httpRequest
) {
  try {
    const data = await this.service.computeAttendanceTrend({
      ...httpRequest?.query,
      ...httpRequest?.body,
    });
    const response = this.resType.responseIsJson(data);
    return response;
  } catch (err) {
    throw errorHandler(err, this.logger);
  }
};

VisualizationController.prototype.computeModuleDeparmentAttendance =
  async function (httpRequest) {
    try {
      const data = await this.service.computeModuleDeparmentAttendance(
        httpRequest.query
      );
      const response = this.resType.responseIsJson(data);
      return response;
    } catch (err) {
      throw errorHandler(err, this.logger);
    }
  };
VisualizationController.prototype.countModulesBySchools = async function () {
  try {
    const data = await this.service.countModulesBySchools();
    const response = this.resType.responseIsJson(data);
    return response;
  } catch (err) {
    throw errorHandler(err, this.logger);
  }
};

VisualizationController.prototype.moduleAttendanceWithAttended =
  async function (httpRequest) {
    try {
      const data = await this.service.moduleAttendanceWithAttended(
        httpRequest.query
      );
      const response = this.resType.responseIsJson(data);
      return response;
    } catch (err) {
      throw errorHandler(err, this.logger);
    }
  };

VisualizationController.prototype.moduleAttendanceBySchool = async function (
  httpRequest
) {
  try {
    const data = await this.service.moduleAttendanceBySchool(httpRequest.query);
    const response = this.resType.responseIsJson(data);
    return response;
  } catch (err) {
    throw errorHandler(err, this.logger);
  }
};

VisualizationController.prototype.countAttendedWithNonAttendedByModule =
  async function (httpRequest) {
    try {
      const data = await this.service.countAttendedWithNonAttended(
        httpRequest.query
      );
      const response = this.resType.responseIsJson(data);
      return response;
    } catch (err) {
      throw errorHandler(err, this.logger);
    }
  };

VisualizationController.prototype.countAttendedWithNonAttendedForAllModules =
  async function (httpRequest) {
    try {
      const data = await this.service.countAttendedWithNonAttendedForAllModules(
        httpRequest.query
      );
      const response = this.resType.responseIsJson(data);
      return response;
    } catch (err) {
      throw errorHandler(err, this.logger);
    }
  };

VisualizationController.prototype.countAllAttendanceEventDate = async function (
  httpRequest
) {
  try {
    const data = await this.service.countAllAttendanceEventDate(
      httpRequest.query
    );
    const response = this.resType.responseIsJson(data);
    return response;
  } catch (err) {
    throw errorHandler(err, this.logger);
  }
};

VisualizationController.prototype.visualizeModuleAttendanceWithDate =
  async function (httpRequest) {
    try {
      const data = await this.service.getAttendanceForModuleByDate(
        httpRequest.query
      );
      const response = this.resType.responseIsJson(data);
      return response;
    } catch (err) {
      throw errorHandler(err, this.logger);
    }
  };

VisualizationController.prototype.computeAttendanceTimeSeries = async function (
  httpRequest
) {
  try {
    const data = await this.service.computeAttendanceTimeSeries(
      httpRequest.query
    );
    const response = this.resType.responseIsJson(data);
    return response;
  } catch (err) {
    throw errorHandler(err, this.logger);
  }
};
