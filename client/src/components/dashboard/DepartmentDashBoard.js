import React, { useState } from "react";
import { DepartmentAnalysis, TrendAnalysis } from "../chart_analysis";
import {
  GetTrendAttendance,
  GetDepartmentAttendance,
  AttendanceModal,
} from "../shared/index";
import { visualizationService } from "../../_services/index";

export function DepartmentDashBoard() {
  let [isTruthy, setIsTruthy] = useState(false);
  let [userId, setUserId] = useState("");
  const [attendance, setAttendance] = useState([]);
  const [attendanceRecord, setAttendanceRecord] = useState([]);
  const [hideAttendanceClickView, setHideAttendanceClickView] = useState(false);

  const [showAttendanceTable, setShowAttendanceTable] = useState(false);
  const [trend, setTrend] = useState([]);

  let [courseType] = useState([]);

  const onClick = () => {
    setShowAttendanceTable(true);
  };

  async function computeStudentAttendance() {
    if (isTruthy) {
      courseType = [];
      attendanceRecord.forEach((val) => courseType.push(val?.type));

      const res = await visualizationService.computeStudentAttendance(
        attendanceRecord[0]?.user_id,
        courseType
      );
      setTrend(res?.data);
    }
  }

  return (
    <div className='row'>
      <div className='col-6 mb-4'>
        <div className='card'>
          <div className='card-header'>
            <GetDepartmentAttendance setAttendance={setAttendance} />
          </div>
          <div className='card-body'>
            <h5 className='card-title'> Department Attendance</h5>
            <DepartmentAnalysis attendance={attendance} />
          </div>
        </div>
      </div>
      <div className='col-6'>
        <div className='card'>
          <div className='card-header'>
            <GetTrendAttendance
              isTruthy={isTruthy}
              setIsTruthy={setIsTruthy}
              userId={userId}
              setUserId={setUserId}
              loadAttendance={true}
              setAttendance={setAttendanceRecord}
              setHideAttendanceClickView={setHideAttendanceClickView}
            />
            <div>
              <button
                type='button'
                className='btn btn-primary btn-sm m-4'
                onClick={computeStudentAttendance}
              >
                Report
              </button>
              {hideAttendanceClickView && (
                <button
                  type='button'
                  className='btn btn-primary btn-sm m-2'
                  onClick={onClick}
                >
                  View Attendance
                </button>
              )}
            </div>
          </div>
          <div className='card-body'>
            <TrendAnalysis attendance={trend} />
          </div>
        </div>
      </div>
      <AttendanceModal
        showAttendanceTable={showAttendanceTable}
        setShowAttendanceTable={setShowAttendanceTable}
        attendance={attendanceRecord}
      />
    </div>
  );
}
