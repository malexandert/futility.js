package controllers

import play.api._
import play.api.mvc._

class Application extends Controller {

  def futility = Action {
    Ok(views.html.futility("futility"))
  }

  def main = Action {
    Ok(views.html.main("art"))
  }

  def infoloss = Action {
    Ok(views.html.infoloss("information loss"))
  }

  def solvethemall = Action {
    Ok(views.html.solvethemall("solve them all"))
  }

}
