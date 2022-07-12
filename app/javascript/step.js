function step () {
  const submit = document.getElementById("step-submit")
  submit.addEventListener("click", (e) => {
    e.preventDefault();
    const step_form = document.getElementById("step-form");
    const formStepData = new FormData(step_form);
    const XHR = new XMLHttpRequest();
    XHR.open("POST", "/actives", true);
    XHR.responseType = "json";
    XHR.send(formStepData);
    XHR.onload = () => {
      const step_count =document.getElementById("step-sum");
      const formStep =document.getElementById("active-step");
      const item = XHR.response.step;
      step_count.innerHTML=`
        <div class="step-sum">
          ${item}
        </div>`;
    };
  }); 
};

window.addEventListener('load', step)