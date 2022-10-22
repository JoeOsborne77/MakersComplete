const cohort = {
  name: 'Sept2022',
  id: 747,
  names: ['Joe Osborne', 'Tom Allen', 'Miles Cragg', 'Bennedict Smith', 'Dave Thomson', 'Patricia Garcia Nieto']
};


const cohortDetails = () => {
  return `COHORT_ID: ${cohort.id} - COHORT_NAME: ${cohort.name} - NUMBER_OF_STUDENTS: ${cohort.names.length}`;
}

console.log(cohortDetails(cohort));
