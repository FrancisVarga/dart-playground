// Auto-generated from hbox.html.
// DO NOT EDIT.

library x_hbox;

import 'dart:html' as autogenerated_html;
import 'dart:web_audio' as autogenerated_audio;
import 'dart:svg' as autogenerated_svg;
import 'package:web_ui/web_ui.dart' as autogenerated;

import 'package:web_ui/web_ui.dart';

import 'dart:html';

class HBox extends WebComponent {
  
  /** Autogenerated from the template. */
  
  /**
  * Shadow root for this component. We use 'var' to allow simulating shadow DOM
  * on browsers that don't support this feature.
  */
  var _root;
  
  HBox.forElement(e) : super.forElement(e);
  
  void created_autogenerated() {
    _root = createShadowRoot();
    
    _root.innerHtml = '''
    
    <div></div>
    ''';
    
  }
  
  void inserted_autogenerated() {
    
  }
  
  void removed_autogenerated() {
    _root = null;
    
  }
  
  void composeChildren() {
    super.composeChildren();
    if (_root is! autogenerated_html.ShadowRoot) _root = this;
  }
  
  /** Original code from the component. */
  
  String padding = "5";
  String gap = "";
  
  List<Element> _e;
  
  created() {
    _e = new List<Element>.from(elements);
  }
  
  inserted() {
    var div = elements[0];
    
    applyStyleFromAttribute(div, "padding", true);
    applyStyleFromAttribute(div, "border-style");
    applyStyleFromAttribute(div, "border-color");
    applyStyleFromAttribute(div, "border-width", true);
    
    var gap;
    if (attributes["gap"] != null) {
      gap = attributes["gap"];
    }
    
    for (var i = 0; i<_e.length; i++) {
      DivElement divElement = new DivElement();
      divElement.style.display = "inline-block";
      if (gap != null && i > 0) {
        divElement.style.marginLeft = "${gap}px";
      }
      divElement.append(_e[i]);
      div.append(divElement);
    }
  }
  
  applyStyleFromAttribute(Element element, String name, [bool inPixels = false]) {
    if (attributes[name] != null) {
      var value = attributes[name];
      if (inPixels) {
        value = "${value}px";
      }
      element.style.setProperty(name, value);
    }
  }
}

