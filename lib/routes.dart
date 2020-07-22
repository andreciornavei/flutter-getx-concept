import 'package:get/route_manager.dart';

import 'pages/cart/index.dart';
import 'pages/home/index.dart';
import 'pages/product/index.dart';


// In this piece of code, we only separeted the responsability
// to config the routes of our application where it returns an
// array of GetPages, this Widget is responsible to define our
// named routes and handle the Page who going to be rendered

// As a special resource for me, we has variable tokens implementations
// like in the second Page "products/:id" where we have a dynamic variable
// representing the id of the product, it is very similar to web routes
// and shoud be used with the same purpose, taking the example: 

// Imagine that you have an list of products where this list just have
// the necessary data to prevent and overfatch (fetch more data than necessary),
// so if you want to select some product to see more data about it, you cannot see
// anithing more if pass the current data to next page, so in this case, you can pass
// only the id of product, with the purpose of use this id to fetch more data from yours API
// for example and consume only data you realy want to.

routes() => [
  GetPage(name: "/", page: () => Home()),
  GetPage(name: "products/:id", page: () => Product()),
  GetPage(name: "/cart", page: () => Cart()),
];