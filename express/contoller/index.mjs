import { VisualizationController } from "./visualization.mjs";
import { SessionsController } from "./sessions.mjs";
import { SchoolsController } from "./schools.mjs";

import {
  visualizationService,
  sessionsService,
  schoolsService,
} from "../service/index.mjs";
import { ResponseType } from "../_helper/index.mjs";
import { logger } from "../logging/index.mjs";

const visualizationController = new VisualizationController(
  visualizationService,
  logger,
  ResponseType
); //instantiate required dependencies for the Visualizationcontroller

const sessionsController = new SessionsController(
  sessionsService,
  logger,
  ResponseType
);

const schoolsController = new SchoolsController(
  schoolsService,
  logger,
  ResponseType
);

export { visualizationController, sessionsController, schoolsController };
