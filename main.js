import './assets/style.css'
import Main from './src/Main.elm'
import 'flyonui/dist/accordion.js';

const app = Main.init({
  node: document.getElementById('app')
})
