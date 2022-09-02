import React, { useState, useEffect } from "react";
import { Formik, Form, useFormikContext } from "formik"; //https://formik.org/ //Formik is a small group of React components and hooks for building forms in React
// import * as yup from "yup"; //https://www.npmjs.com/package/yup#api
import { TextDate } from "./_formcomponents";
import { SetModule, SetSchool } from "../shared/index";
import { schoolService, visualizationService } from "../../_services/index";
import HoC from "./HoC";

export function GetEventForModule(props) {
  const { setModuleAttendance } = props;
  let { setSchoolData, schoolData } = HoC();
  let [modules, setModules] = useState([]);
  let [moduleId, setModuleId] = useState("");
  let [eventDate, setEventDate] = useState("");
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

  const DateLogger = () => {
    const formik = useFormikContext();
    React.useEffect(() => {
      setEventDate(formik.values.event_date);
    }, [formik?.values?.event_date]);
    return null;
  };
  useEffect(() => {
    async function fetchModule() {
      if (schoolId) {
        const res = await schoolService.getModulesBySchoolId(schoolId);

        setModules(res?.data);
      }
    }
    fetchModule();
  }, [schoolId]);

  useEffect(() => {
    async function fetchAttendanceByDate() {
      if (eventDate && isTruthy === true) {
        const res = await visualizationService.getAttendanceForModuleByDate(
          eventDate,
          moduleId
        );
        res?.data?.length > 0 && setModuleAttendance(res?.data);
      }
    }
    fetchAttendanceByDate();
  }, [eventDate, moduleId, isTruthy, setModuleAttendance]);

  useEffect(() => {
    if (moduleId) {
      let module = modules.filter((val) => val?.id === moduleId);

      setIsTruthy(schoolData.some((val) => val?.id === module[0]?.school_id));
    }
  }, [modules, moduleId, schoolData]);

  //   //validate the form fields via formik library
  //   let validateSchema = yup.object().shape({
  //     food_officer_comment: yup.string().required(),
  //   });

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
            <ModuleLogger />
            <DateLogger />
            <div className='row '>
              <div className='col'>
                {" "}
                <SetSchool schoolData={schoolData} />
              </div>
              <div className='col'>
                {" "}
                <SetModule modules={modules} />
              </div>
              <div className='col'>
                {" "}
                <TextDate label='Session Date' name='event_date' />
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
