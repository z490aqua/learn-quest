{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "oRoomChanger",
  "eventList": [
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":{"name":"oPlayer","path":"objects/oPlayer/oPlayer.yy",},"eventNum":0,"eventType":4,"isDnD":false,},
  ],
  "managed": true,
  "overriddenProperties": [],
  "parent": {
    "name": "Triggers",
    "path": "folders/Objects/Triggers.yy",
  },
  "parentObjectId": null,
  "persistent": false,
  "physicsAngularDamping": 0.1,
  "physicsDensity": 0.5,
  "physicsFriction": 0.2,
  "physicsGroup": 1,
  "physicsKinematic": false,
  "physicsLinearDamping": 0.1,
  "physicsObject": false,
  "physicsRestitution": 0.1,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsShapePoints": [],
  "physicsStartAwake": true,
  "properties": [
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"targetRoom","filters":[
        "GMRoom",
      ],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"-1","varType":5,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"targetSpawner","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"noone","varType":4,},
  ],
  "solid": false,
  "spriteId": {
    "name": "sRoomChanger",
    "path": "sprites/sRoomChanger/sRoomChanger.yy",
  },
  "spriteMaskId": null,
  "visible": false,
}