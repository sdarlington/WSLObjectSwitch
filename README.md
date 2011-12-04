README: WSLObjectSwitch
---------------------------

People coming from other languages often ask why Objective C does not have a "switch" statement that
works with objects. WSLObjectSwitch is a step in the right direction of fixing that gap.

    [WSLObjectSwitch switchOn:self.textBox.text
                 defaultBlock:^{ NSLog (@"Dee Fault"); }
                        cases:@"sausage", ^{ NSLog (@"Hello, sweetie."); },
                              @"test",    ^{ NSLog (@"A test"); }, nil
     ];

It basically works with any object that has a working "isEqual:" method. The default block is nil-able,
and there's a different signature without the parameter if you prefer.

The executed code is in a block, so if you want to change any variables, they need to be declared
with the "__block" modifier.

Licence
-------

    /*
     * Copyright 2011 Wandle Software Limited
     *
     * Licensed under the Apache License, Version 2.0 (the "License");
     * you may not use this file except in compliance with the License.
     * You may obtain a copy of the License at
     *
     * http://www.apache.org/licenses/LICENSE-2.0
     *
     * Unless required by applicable law or agreed to in writing, software
     * distributed under the License is distributed on an "AS IS" BASIS,
     * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
     * See the License for the specific language governing permissions and
     * limitations under the License.
     */