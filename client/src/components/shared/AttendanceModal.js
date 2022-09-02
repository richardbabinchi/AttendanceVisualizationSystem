import React from "react";
import { Modal } from "react-bootstrap"; //https://react-bootstrap.github.io/components/modal/
import { AttendanceTable } from "../shared/index";

export function AttendanceModal(props) {
  let { showAttendanceTable, setShowAttendanceTable, attendance } = props;
  const handleClose = () => {
    setShowAttendanceTable(false);
  };
  return (
    <React.Fragment>
      <>
        <Modal
          contentClassName='modal-height'
          size='lg'
          aria-labelledby='contained-modal-title-vcenter'
          //   centered
          show={showAttendanceTable}
          onHide={handleClose}
        >
          <Modal.Header closeButton>
            <h6>Attendance Record</h6>
          </Modal.Header>
          <Modal.Body>
            <AttendanceTable attendance={attendance} />
          </Modal.Body>
        </Modal>
      </>
    </React.Fragment>
  );
}
