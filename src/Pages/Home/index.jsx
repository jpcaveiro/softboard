import React from "react";

import Navigationbar from "../Components/Navigationbar";
import ListExercises from "../Components/ListExercises";

export default function Home() {
  return (
    <>
      <div className="background">
        <Navigationbar />
        <ListExercises />
      </div>
    </>
  );
}
