const controller = require("../controllers/user.controller");
const express = require("express");
const router = express.Router();


router.post("/register", controller.registerUser);


router.post("/login", controller.login); 

router.get("/:email", controller.getUserByEmail); 

router.put("/", controller.updateUser);

router.delete("/:id", controller.deleteUser);

router.post("/topUp", controller.topUpUserBalance);

module.exports = router;
