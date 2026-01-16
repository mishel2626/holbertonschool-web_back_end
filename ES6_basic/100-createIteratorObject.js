export default function createIteratorObject(report) {
  return (function* () {
    for (const employees of Object.values(report.allEmployees)) {
      for (const employee of employees) {
        yield employee;
      }
    }
  })();
}