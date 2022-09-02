import { ValidationError } from "../_exception_handling/index.mjs";

export class SessionsService {
  constructor(fieldValidator, sessionsRepository) {
    this._fieldValidator = fieldValidator;
    this._sessionsRepository = sessionsRepository;
  }
}

//the method to get all event dates
SessionsService.prototype.getAllEventDates = async function (params = {}) {
  //check if query param is event_date
  if ("event_date" in params) {
    dateParams = new Date(params?.event_date);
    if (dateParams === "Invalid Date" || !dateParams instanceof Date)
      throw new ValidationError("event_date is required");
  }

  //method to get all event dates for all course modules
  const result = await this._sessionsRepository.getAllEventDates(dateParams);
  return result;
};
