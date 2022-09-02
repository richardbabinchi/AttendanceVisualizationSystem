import { errorHandler } from "../_exception_handling/index.mjs";

export class SessionsController {
  constructor(service, logger, resType) {
    this.service = service;
    this.logger = logger;
    this.resType = resType;
  }
}

SessionsController.prototype.getAllEventDates = async function (httpRequest) {
  try {
    const data = await this.service.getAllEventDates(httpRequest.query);
    const response = this.resType.responseIsJson(data);
    return response;
  } catch (err) {
    throw errorHandler(err, this.logger);
  }
};
