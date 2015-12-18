package controllers

import play.api._
import play.api.mvc._

class Application extends Controller {

  def processing = Action {
    Ok(views.html.processing("Demo Processing.Js Page!"))
  }

  def main = Action {
    Ok(views.html.main("futility"))
  }

}
