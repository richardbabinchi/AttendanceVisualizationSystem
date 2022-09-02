import React from "react";
import { Field, ErrorMessage } from "formik";
import { TextError } from ".";

export function SelectField(props) {
  return (
    <div className='mb-4'>
      <label htmlFor='exampleFormControlInput1' className='form-label'>
        {props.label}
      </label>
      <Field
        as={props?.fieldtype}
        name={props?.name}
        multi='true'
        className=' form-control form-control-sm'
      >
        <option value='green'>[{props.placeholder}]</option>

        {props?.value?.map((val) => (
          <option key={val?.id} value={val?.id}>
            {val?.name}
          </option>
        ))}
      </Field>
      <ErrorMessage name={props.name} component={TextError} />
    </div>
  );
}
