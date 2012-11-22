// Auto-generated from twitterclient.html.
// DO NOT EDIT.

library twitterclient_html;

import 'dart:html' as autogenerated;
import 'package:web_components/web_components.dart' as autogenerated;

import 'dart:html';

import 'dart:json';

import 'dart:math';


// Original code
String inputSearchTerm = "";
String activeSearchTerm = "";
List<String> searchTerms = new List();
List<Tweet> tweets = new List();

TwitterService _twitterService = new JSONTwitterAPIService(); // new StubTwitterService(); 

// MAIN

void main() {}

// EVENT HANDLERS

searchButton_clickHandler(e) {
  inputSearchTerm = inputSearchTerm.trim();
  if (inputSearchTerm.length > 0) {
    search(inputSearchTerm);
    inputSearchTerm = "";
  }
}

searchTerm_clickHandler(MouseEvent e) {
  var node = e.toElement;
  if (node is AnchorElement) {
    node = node.parent;
  }
  search(node.text.trim());
}

removeSearchTerm_clickHandler(MouseEvent event) {
  var searchTerm = event.toElement.parent.parent.text.trim();
  var index = searchTerms.indexOf(searchTerm);
  searchTerms.removeAt(index);
  if (searchTerm == activeSearchTerm) {
    activeSearchTerm = "";
  }
}

search(String searchTerm) {
  print("Search for '$searchTerm'");
  activeSearchTerm = searchTerm;
  
  if (!searchTerms.contains(searchTerm)) {
    searchTerms.add(activeSearchTerm);
  }
    
  _twitterService.search(searchTerm).then((List<Tweet> result) {
    tweets = result;
  });
}

// CLASSES

class Tweet {
  String username;
  String text;
  String createdAt;
  
  Tweet(this.username, this.text, this.createdAt);
}

abstract class TwitterService{
  Future<List<Tweet>> search(String searchTerm);
}

class StubTwitterService extends TwitterService {
  Future<List<Tweet>> search(String searchTerm){
    List<Tweet> tweets = new List();
    Random random = new Random();
    int numItems = random.nextInt(20);
    for (int i = 0; i<numItems; i++) {
      tweets.add(new Tweet("user $i", "Tweet about $searchTerm $i", "2012-11-20 $i"));
    }
    print("Created ${tweets.length} random tweets");
    return new Future.immediate(tweets);
  }
}

class JSONTwitterAPIService extends TwitterService {
  Function handler;
  
  Future<List<Tweet>> search(String searchTerm) {
    var completer = new Completer();
    
    var script = new Element.tag("script");
    script.src = "http://search.twitter.com/search.json?q=$activeSearchTerm&callback=jsonpCallback";
    document.body.elements.add(script);
    
    handler = (MessageEvent e) {
      window.on.message.remove(handler);
      
      var searchResult = JSON.parse(e.data);
      var tweets = new List<Tweet>();
      
      for (Map t in searchResult["results"]) {
        tweets.add(new Tweet(t["from_user_name"], t["text"], t["created_at"]));
      }
      
      print("Received ${tweets.length} tweets from server");
      completer.complete(tweets);
    };
    
    window.on.message.add(handler);
    
    return completer.future;
  }
}


