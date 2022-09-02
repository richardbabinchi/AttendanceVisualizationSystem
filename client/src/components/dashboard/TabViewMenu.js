import React, { useState } from "react"; //https://reactjs.org/docs/hooks-intro.html

import { TabView, TabPanel } from "primereact/tabview"; //PrimeReact is a rich set of open source native components for React https://www.primefaces.org/primereact/setup/import React, { useState } from "react";

import { chartData } from "../../helper";
import {
  StudentDashBoard,
  ModuleDashBoard,
  DepartmentDashBoard,
  TrendDashBoard,
} from "../dashboard";
export function TabViewMenu() {
  const [activeIndex, setActiveIndex] = useState(0);

  return (
    <React.Fragment>
      <div className='tabview-demo mt-4'>
        <div className='card'>
          <TabView
            activeIndex={activeIndex}
            onTabChange={(e) => setActiveIndex(e.index)}
          >
            <TabPanel header='Students'>
              <div className='row'>
                <StudentDashBoard />
              </div>
            </TabPanel>
            <TabPanel header='Modules'>
              <div className='row'>
                {/* <div className='col-md-4'>Students Dashboard</div> */}

                <ModuleDashBoard />
              </div>
            </TabPanel>
            <TabPanel header='Department'>
              <div className='row'>
                {/* <div className='col-md-4'>Students Dashboard</div> */}

                <DepartmentDashBoard />
              </div>
            </TabPanel>
            <TabPanel header='Trends'>
              <div className='row'>
                <TrendDashBoard />
              </div>
            </TabPanel>
          </TabView>
        </div>
      </div>
    </React.Fragment>
  );
}
