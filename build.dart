#!/usr/bin/env dart
// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:polymer/builder.dart';

void main(args) {
  List<String> entryPoints = [
           'web/auto_complete/index.html',
           'web/automatic_node_finding/index.html',
           'web/bind_component_field_to_model_field/index.html',
           'web/bind_number_to_text_field_with_filter/index.html',
           'web/bind_to_a_map/index.html',
           'web/bind_to_checkbox/index.html',
           'web/bind_to_input_text_field/index.html',
           'web/bind_to_radio_buttons/index.html',
           'web/bind_to_select_field/index.html',
           'web/bind_to_textarea/index.html',
           'web/binding_syntax_examples/index.html',
           'web/call_method_on_custom_element/index.html',
           'web/click_counter/index.html',
           'web/custom_element_insert_into_light_dom/index.html',
           'web/custom_element_that_contains_other_tags/index.html',
           'web/custom_element_that_selects_children_tags/index.html',
           'web/custom_element_with_bootstrap_css/index.html',
           'web/custom_element_with_custom_attr_with_literal_value/index.html',
           'web/custom_element_with_custom_attribute/index.html',
           'web/custom_element_with_js_interop/index.html',
           'web/custom_element_with_style/index.html',
           'web/custom_elements_from_package_import/index.html',
           'web/days_until_birthday/index.html',
           'web/deploy_to_javascript/index.html',
           'web/extend_custom_element/index.html',
           'web/extend_dom_element/index.html',
           'web/getter_setter_as_attribute/index.html',
           'web/gwt_contacts/index.html',
           'web/handle_button_click/index.html',
           'web/handle_button_click_with_data/index.html',
           'web/handle_text_field_change/index.html',
           'web/iterate_loop_index/index.html',
           'web/lifecycle_callbacks/index.html',
           'web/localstorage_custom_element/index.html',
           'web/manually_add_custom_element_to_dom/index.html',
           'web/map_literals_as_class_attributes/index.html',
           'web/mutation_observers/index.html',
           'web/nested_components_with_published_fields/index.html',
           'web/nested_if_inside_repeat/index.html',
           'web/observable_getter/index.html',
           'web/observable_list/index.html',
           'web/observable_objects_inside_list_changes/index.html',
           'web/onmutation-mutation-observer/index.html',
           'web/polymer_exception_for_debugging/index.html',
           'web/repeat_over_list_of_maps/index.html',
           'web/setter_with_observable_property_change/index.html',
           'web/simple_custom_element_with_script/index.html',
           'web/simple_custom_element_without_script/index.html',
           'web/simple_focus_blur_events/index.html',
           'web/todo_element/index.html'];

  CommandLineOptions options = parseOptions(args);
  build(entryPoints: entryPoints, options: options);
}