// Additional generated code
/** Create the views and bind them to models. */
void init_autogenerated() {
  // Create view.
  var _root = new autogenerated.DocumentFragment.html(_INITIAL_PAGE);

  autogenerated.InputElement _searchInput;
  
  autogenerated.EventListener _listener_searchInput_input_1;
  
  autogenerated.EventListener _listener_searchInput_submit_2;
  
  List<autogenerated.WatcherDisposer> _stoppers3;
  
  autogenerated.ButtonElement _searchButton;
  
  autogenerated.EventListener _listener_searchButton_click_4;
  
  autogenerated.UListElement __e6;
  
  List<Function> _removeChild__e6 = [];
  
  autogenerated.DivElement __e20;
  
  autogenerated.HeadingElement __e10;
  
  var _binding7;
  
  var _binding8;
  
  var _binding9;
  
  autogenerated.TableElement __e19;
  
  autogenerated.TableSectionElement __e18;
  
  List<Function> _removeChild__e18 = [];
  


  // Initialize fields.
  _searchInput = _root.query('#searchInput');
  _stoppers3 = [];
  _searchButton = _root.query('#searchButton');
  __e6 = _root.query('#__e-6');
  __e20 = _root.query('#__e-20');
  __e10 = __e20.query('#__e-10');
  _binding7 = autogenerated.nodeForBinding(tweets.length);
  _binding8 = autogenerated.nodeForBinding(tweets.length == 1 ? 'tweet' : 'tweets');
  _binding9 = autogenerated.nodeForBinding(activeSearchTerm);
  __e10.nodes.add(new autogenerated.Text('\''));
  __e10.nodes.add(_binding7);
  __e10.nodes.add(new autogenerated.Text('\' '));
  __e10.nodes.add(_binding8);
  __e10.nodes.add(new autogenerated.Text(' about \''));
  __e10.nodes.add(_binding9);
  __e10.nodes.add(new autogenerated.Text('\''));
  __e19 = __e20.query('#__e-19');
  __e18 = __e19.query('#__e-18');
  

  // Attach model to views.
  _listener_searchInput_input_1 = (__e) {
    inputSearchTerm = _searchInput.value;
    autogenerated.dispatch();
  };
  _searchInput.on.input.add(_listener_searchInput_input_1);
  
  _listener_searchInput_submit_2 = (__e) {
    clickHandler(__e);
    autogenerated.dispatch();
  };
  _searchInput.on.submit.add(_listener_searchInput_submit_2);
  
  _stoppers3.add(autogenerated.watchAndInvoke(() => inputSearchTerm, (__e) { _searchInput.value = __e.newValue; }));
  
  _listener_searchButton_click_4 = (__e) {
    searchButton_clickHandler(__e);
    autogenerated.dispatch();
  };
  _searchButton.on.click.add(_listener_searchButton_click_4);
  
  _stoppers3.add(autogenerated.watchAndInvoke(() => inputSearchTerm == '', (__e) { _searchButton.disabled = __e.newValue; }));
  
  _stoppers3.add(autogenerated.watchAndInvoke(() => searchTerms, (_) {
    for (var remover in _removeChild__e6) remover();
    _removeChild__e6.clear();
    
    __e6.nodes.clear();
    
    for (var searchTerm in searchTerms) {
      
      autogenerated.LIElement __e5;
      List<autogenerated.WatcherDisposer> _stoppers5_1;
      autogenerated.AnchorElement __e4;
      autogenerated.EventListener _listener__e4_click_6_2;
      autogenerated.DivElement __e3;
      var _binding0;
      autogenerated.DivElement __e2;
      autogenerated.Element __e1;
      autogenerated.EventListener _listener__e1_click_7_3;
      
      __e5 = new autogenerated.Element.html('<li class="">\n		        <a href="#" id="__e-4">\n		          <div id="__e-3"></div>\n		        </a>\n		      </li>');
      __e4 = __e5.query('#__e-4');
      __e3 = __e4.query('#__e-3');
      _binding0 = autogenerated.nodeForBinding(searchTerm);
      __e2 = new autogenerated.Element.html('<div style="float: right">\n		              <i class="icon-remove" id="__e-1"></i>\n		            </div>');
      __e1 = __e2.query('#__e-1');
      __e3.nodes.add(_binding0);
      __e3.nodes.add(new autogenerated.Text('\n		            '));
      __e3.nodes.add(__e2);
      _stoppers5_1 = [];
      
      __e6.nodes.addAll([__e5]);
      
      _stoppers5_1.add(autogenerated.bindCssClasses(__e5, () => searchTerm == activeSearchTerm ? 'active' : ''));
      _listener__e4_click_6_2 = (__e) {
        searchTerm_clickHandler(__e);
        autogenerated.dispatch();
      };
      __e4.on.click.add(_listener__e4_click_6_2);
      
      _stoppers5_1.add(autogenerated.watchAndInvoke(() => searchTerm, (__e) { _binding0 = autogenerated.updateBinding(__e.newValue, _binding0); }));
      _listener__e1_click_7_3 = (__e) {
        removeSearchTerm_clickHandler(__e);
        autogenerated.dispatch();
      };
      __e1.on.click.add(_listener__e1_click_7_3);
      
      _removeChild__e6.add(() {
        
        (_stoppers5_1..forEach((s) => s())).clear();
        __e5 = null;
        __e4.on.click.remove(_listener__e4_click_6_2);
        _listener__e4_click_6_2 = null;
        
        __e4 = null;
        __e3 = null;
        _binding0 = null;
        __e2 = null;
        __e1.on.click.remove(_listener__e1_click_7_3);
        _listener__e1_click_7_3 = null;
        
        __e1 = null;
        
      });
    }
  }));
  
  _stoppers3.add(autogenerated.watchAndInvoke(() => activeSearchTerm == '', (__e) { __e20.hidden = __e.newValue; }));
  
  _stoppers3.add(autogenerated.watchAndInvoke(() => tweets.length, (__e) { _binding7 = autogenerated.updateBinding(__e.newValue, _binding7); }));
  
  _stoppers3.add(autogenerated.watchAndInvoke(() => tweets.length == 1 ? 'tweet' : 'tweets', (__e) { _binding8 = autogenerated.updateBinding(__e.newValue, _binding8); }));
  
  _stoppers3.add(autogenerated.watchAndInvoke(() => activeSearchTerm, (__e) { _binding9 = autogenerated.updateBinding(__e.newValue, _binding9); }));
  
  _stoppers3.add(autogenerated.watchAndInvoke(() => tweets.length == 0, (__e) { __e19.hidden = __e.newValue; }));
  
  _stoppers3.add(autogenerated.watchAndInvoke(() => tweets, (_) {
    for (var remover in _removeChild__e18) remover();
    _removeChild__e18.clear();
    
    __e18.nodes.clear();
    
    for (var tweet in tweets) {
      
      autogenerated.TableRowElement __e17;
      autogenerated.TableCellElement __e12;
      var _binding11;
      List<autogenerated.WatcherDisposer> _stoppers8_1;
      autogenerated.TableCellElement __e14;
      var _binding13;
      autogenerated.TableCellElement __e16;
      var _binding15;
      
      __e17 = new autogenerated.Element.html('<tr>\n		          <td id="__e-12"></td>\n		          <td id="__e-14"></td>\n		          <td id="__e-16"></td>\n		        </tr>');
      __e12 = __e17.query('#__e-12');
      _binding11 = autogenerated.nodeForBinding(tweet.username);
      _stoppers8_1 = [];
      __e12.nodes.add(_binding11);
      __e14 = __e17.query('#__e-14');
      _binding13 = autogenerated.nodeForBinding(tweet.text);
      __e14.nodes.add(_binding13);
      __e16 = __e17.query('#__e-16');
      _binding15 = autogenerated.nodeForBinding(tweet.createdAt);
      __e16.nodes.add(_binding15);
      
      __e18.nodes.addAll([__e17]);
      
      _stoppers8_1.add(autogenerated.watchAndInvoke(() => tweet.username, (__e) { _binding11 = autogenerated.updateBinding(__e.newValue, _binding11); }));
      _stoppers8_1.add(autogenerated.watchAndInvoke(() => tweet.text, (__e) { _binding13 = autogenerated.updateBinding(__e.newValue, _binding13); }));
      _stoppers8_1.add(autogenerated.watchAndInvoke(() => tweet.createdAt, (__e) { _binding15 = autogenerated.updateBinding(__e.newValue, _binding15); }));
      
      _removeChild__e18.add(() {
        
        __e17 = null;
        __e12 = null;
        (_stoppers8_1..forEach((s) => s())).clear();
        _binding11 = null;
        __e14 = null;
        _binding13 = null;
        __e16 = null;
        _binding15 = null;
        
      });
    }
  }));
  


  // Attach view to the document.
  autogenerated.document.body.nodes.add(_root);
  _root = autogenerated.document.body;
}

final String _INITIAL_PAGE = '''

    
	  <div class="mainView">
	
		  <div class="sidePanel">
		    <h3>Twitter Search</h3>
		    <div class="form-horizontal">
		      <input id="searchInput" type="text" placeholder="Enter keyword">
		      <button id="searchButton" class="btn">
		        <i class="icon-search"></i>
		      </button>
		    </div>
		    <hr>
		    <ul class="nav nav-pills nav-stacked" id="__e-6"></ul>
		  </div>
		
		  <div class="resultsPanel" id="__e-20">
		    <h3 style="text-align: center" id="__e-10"></h3>
		    <br>
		    <table class="table table-bordered table-striped" id="__e-19">
		      <thead>
		        <tr><th>Author</th>
		        <th>Message</th>
		        <th>Date</th>
		      </tr></thead>
		      <tbody id="__e-18"></tbody>
		    </table>
		  </div>
	
	  </div>

    
    <script src="https://dart.googlecode.com/svn/branches/bleeding_edge/dart/client/dart.js"></script>
  

''';