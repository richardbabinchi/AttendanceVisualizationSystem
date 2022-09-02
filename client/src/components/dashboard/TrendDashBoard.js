import React, { useState, useEffect } from "react";
import { AttendanceTimeSeries } from "../chart_analysis";
import { GetTrendAttendance } from "../shared/index";
import { visualizationService } from "../../_services/index";

export function TrendDashBoard() {
  let [isTruthy, setIsTruthy] = useState(false);
  let [userId, setUserId] = useState("");
  const [trend, setTrend] = useState([]);

  useEffect(() => {
    async function computeStudentAttendance() {
      if (isTruthy) {
        const res =
          await visualizationService.computeStudentAttendanceTimeSeries(userId);

        setTrend(res?.data);
      }
    }
    computeStudentAttendance();
  }, [isTruthy, userId]);

  return (
    <React.Fragment>
      <div className='row'>
        <div className='col-12'>
          <div className='card'>
            <div className='card-header'>
              <GetTrendAttendance
                isTruthy={isTruthy}
                userId={userId}
                setUserId={setUserId}
                setIsTruthy={setIsTruthy}
                loadAttendance={false}
              />
            </div>
            <div className='card-body'>
              <h5 className='card-title'>Course Module Rankings</h5>
              <AttendanceTimeSeries trend={trend} />
            </div>
          </div>
        </div>
      </div>
    </React.Fragment>
  );
}
