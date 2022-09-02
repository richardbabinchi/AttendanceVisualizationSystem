import React, { useState, useEffect } from "react";
import { Formik, Form, useFormikContext } from "formik"; //https://formik.org/ //Formik is a small group of React components and hooks for building forms in React
import { SetModule, SetSchool, SetDepartment } from "../shared/index";
import { schoolService, visualizationService } from "../../_services/index";
import HoC from "./HoC";

export function GetDepartmentAttendance(props) {
  const { setAttendance } = props;

  let { setSchoolData, schoolData } = HoC();
  let [modules, setModules] = useState([]);
  let [department, setDepartment] = useState([]);
  let [moduleId, setModuleId] = useState("");
  let [departmentId, setDepartmentId] = useState("");
  let [isTruthy, setIsTruthy] = useState(false);

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

  const ModuleLogger = () => {
    const formik = useFormikContext();
    React.useEffect(() => {
      setModuleId(formik.values.moduleId);
    }, [formik?.values?.moduleId]);
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
          schoolId
        );

        setDepartment(res?.data);
      }
    }
    fetchDepartment();
  }, [schoolId, setDepartment]);

  useEffect(() => {
    async function fetchModule() {
      if ((schoolId, departmentId)) {
        const res = await schoolService.getModulesBySchoolId(schoolId);
        setModules(res?.data);
      }
    }

    fetchModule();
  }, [schoolId, departmentId]);

  useEffect(() => {
    async function fetchModuleDeptAttendance() {
      if (isTruthy === true) {
        const res = await visualizationService.computeModuleDeptAttendance(
          departmentId,
          moduleId
        );

        setAttendance(res?.data);
      }
    }
    fetchModuleDeptAttendance();
  }, [departmentId, setAttendance, moduleId, isTruthy]);

  useEffect(() => {
    if (moduleId && departmentId) {
      let module = modules.filter((val) => val?.id === moduleId);
      let dept = department.filter((val) => val?.id === departmentId);

      setIsTruthy(
        schoolData.some(
          (val) =>
            val?.id === module[0]?.school_id && val?.id === dept[0]?.school_id
        )
      );
    }
  }, [department, modules, departmentId, moduleId, schoolData]);

  return (
    <React.Fragment>
      <Formik
        enableReinitialize={false}
        initialValues={{
          departmentId: "",
          schoolId: "",
          moduleId: "",
          event_date: "",
        }}
        // validationSchema={validateSchema}
      >
        {({ status, isSubmitting, values }) => (
          <Form>
            <Logger />
            <DepartmentLogger />

            <ModuleLogger />

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
                <SetModule modules={modules} />
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
