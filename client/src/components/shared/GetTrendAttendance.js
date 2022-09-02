import React, { useState, useEffect } from "react";
import { Formik, Form, useFormikContext } from "formik"; //https://formik.org/ //Formik is a small group of React components and hooks for building forms in React
import { SetUsers, SetSchool, SetDepartment } from "./index";
import { schoolService, visualizationService } from "../../_services/index";
import HoC from "./HoC";

export function GetTrendAttendance(props) {
  let {
    isTruthy,
    setIsTruthy,
    setAttendance,
    loadAttendance,
    setHideAttendanceClickView,
    userId,
    setUserId,
  } = props;

  let { setSchoolData, schoolData } = HoC();
  let [users, setUsers] = useState([]);
  let [department, setDepartment] = useState([]);
  let [departmentId, setDepartmentId] = useState("");

  let [isSuccess] = useState(false);
  let [schoolId, setSchoolId] = useState("");
  let [isError] = useState(false);

  // on component mount / onload
  useEffect(() => {
    async function fetchApi() {
      const res = await schoolService.getAllSchools();
      setSchoolData(res?.data);
    }
    fetchApi();
  }, [setSchoolData]);

  const Logger = () => {
    const formik = useFormikContext();
    React.useEffect(() => {
      setSchoolId(formik.values.schoolId);
    }, [formik?.values?.schoolId]);
    return null;
  };

  const UserLogger = () => {
    const formik = useFormikContext();
    React.useEffect(() => {
      setUserId(formik.values.userId);
    }, [formik?.values?.userId]);
    return null;
  };

  const DepartmentLogger = () => {
    const formik = useFormikContext();
    React.useEffect(() => {
      setDepartmentId(formik?.values?.departmentId);
    }, [formik?.values?.departmentId]);
    return null;
  };

  useEffect(() => {
    async function fetchDepartment() {
      if (schoolId) {
        const res = await visualizationService.getDepartmentBySchoolId(
          parseInt(schoolId)
        );

        setDepartment(res?.data);
      }
    }
    fetchDepartment();
  }, [schoolId, setDepartment]);

  useEffect(() => {
    async function fetchUsers() {
      if (departmentId) {
        const res = await schoolService.studentByDepartment(departmentId);
        setUsers(res?.data);
      }
    }

    fetchUsers();
  }, [departmentId]);

  useEffect(() => {
    async function fetchStudentAttendance() {
      if (isTruthy === true && loadAttendance === true) {
        const res = await schoolService.getStudentAttendance(parseInt(userId));

        setAttendance(res?.data);
        setHideAttendanceClickView(true);
      }
    }
    fetchStudentAttendance();
  }, [
    userId,
    setAttendance,
    isTruthy,
    loadAttendance,
    setHideAttendanceClickView,
  ]);

  useEffect(() => {
    if (userId && departmentId) {
      let boolResult = users.some(
        (val) => val?.id === userId && val?.department_id === departmentId
      );

      setIsTruthy(boolResult);
    }
  }, [users, departmentId, userId, setIsTruthy]);

  return (
    <React.Fragment>
      <Formik
        enableReinitialize={false}
        initialValues={{
          departmentId: "",
          schoolId: "",
          userId: "",
          event_date: "",
        }}
        // validationSchema={validateSchema}
      >
        {({ status, isSubmitting, values }) => (
          <Form>
            <Logger />
            <DepartmentLogger />

            <UserLogger />

            <div className='row '>
              <div className='col'>
                {" "}
                <SetSchool schoolData={schoolData} />
              </div>
              <div className='col'>
                {" "}
                <SetDepartment departmentData={department} />
              </div>
              <div className='col'>
                {" "}
                <SetUsers users={users} />
              </div>
            </div>

            {isError && <div className={"alert alert-danger"}>{status}</div>}
            {isSuccess && <div className='alert alert-success '>{status}</div>}
          </Form>
        )}
      </Formik>{" "}
    </React.Fragment>
  );
}
