// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName

import { application } from "./application"

import DragController from "./drag_controller"
application.register("drag", DragController)


import DraggerController from "./dragger_controller"
application.register("dragger", DraggerController)



import BebopController from "./bebop_controller"
application.register("bebop", BebopController)

import PickController from "./pick_controller"
application.register("pick", PickController)

import LinkerController from "./linker_controller"
application.register("linker", LinkerController)

import EmbedderController from "./embedder_controller"
application.register("embedder", EmbedderController)
