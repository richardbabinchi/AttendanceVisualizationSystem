import React, { useState, useEffect } from "react";
import { Formik, Form, useFormikContext } from "formik"; //https://formik.org/ //Formik is a small group of React components and hooks for building forms in React
import * as yup from "yup"; //https://www.npmjs.com/package/yup#api
import { SelectField } from "./_formcomponents";
import { schoolService, visualizationService } from "../../_services/index";
import HoC from "./HoC";

export function GetSchoolDepartment(props) {
  let { setSchoolData, schoolData } = HoC();
  const { setDepartment } = props;

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

  //validate the form fields via formik library
  let validateSchema = yup.object().shape({
    food_officer_comment: yup.string().required(),
  });

  return (
    <React.Fragment>
      <Formik
        enableReinitialize={false}
        initialValues={{}}
        validationSchema={validateSchema}
      >
        {({ status, isSubmitting, values }) => (
          <Form>
            <Logger />
            <div className='row '>
              <div className='col'>
                {" "}
                <SelectField
                  fieldtype='select'
                  label='School Department'
                  name='schoolId'
                  value={schoolData}
                  placeholder={"select school"}
                />
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
