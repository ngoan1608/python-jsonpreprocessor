::  Copyright 2020-2022 Robert Bosch Car Multimedia GmbH
::
::  Licensed under the Apache License, Version 2.0 (the "License");
::  you may not use this file except in compliance with the License.
::  You may obtain a copy of the License at
::
::      http://www.apache.org/licenses/LICENSE-2.0
::
::  Unless required by applicable law or agreed to in writing, software
::  distributed under the License is distributed on an "AS IS" BASIS,
::  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
::  See the License for the specific language governing permissions and
::  limitations under the License.

:: Executes JsonPreprocessor acceptance test.
@ECHO OFF
set current_dir=%CD%
cd %~dp0\jsonpreprocessor
"%RobotPythonPath%"\python -m pytest test_jsonpreprocessor.py --junit-xml=..\logs\windows_test_jsonpreprocessor.xml && (
    echo Run JsonPreprocessor acceptance test sussessful!
) || (
    echo Run JsonPreprocessor acceptance test failed!
)
cd %current_dir%