import express from "express"; // A node js web framework used for building API's (npm registry)
import { httpRequestCallBack } from "../callback/httpCallBack.mjs";
import {
  visualizationController,
  schoolsController,
} from "../contoller/index.mjs";
// import { Tokenization, roles } from "../_helper/index.mjs";

export const router = express.Router();

// The authentication route which binds the user controller
// router.post(
//   "/authenticate",
//   httpRequestCallBack(userControlle.authenticaton.bind(userController))
// ); // public route

//The get route is used to get a student attendance record that exist in a department
router.get(
  "/get_student_attendance_record",
  httpRequestCallBack(
    visualizationController.getAttendanceRecord.bind(visualizationController)
  )
);

//The get users route which binds the midleware for token/role verification and user controller
router.get(
  "/get_modules_by_school_id",
  //   Tokenization.authToken(roles.client),
  httpRequestCallBack(
    schoolsController.getModuleBySchoolId.bind(schoolsController)
  )
);

//The get route is used to get a department by school id
router.get(
  "/get_department_by_school_id",
  httpRequestCallBack(
    visualizationController.countStudentByDepartment.bind(
      visualizationController
    )
  )
);

//The get route is used to get a department by school id
router.get(
  "/compute_attendance_time_series",
  httpRequestCallBack(
    visualizationController.computeAttendanceTimeSeries.bind(
      visualizationController
    )
  )
);

//The get route is used to count all students by school
router.get(
  "/count_students_by_school",
  httpRequestCallBack(
    visualizationController.countStudentsBySchools.bind(visualizationController)
  )
);

//The get route is used to count all modules by school
router.get(
  "/count_modules_by_schools",
  httpRequestCallBack(
    visualizationController.countModulesBySchools.bind(visualizationController)
  )
);

//The get route is uused to get all schools
router.get(
  "/get_all_schools",
  httpRequestCallBack(schoolsController.getAllSchools.bind(schoolsController))
);

//The get route is used to get all students with a department
router.get(
  "/get_all_students_in_a_department",
  httpRequestCallBack(
    visualizationController.getDepartmentUsers.bind(visualizationController)
  )
);

//The post route is used to analyse a trend for a student attendance record
router.post(
  "/compute_student_attendance_record",
  httpRequestCallBack(
    visualizationController.computeAttendanceTrend.bind(visualizationController)
  )
);

//The get route is used to get the attendance for all schools on event dates
router.get(
  "/count_all_attendance_event_date",
  httpRequestCallBack(
    visualizationController.countAllAttendanceEventDate.bind(
      visualizationController
    )
  )
);

//The get users route which binds the midleware for token/role verification and user controller
router.get(
  "/get_all_departments",
  httpRequestCallBack(
    schoolsController.getAllDepartments.bind(schoolsController)
  )
);

//The get route is used to get the atttendance for all modules in a department
router.get(
  "/compute_module_department_attendance",
  httpRequestCallBack(
    visualizationController.computeModuleDeparmentAttendance.bind(
      visualizationController
    )
  )
);

//The get users route which binds the midleware for token/role verification and user controller
router.get(
  "/get_module_attendance_by_date",

  httpRequestCallBack(
    visualizationController.visualizeModuleAttendanceWithDate.bind(
      visualizationController
    )
  )
);

//The get route is used to count attendance  for a module by school
router.get(
  "/module_attendance_by_school",
  httpRequestCallBack(
    visualizationController.moduleAttendanceBySchool.bind(
      visualizationController
    )
  )
);

// //The get route is used to count attendance  for attended
// router.get(
//   "/module_attendance_with_attended",
//   httpRequestCallBack(
//     visualizationController.moduleAttendanceWithAttended.bind(
//       visualizationController
//     )
//   )
// );

// //The get route is used to count attendance for attended and not attended for a module
// router.get(
//   "/count_attended_with_not_attended",
//   httpRequestCallBack(
//     visualizationController.countAttendedWithNonAttendedByModule.bind(
//       visualizationController
//     )
//   )
// );

// //The get route is used to count attendance  for attended and not attended for all modules
// router.get(
//   "/count_attended_with_not_attended_for_all_modules",
//   httpRequestCallBack(
//     visualizationController.countAttendedWithNonAttendedForAllModules.bind(
//       visualizationController
//     )
//   )
// );

// //The get route is used to get all event dates
// router.get(
//   "/get_all_event_dates",
//   httpRequestCallBack(
//     sessionsController.getAllEventDates.bind(sessionsController)
//   )
// );
