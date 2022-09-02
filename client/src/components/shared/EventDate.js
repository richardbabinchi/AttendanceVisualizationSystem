import React, { useState, useEffect } from "react";
import { Formik, Form, useFormikContext } from "formik"; //https://formik.org/ //Formik is a small group of React components and hooks for building forms in React
import { TextDate } from "./_formcomponents";
import { visualizationService } from "../../_services/index";

export function EventDate(props) {
  const { setAttendance } = props;

  let [isSuccess] = useState(false);
  let [eventDate, setEventDate] = useState("");
  let [isError] = useState(false);

  const Logger = () => {
    const formik = useFormikContext();
    React.useEffect(() => {
      setEventDate(formik.values.event_date);
    }, [formik?.values?.event_date]);
    return null;
  };

  useEffect(() => {
    async function fetchAttendanceByDate() {
      if (eventDate) {
        const res = await visualizationService.getAttendanceByEventDate(
          eventDate
        );

        setAttendance(res?.data);
      }
    }
    fetchAttendanceByDate();
  }, [eventDate, setAttendance]);

  //validate the form fields via formik library
  //   let validateSchema = yup.object().shape({
  //     event_date: yup.date.required(),
  //   });

  return (
    <React.Fragment>
      <Formik
        enableReinitialize={false}
        initialValues={{
          event_date: "",
        }}
        // validationSchema={validateSchema}
      >
        {({ status, isSubmitting, values }) => (
          <Form>
            <Logger />
            <div className='row '>
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
