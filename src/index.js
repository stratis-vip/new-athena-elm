import './style.css'
import {Elm} from './Main.elm'
import "flyonui/flyonui"

function addElm(el) {
  Elm.Main.init ({node: el})
}

 const elmElement = document.createElement('div');
 const  athena = new Image();
 
 document.body.appendChild(elmElement);
 addElm(elmElement)
