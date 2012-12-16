// Auto-generated from bootstrap_components.html.
// DO NOT EDIT.

library bootstrap_components_html;

import 'dart:html' as autogenerated_html;
import 'dart:web_audio' as autogenerated_audio;
import 'dart:svg' as autogenerated_svg;
import 'package:web_ui/web_ui.dart' as autogenerated;

import 'dart:html';

import 'dart:math';

import 'button.html.dart';
import 'progressbar.html.dart';
import 'hbox.html.dart';


// Original code
String progressBarValue = "50";
Random _random = new Random();

void main() {

}

clickHandler() {
  progressBarValue = _random.nextInt(100).toString();
}

// Additional generated code
/** Create the views and bind them to models. */
void init_autogenerated() {
  var _root = autogenerated_html.document.body;
  autogenerated_html.UnknownElement __e0;
  
  autogenerated_html.UnknownElement __e1;
  
  autogenerated_html.InputElement __e2;
  
  autogenerated_html.EventListener __listener__e2_input_1;
  
  List<autogenerated.WatcherDisposer> __stoppers2;
  
  autogenerated_html.UnknownElement __e3;
  
  autogenerated_html.EventListener __listener__e3_click_3;
  
  autogenerated_html.UnknownElement __e4;
  
  autogenerated_html.UnknownElement __e5;
  
  autogenerated_html.UnknownElement __e6;
  
  autogenerated_html.UnknownElement __e12;
  
  autogenerated_html.UnknownElement __e7;
  
  autogenerated_html.UnknownElement __e8;
  
  autogenerated_html.UnknownElement __e9;
  
  autogenerated_html.UnknownElement __e10;
  
  autogenerated_html.UnknownElement __e11;
  


  // Initialize fields.
  __e0 = _root.query('#__e-0');
  new Button.forElement(__e0)
  ..created_autogenerated()
  ..created()
  ..composeChildren();
  __e1 = _root.query('#__e-1');
  new Button.forElement(__e1)
  ..created_autogenerated()
  ..created()
  ..composeChildren();
  __e2 = _root.query('#__e-2');
  __stoppers2 = [];
  __e3 = _root.query('#__e-3');
  new Button.forElement(__e3)
  ..created_autogenerated()
  ..created()
  ..composeChildren();
  __e4 = _root.query('#__e-4');
  new ProgressBar.forElement(__e4)
  ..created_autogenerated()
  ..created()
  ..composeChildren();
  __e5 = _root.query('#__e-5');
  new ProgressBar.forElement(__e5)
  ..created_autogenerated()
  ..created()
  ..composeChildren();
  __e6 = _root.query('#__e-6');
  new ProgressBar.forElement(__e6)
  ..created_autogenerated()
  ..created()
  ..composeChildren();
  __e12 = _root.query('#__e-12');
  __e7 = __e12.query('#__e-7');
  new Button.forElement(__e7)
  ..created_autogenerated()
  ..created()
  ..composeChildren();
  __e8 = __e12.query('#__e-8');
  new Button.forElement(__e8)
  ..created_autogenerated()
  ..created()
  ..composeChildren();
  __e9 = __e12.query('#__e-9');
  new Button.forElement(__e9)
  ..created_autogenerated()
  ..created()
  ..composeChildren();
  __e10 = __e12.query('#__e-10');
  new Button.forElement(__e10)
  ..created_autogenerated()
  ..created()
  ..composeChildren();
  __e11 = __e12.query('#__e-11');
  new Button.forElement(__e11)
  ..created_autogenerated()
  ..created()
  ..composeChildren();
  new HBox.forElement(__e12)
  ..created_autogenerated()
  ..created()
  ..composeChildren();
  

  // Attach model to views.
  __e0.xtag..inserted()
  
  ..inserted_autogenerated();
  
  __e1.xtag..inserted()
  
  ..inserted_autogenerated();
  
  __listener__e2_input_1 = ($event) {
    progressBarValue = __e2.value;
    autogenerated.dispatch();
  };
  __e2.on.input.add(__listener__e2_input_1);
  
  __stoppers2.add(autogenerated.watchAndInvoke(() => progressBarValue, (__e) { __e2.value = __e.newValue; }));
  
  __listener__e3_click_3 = ($event) {
    clickHandler();
    autogenerated.dispatch();
  };
  __e3.on.click.add(__listener__e3_click_3);
  
  __e3.xtag..inserted()
  
  ..inserted_autogenerated();
  
  __stoppers2.add(autogenerated.watchAndInvoke(() => progressBarValue, (__e) { __e4.xtag.value = __e.newValue; }));
  
  __e4.xtag..inserted()
  
  ..inserted_autogenerated();
  
  __stoppers2.add(autogenerated.watchAndInvoke(() => progressBarValue, (__e) { __e5.xtag.value = __e.newValue; }));
  
  __e5.xtag..inserted()
  
  ..inserted_autogenerated();
  
  __stoppers2.add(autogenerated.watchAndInvoke(() => progressBarValue, (__e) { __e6.xtag.value = __e.newValue; }));
  
  __e6.xtag..inserted()
  
  ..inserted_autogenerated();
  
  __e12.xtag..inserted()
  
  ..inserted_autogenerated();
  
  __e7.xtag..inserted()
  
  ..inserted_autogenerated();
  
  __e8.xtag..inserted()
  
  ..inserted_autogenerated();
  
  __e9.xtag..inserted()
  
  ..inserted_autogenerated();
  
  __e10.xtag..inserted()
  
  ..inserted_autogenerated();
  
  __e11.xtag..inserted()
  
  ..inserted_autogenerated();
  

}
