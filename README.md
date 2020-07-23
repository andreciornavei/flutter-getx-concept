# Flutter GetX Concepts

🚀 A Flutter project application that make use of the state manager GetX.

---

## Overview

This project was created with the purpose to apply most of concepts implementeds by the state manager [GetX][getx_package]. Using a small flux of screens to simulate a shopping cart, this project implements a folder architeture that make sense for placing all the widgets tree from a screen to have secure access of its parent controllers.

In general, this project is part of a studies to undestand the best architeture patter to implement in flutter projects that works for me and i hope to works for you too.

---

## The project architecture

For this project, i focused to solve the problem using only the GetX resources and following the below structure i feel good about the results,  the simplicity to understand the project and its rules.

```yaml
- /models
# This folder was used to place all the possible entities 
# who has the responsability to keep data making use of 
# Rx (An observer for variable in GetX). Even having other 
# options, i decided tu use Rx for every variable as a pattern. 

- /pages
# This is the folder who we have to get more attention and
# careful to manage the structure becaouse GetX can be used in 
# many different ways, and a wrong way maybe can broken you app 
# in the future, so because that, i defined some rules:
    - /page_name
        # RULE 1: For all pages, we have to create a folder
        # named with out page name where we can create the 
        # appropriate files.
        - index.dart
        # RULE 2: Every page must to have an index.dart as a 
        # unique point of access responsible for initialize this 
        # page; also, this file must start with a GetBuilder 
        # component, who will initialize our controller and 
        # provide it for all the widget childrens on the tree 
        # of page.
        - controller.dart
        # RULE 3: Every page, in most of cases, will need to
        # implement a controller to take care about some 
        # particular data and functions for this page. How this 
        # controller is initialized in a GetBuilder on index.
        # dart, it only will be available and alive while this 
        # page is in use, for any other case, this controller 
        # will not be available. 
        - /widgets        
        # RULE 4: How our controller only will be available 
        # while page is instanciated, any widget placed in this 
        # folder can make use of Get.find(PageNameController) 
        # and access its data and functions. Because that, all 
        # the widgets placed here must to have a direct 
        # relationship with the page and cannot be moved to 
        # other folders in any circunstances, if it happens, the 
        # code will not break for IDE or compilations, but 
        # probably you will have problems in runtime because it 
        # widget will try to use a controllar that could be 
        # unavailable.

- /utils
# Used for generic purposes the utils implements functions 
# to be used in the most parts of our project without 
# dependencies of other files.

- /widgets
# Called for many peoples of `shared` or `common`, i decided
# to call this folder of `widgets` because only shared widgets 
# is placed here, and also, this widgets cannot depend of other 
# files to keep working anywhere.

- controller.dart
# This file is a global controller who take care about some 
# global data and functions, can be used by any widget on the 
# project just making use of Get.find(AppController) in any 
# widget who needs to access this data or functions. It is 
# possible because this controller is initialized on main.dart 
# and teorycally, never should be disposed because main.dart 
# represents our instanced application.

- main.dart
# This file is the point of start of application, it means that 
# if it dispose, the app should closes too. In general, this 
# file has the responsability to initialize the GetX context, 
# start our AppController for global purposes and implement all 
# the route screens to allow navigations. Also, to initialize 
# the AppController in this file, i make use of 
# Get.put(AppController()) because the use of named_routes in 
# the GetMaterialApp does not instance any Widget direcly, 
# therefore, it cannot be used with GetBuild.

- routes.dart
# For this project, i decided to make use of named routed 
# because GetX implements some intersting things with it, and 
# the most interting resource is the possibility to pass 
# arguments over the route like is made with web projects. In 
# general this is very good for a clear understood of the pages 
# structure and any page who implements this arguments can 
# access it making use of Get.parameters["argument_name"]. Well 
# this file has the only responsability to map all the pages of 
# our application and return an Array for out main.dart.
```

---

[![License: MIT](https://img.shields.io/badge/license-MIT-purple.svg)](https://github.com/andreciornavei/flutter-getx-concept/blob/master/LICENSE)

Copyright (c) 2020 André Ciornavei

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

[getx_package]: https://pub.dev/packages/get
