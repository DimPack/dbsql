console.log("async/await");

async function test1() {
  const pr = Promise.reject("error");
  return pr;
}

// const t1 = test1();

// console.log(t1);
// t1.then((res) => console.log(res));

const load1 = () =>
  fetch("https://randomuser.me/api")
    .then((res) => res.json())
    .then((data) => console.log(data));

//await не можна використовати за межами async
async function load2() {
    try {
        const res = await fetch("https://randomuser.me/api");
        const data = await res.json();
        return data;
    } catch (error) {
        console.log(error);
    }

}

async function showData() {
    try {
        const data = await load2();
        console.log(data.results.at(0).email);
    } catch (error) {
        console.log(error);
    }
}
showData()
