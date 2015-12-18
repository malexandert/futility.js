package controllers

import play.api._
import play.api.mvc._

class Application extends Controller {

  def processing = Action {
    Ok(views.html.processing("futility"))
  }

  def main = Action {
    Ok(views.html.main("art"))
  }

}
