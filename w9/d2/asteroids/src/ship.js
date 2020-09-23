const Util = require("./utils.js");
const MovingObject = require("./moving_object.js");
const Bullet = require("./bullet.js");

function Ship(options) {
    const RADIUS = 20;
    const COLOR = "blue";
    MovingObject.call(this, {
        pos: options.pos,
        vel: [0,0], // Util.randomVec(0),
        radius: RADIUS,
        color: COLOR,
        game: options.game
    });

}
Util.inherits(Ship, MovingObject);

Ship.prototype.relocate = function(){
    this.pos = this.game.randomPosition();
    this.vel = [0,0];
}
Ship.prototype.power = function(impulse){
    this.vel[0] += impulse[0];
    this.vel[1] += impulse[1];
}
Ship.prototype.fireBullet = function(){
    return new Bullet({
        pos: this.pos,
        vel: this.vel
    });
}

module.exports = Ship;