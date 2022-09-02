import React, { useState, useEffect } from "react"; //https://reactjs.org/docs/hooks-intro.html

import { Chart } from "primereact/chart"; //PrimeReact is a rich set of open source native components for React https://www.primefaces.org/primereact/setup/
import HoC from "../shared/HoC";

export function TrendAnalysis(props) {
  let { data, setdata } = HoC();
  const { attendance } = props;

  const [chartData, setChartData] = useState({
    labels: "" || "",
    datasets: [
      {
        label: "" || "",
        data: "" || "",
        // fill: false,
        // borderColor: "#42A5F5",
        // tension: 0.4,
        backgroundColor: "#42A5F5",
      },

      {
        label: "" || "",
        data: "" || "",
        // fill: false,
        // borderColor: "#FFA726",
        // tension: 0.4,
        backgroundColor: "#FFA726",
      },
    ],
  });

  // on component mount / onload set states
  useEffect(() => {
    setdata(attendance);
  }, [setdata, attendance]);

  useEffect(() => {
    let label = [];
    let avg_corequisite = [];
    let avg_elective = [];
    data.map((val) => {
      return label.push(val?.user_name);
    });

    data.forEach((val) => {
      avg_corequisite.push(parseInt(val?.avg_corequisite));
      avg_elective.push(parseInt(val?.avg_elective));
    });

    setChartData((prevData) => ({
      ...prevData,
      labels: label,
      datasets: [
        {
          label: "avg_corequisite",
          data: avg_corequisite,
          backgroundColor: "#42A5F5",
          // borderColor: "#FFA726",
        },

        {
          label: "avg_elective",
          data: avg_elective,
          backgroundColor: "#FFA726",
          // borderColor: "#42A5F5",
        },
      ],
    }));
  }, [data, attendance]);

  let basicOptions = {
    maintainAspectRatio: false,
    aspectRatio: 0.6,
    plugins: {
      legend: {
        labels: {
          color: "#495057",
        },
      },
    },
    scales: {
      x: {
        ticks: {
          color: "#495057",
        },
        grid: {
          color: "#ebedef",
        },
      },
      y: {
        ticks: {
          color: "#495057",
        },
        grid: {
          color: "#ebedef",
        },
      },
    },
  };
  return (
    <div className='card flex justify-content-center'>
      <Chart
        type='bar'
        data={chartData}
        options={basicOptions}
        style={{ position: "relative", width: "100%", height: "300px" }}
      />
    </div>
  );
}
