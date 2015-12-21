package controllers

import models.GalleryProperties._

import play.api._
import play.api.mvc._

class Application extends Controller {

  def main = Action {
    Ok(views.html.main("print/photo"))
  }

  def futility = Action {
    Ok(views.html.futility("futility"))
  }

  def infoloss = Action {
    Ok(views.html.gallery(infolossPageTitle, infolossSectionTitle, infolossBody,
      infolossImagePrefix, infolossNumImages))
  }

  def gradients = Action {
    Ok(views.html.gallery(gradientsPageTitle, gradientsSectionTitle, gradientsBody,
      gradientsImagePrefix, gradientsNumImages))
  }

  def solvethemall = Action {
    Ok(views.html.gallery(solvethemallPageTitle, solvethemallSectionTitle, solvethemallBody,
      solvethemallImagePrefix, solvethemallNumImages))
  }

}
