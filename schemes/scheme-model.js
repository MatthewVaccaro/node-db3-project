const db = require("../data/config");

//Find
function find() {
  return db("*").from("schemes");
}
//FindById
function findById(id) {
  return db("*")
    .from("schemes")
    .where("id", id);
}

//FindSteps
function findSteps(id) {
  return db("*")
    .from("steps")
    .where("scheme_id", id);
}
//Add
function add(scheme) {
  return db.insert(scheme).into("schemes");
}

//Update
function update(changes, id) {
  return db
    .update(changes)
    .into("schemes")
    .where("id", id)
    .then(updated => {
      return db("*")
        .from("schemes")
        .where("id", id);
    });
}
//Remove
function remove(id) {
  return db("schemes")
    .where("id", id)
    .del();
}

module.exports = {
  find,
  findById,
  findSteps,
  add,
  update,
  remove
};
