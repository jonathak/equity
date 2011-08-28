Script started on Sat Aug 27 23:38:25 2011
[?1034hbash-3.2$ rails s
=> Booting WEBrick
=> Rails 3.0.9 application starting in development on http://0.0.0.0:3000
=> Call with -d to detach
=> Ctrl-C to shutdown server
[2011-08-27 23:38:35] INFO  WEBrick 1.3.1
[2011-08-27 23:38:35] INFO  ruby 1.9.2 (2011-07-09) [x86_64-darwin11.0.1]
[2011-08-27 23:38:35] INFO  WEBrick::HTTPServer#start: pid=29778 port=3000
DEPRECATION WARNING: config.action_view.debug_rjs will be removed in 3.1, from 3.1 onwards you will need to install prototype-rails to continue to use RJS templates . (called from service at /Users/jonkaufman/.rvm/rubies/ruby-1.9.2-p290/lib/ruby/1.9.1/webrick/httpserver.rb:111)


Started GET "/" for 127.0.0.1 at 2011-08-27 23:38:52 -0400
  Processing by AdminController#home as HTML
  [1m[36mSQL (0.1ms)[0m  [1mSELECT COUNT(*) FROM "companies"[0m
  [1m[35mSQL (0.1ms)[0m  SELECT COUNT(*) FROM "entities"
  [1m[36mSQL (0.1ms)[0m  [1mSELECT COUNT(*) FROM "securities"[0m
  [1m[35mSQL (0.1ms)[0m  SELECT COUNT(*) FROM "kinds"
  [1m[36mSQL (0.1ms)[0m  [1mSELECT COUNT(*) FROM "transactions"[0m
  [1m[35mSQL (0.1ms)[0m  SELECT COUNT(*) FROM "investments"
Rendered admin/home.html.haml within layouts/application (5.3ms)
Completed 200 OK in 200ms (Views: 8.6ms | ActiveRecord: 0.8ms)


Started GET "/" for 127.0.0.1 at 2011-08-27 23:40:51 -0400
  Processing by AdminController#home as HTML
  [1m[36mSQL (0.1ms)[0m  [1mSELECT COUNT(*) FROM "companies"[0m
  [1m[35mSQL (0.1ms)[0m  SELECT COUNT(*) FROM "entities"
  [1m[36mSQL (0.1ms)[0m  [1mSELECT COUNT(*) FROM "securities"[0m
  [1m[35mSQL (0.1ms)[0m  SELECT COUNT(*) FROM "kinds"
  [1m[36mSQL (0.1ms)[0m  [1mSELECT COUNT(*) FROM "transactions"[0m
  [1m[35mSQL (0.1ms)[0m  SELECT COUNT(*) FROM "investments"
ERROR: compiling _app_views_layouts_application_html_erb___2496648851774033834_70279864921040_1164824091826931012 RAISED /Users/jonkaufman/github/equity/app/views/layouts/application.html.erb:11: syntax error, unexpected tIDENTIFIER, expecting ')'
...nd= ( link_to 'admin:home' root );@output_buffer.safe_concat...
...                               ^
Function body:           def _app_views_layouts_application_html_erb___2496648851774033834_70279864921040_1164824091826931012(local_assigns)
            _old_virtual_path, @_virtual_path = @_virtual_path, "layouts/application";_old_output_buffer = @output_buffer;;@output_buffer = ActionView::OutputBuffer.new;@output_buffer.safe_concat('<!DOCTYPE html>
<html>
<head>
  <title>Equity</title>
  ');@output_buffer.append= ( stylesheet_link_tag :all );@output_buffer.safe_concat('
');@output_buffer.safe_concat('  ');@output_buffer.append= ( javascript_include_tag :defaults );@output_buffer.safe_concat('
');@output_buffer.safe_concat('  ');@output_buffer.append= ( csrf_meta_tag );@output_buffer.safe_concat('
');@output_buffer.safe_concat('</head>
<body>
	session-company: ');@output_buffer.append= ( "#{session[:company_id].to_i}" );@output_buffer.safe_concat(' . 
	');@output_buffer.append= ( link_to 'admin:home' root );@output_buffer.safe_concat('
');@output_buffer.safe_concat('
');@output_buffer.append= ( yield );@output_buffer.safe_concat('
');@output_buffer.safe_concat('
</body>
</html>
');@output_buffer.to_s
          ensure
            @_virtual_path, @output_buffer = _old_virtual_path, _old_output_buffer
          end
Backtrace: /Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_view/template.rb:258:in `module_eval'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_view/template.rb:258:in `compile'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_view/template.rb:134:in `block in render'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/activesupport-3.0.9/lib/active_support/notifications.rb:54:in `instrument'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_view/template.rb:127:in `render'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_view/render/layouts.rb:80:in `_render_layout'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_view/render/rendering.rb:62:in `block in _render_template'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/activesupport-3.0.9/lib/active_support/notifications.rb:52:in `block in instrument'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/activesupport-3.0.9/lib/active_support/notifications/instrumenter.rb:21:in `instrument'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/activesupport-3.0.9/lib/active_support/notifications.rb:52:in `instrument'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_view/render/rendering.rb:56:in `_render_template'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_view/render/rendering.rb:26:in `render'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/haml-3.1.2/lib/haml/helpers/action_view_mods.rb:13:in `render_with_haml'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/abstract_controller/rendering.rb:115:in `_render_template'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/abstract_controller/rendering.rb:109:in `render_to_body'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_controller/metal/renderers.rb:47:in `render_to_body'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_controller/metal/compatibility.rb:55:in `render_to_body'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/abstract_controller/rendering.rb:102:in `render_to_string'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/abstract_controller/rendering.rb:93:in `render'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_controller/metal/rendering.rb:17:in `render'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_controller/metal/instrumentation.rb:40:in `block (2 levels) in render'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/activesupport-3.0.9/lib/active_support/core_ext/benchmark.rb:5:in `block in ms'
/Users/jonkaufman/.rvm/rubies/ruby-1.9.2-p290/lib/ruby/1.9.1/benchmark.rb:310:in `realtime'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/activesupport-3.0.9/lib/active_support/core_ext/benchmark.rb:5:in `ms'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_controller/metal/instrumentation.rb:40:in `block in render'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_controller/metal/instrumentation.rb:78:in `cleanup_view_runtime'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/activerecord-3.0.9/lib/active_record/railties/controller_runtime.rb:15:in `cleanup_view_runtime'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_controller/metal/instrumentation.rb:39:in `render'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_controller/metal/implicit_render.rb:10:in `default_render'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_controller/metal/implicit_render.rb:5:in `send_action'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/abstract_controller/base.rb:150:in `process_action'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_controller/metal/rendering.rb:11:in `process_action'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/abstract_controller/callbacks.rb:18:in `block in process_action'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/activesupport-3.0.9/lib/active_support/callbacks.rb:436:in `_run__3826360797534485449__process_action__2273271530388423683__callbacks'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/activesupport-3.0.9/lib/active_support/callbacks.rb:410:in `_run_process_action_callbacks'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/activesupport-3.0.9/lib/active_support/callbacks.rb:94:in `run_callbacks'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/abstract_controller/callbacks.rb:17:in `process_action'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_controller/metal/instrumentation.rb:30:in `block in process_action'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/activesupport-3.0.9/lib/active_support/notifications.rb:52:in `block in instrument'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/activesupport-3.0.9/lib/active_support/notifications/instrumenter.rb:21:in `instrument'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/activesupport-3.0.9/lib/active_support/notifications.rb:52:in `instrument'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_controller/metal/instrumentation.rb:29:in `process_action'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_controller/metal/rescue.rb:17:in `process_action'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/abstract_controller/base.rb:119:in `process'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/abstract_controller/rendering.rb:41:in `process'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_controller/metal.rb:138:in `dispatch'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_controller/metal/rack_delegation.rb:14:in `dispatch'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_controller/metal.rb:178:in `block in action'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_dispatch/routing/route_set.rb:62:in `call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_dispatch/routing/route_set.rb:62:in `dispatch'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_dispatch/routing/route_set.rb:27:in `call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/rack-mount-0.6.14/lib/rack/mount/route_set.rb:148:in `block in call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/rack-mount-0.6.14/lib/rack/mount/code_generation.rb:93:in `block in recognize'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/rack-mount-0.6.14/lib/rack/mount/code_generation.rb:68:in `optimized_each'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/rack-mount-0.6.14/lib/rack/mount/code_generation.rb:92:in `recognize'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/rack-mount-0.6.14/lib/rack/mount/route_set.rb:139:in `call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_dispatch/routing/route_set.rb:493:in `call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_dispatch/middleware/best_standards_support.rb:17:in `call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_dispatch/middleware/head.rb:14:in `call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/rack-1.2.3/lib/rack/methodoverride.rb:24:in `call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_dispatch/middleware/params_parser.rb:21:in `call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_dispatch/middleware/flash.rb:182:in `call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_dispatch/middleware/session/abstract_store.rb:149:in `call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_dispatch/middleware/cookies.rb:302:in `call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/activerecord-3.0.9/lib/active_record/query_cache.rb:32:in `block in call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/activerecord-3.0.9/lib/active_record/connection_adapters/abstract/query_cache.rb:28:in `cache'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/activerecord-3.0.9/lib/active_record/query_cache.rb:12:in `cache'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/activerecord-3.0.9/lib/active_record/query_cache.rb:31:in `call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/activerecord-3.0.9/lib/active_record/connection_adapters/abstract/connection_pool.rb:354:in `call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_dispatch/middleware/callbacks.rb:46:in `block in call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/activesupport-3.0.9/lib/active_support/callbacks.rb:416:in `_run_call_callbacks'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_dispatch/middleware/callbacks.rb:44:in `call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/rack-1.2.3/lib/rack/sendfile.rb:107:in `call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_dispatch/middleware/remote_ip.rb:48:in `call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_dispatch/middleware/show_exceptions.rb:47:in `call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/railties-3.0.9/lib/rails/rack/logger.rb:13:in `call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/rack-1.2.3/lib/rack/runtime.rb:17:in `call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/activesupport-3.0.9/lib/active_support/cache/strategy/local_cache.rb:72:in `call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/rack-1.2.3/lib/rack/lock.rb:11:in `block in call'
<internal:prelude>:10:in `synchronize'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/rack-1.2.3/lib/rack/lock.rb:11:in `call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_dispatch/middleware/static.rb:30:in `call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/railties-3.0.9/lib/rails/application.rb:168:in `call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/railties-3.0.9/lib/rails/application.rb:77:in `method_missing'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/railties-3.0.9/lib/rails/rack/log_tailer.rb:14:in `call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/rack-1.2.3/lib/rack/content_length.rb:13:in `call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/rack-1.2.3/lib/rack/handler/webrick.rb:52:in `service'
/Users/jonkaufman/.rvm/rubies/ruby-1.9.2-p290/lib/ruby/1.9.1/webrick/httpserver.rb:111:in `service'
/Users/jonkaufman/.rvm/rubies/ruby-1.9.2-p290/lib/ruby/1.9.1/webrick/httpserver.rb:70:in `run'
/Users/jonkaufman/.rvm/rubies/ruby-1.9.2-p290/lib/ruby/1.9.1/webrick/server.rb:183:in `block in start_thread'
Rendered admin/home.html.haml within layouts/application (4.6ms)
Completed 500 Internal Server Error in 94ms

ActionView::Template::Error (/Users/jonkaufman/github/equity/app/views/layouts/application.html.erb:11: syntax error, unexpected tIDENTIFIER, expecting ')'
...nd= ( link_to 'admin:home' root );@output_buffer.safe_concat...
...                               ^):
    8: </head>
    9: <body>
    10: 	session-company: <%= "#{session[:company_id].to_i}" %> . 
    11: 	<%= link_to 'admin:home' root %>
    12: 
    13: <%= yield %>
    14: 
  

Rendered /Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_dispatch/middleware/templates/rescues/_trace.erb (1.1ms)
Rendered /Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_dispatch/middleware/templates/rescues/_request_and_response.erb (22.4ms)
Rendered /Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_dispatch/middleware/templates/rescues/template_error.erb within rescues/layout (26.9ms)


Started GET "/" for 127.0.0.1 at 2011-08-27 23:41:12 -0400
  Processing by AdminController#home as HTML
  [1m[36mSQL (0.1ms)[0m  [1mSELECT COUNT(*) FROM "companies"[0m
  [1m[35mSQL (0.1ms)[0m  SELECT COUNT(*) FROM "entities"
  [1m[36mSQL (0.1ms)[0m  [1mSELECT COUNT(*) FROM "securities"[0m
  [1m[35mSQL (0.1ms)[0m  SELECT COUNT(*) FROM "kinds"
  [1m[36mSQL (0.1ms)[0m  [1mSELECT COUNT(*) FROM "transactions"[0m
  [1m[35mSQL (0.1ms)[0m  SELECT COUNT(*) FROM "investments"
Rendered admin/home.html.haml within layouts/application (8.3ms)
Completed 500 Internal Server Error in 98ms

ActionView::Template::Error (undefined local variable or method `root' for #<#<Class:0x007fd69cd0d7c8>:0x007fd69cd0b810>):
    8: </head>
    9: <body>
    10: 	session-company: <%= "#{session[:company_id].to_i}" %> . 
    11: 	<%= link_to 'admin:home', root %>
    12: 
    13: <%= yield %>
    14: 
  app/views/layouts/application.html.erb:11:in `_app_views_layouts_application_html_erb___2496648851774033834_70279865264220_1164824091826931012'

Rendered /Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_dispatch/middleware/templates/rescues/_trace.erb (1.0ms)
Rendered /Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_dispatch/middleware/templates/rescues/_request_and_response.erb (20.0ms)
Rendered /Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_dispatch/middleware/templates/rescues/template_error.erb within rescues/layout (24.6ms)


Started GET "/" for 127.0.0.1 at 2011-08-27 23:41:24 -0400
  Processing by AdminController#home as HTML
  [1m[36mSQL (0.1ms)[0m  [1mSELECT COUNT(*) FROM "companies"[0m
  [1m[35mSQL (0.1ms)[0m  SELECT COUNT(*) FROM "entities"
  [1m[36mSQL (0.1ms)[0m  [1mSELECT COUNT(*) FROM "securities"[0m
  [1m[35mSQL (0.1ms)[0m  SELECT COUNT(*) FROM "kinds"
  [1m[36mSQL (0.1ms)[0m  [1mSELECT COUNT(*) FROM "transactions"[0m
  [1m[35mSQL (0.1ms)[0m  SELECT COUNT(*) FROM "investments"
Rendered admin/home.html.haml within layouts/application (5.3ms)
Completed 200 OK in 94ms (Views: 8.5ms | ActiveRecord: 0.7ms)


Started GET "/" for 127.0.0.1 at 2011-08-27 23:41:26 -0400
  Processing by AdminController#home as HTML
  [1m[36mSQL (0.1ms)[0m  [1mSELECT COUNT(*) FROM "companies"[0m
  [1m[35mSQL (0.1ms)[0m  SELECT COUNT(*) FROM "entities"
  [1m[36mSQL (0.1ms)[0m  [1mSELECT COUNT(*) FROM "securities"[0m
  [1m[35mSQL (0.1ms)[0m  SELECT COUNT(*) FROM "kinds"
  [1m[36mSQL (0.1ms)[0m  [1mSELECT COUNT(*) FROM "transactions"[0m
  [1m[35mSQL (0.1ms)[0m  SELECT COUNT(*) FROM "investments"
Rendered admin/home.html.haml within layouts/application (5.5ms)
Completed 200 OK in 95ms (Views: 8.4ms | ActiveRecord: 0.7ms)


Started GET "/" for 127.0.0.1 at 2011-08-27 23:41:27 -0400
  Processing by AdminController#home as HTML
  [1m[36mSQL (0.1ms)[0m  [1mSELECT COUNT(*) FROM "companies"[0m
  [1m[35mSQL (0.1ms)[0m  SELECT COUNT(*) FROM "entities"
  [1m[36mSQL (0.1ms)[0m  [1mSELECT COUNT(*) FROM "securities"[0m
  [1m[35mSQL (0.1ms)[0m  SELECT COUNT(*) FROM "kinds"
  [1m[36mSQL (0.1ms)[0m  [1mSELECT COUNT(*) FROM "transactions"[0m
  [1m[35mSQL (0.1ms)[0m  SELECT COUNT(*) FROM "investments"
Rendered admin/home.html.haml within layouts/application (5.3ms)
Completed 200 OK in 93ms (Views: 8.4ms | ActiveRecord: 0.7ms)


Started GET "/investments" for 127.0.0.1 at 2011-08-27 23:41:29 -0400
  Processing by InvestmentsController#index as HTML
  [1m[36mInvestment Load (0.3ms)[0m  [1mSELECT "investments".* FROM "investments"[0m
Rendered investments/index.html.erb within layouts/application (2.0ms)
Completed 200 OK in 13ms (Views: 5.2ms | ActiveRecord: 0.3ms)


Started GET "/" for 127.0.0.1 at 2011-08-27 23:41:31 -0400
  Processing by AdminController#home as HTML
  [1m[35mSQL (0.1ms)[0m  SELECT COUNT(*) FROM "companies"
  [1m[36mSQL (0.1ms)[0m  [1mSELECT COUNT(*) FROM "entities"[0m
  [1m[35mSQL (0.2ms)[0m  SELECT COUNT(*) FROM "securities"
  [1m[36mSQL (0.1ms)[0m  [1mSELECT COUNT(*) FROM "kinds"[0m
  [1m[35mSQL (0.1ms)[0m  SELECT COUNT(*) FROM "transactions"
  [1m[36mSQL (0.1ms)[0m  [1mSELECT COUNT(*) FROM "investments"[0m
Rendered admin/home.html.haml within layouts/application (5.4ms)
Completed 200 OK in 94ms (Views: 8.5ms | ActiveRecord: 0.7ms)


Started GET "/companies" for 127.0.0.1 at 2011-08-27 23:42:27 -0400
  Processing by CompaniesController#index as HTML
  [1m[35mCompany Load (0.4ms)[0m  SELECT "companies".* FROM "companies"
Rendered companies/index.html.erb within layouts/application (8.9ms)
Completed 200 OK in 24ms (Views: 12.2ms | ActiveRecord: 0.4ms)
..............debug company.show company.session is 1


Started GET "/companies/1" for 127.0.0.1 at 2011-08-27 23:42:38 -0400
  Processing by CompaniesController#show as HTML
  Parameters: {"id"=>"1"}
  [1m[36mSQL (0.5ms)[0m  [1m SELECT name
 FROM sqlite_master
 WHERE type = 'table' AND NOT name = 'sqlite_sequence'
[0m
  [1m[35mCompany Load (0.1ms)[0m  SELECT "companies".* FROM "companies" WHERE "companies"."id" = 1 LIMIT 1
Rendered companies/show.html.erb within layouts/application (2.0ms)
Completed 200 OK in 21ms (Views: 5.1ms | ActiveRecord: 0.6ms)
..............debug company.show company.session is 1


Started GET "/companies/1" for 127.0.0.1 at 2011-08-27 23:43:13 -0400
  Processing by CompaniesController#show as HTML
  Parameters: {"id"=>"1"}
  [1m[36mCompany Load (0.2ms)[0m  [1mSELECT "companies".* FROM "companies" WHERE "companies"."id" = 1 LIMIT 1[0m
Rendered companies/show.html.erb within layouts/application (2.0ms)
Completed 200 OK in 22ms (Views: 5.3ms | ActiveRecord: 0.2ms)


Started GET "/" for 127.0.0.1 at 2011-08-27 23:43:24 -0400
  Processing by AdminController#home as HTML
  [1m[35mSQL (0.1ms)[0m  SELECT COUNT(*) FROM "companies"
  [1m[36mSQL (0.1ms)[0m  [1mSELECT COUNT(*) FROM "entities"[0m
  [1m[35mSQL (0.2ms)[0m  SELECT COUNT(*) FROM "securities"
  [1m[36mSQL (0.1ms)[0m  [1mSELECT COUNT(*) FROM "kinds"[0m
  [1m[35mSQL (0.1ms)[0m  SELECT COUNT(*) FROM "transactions"
  [1m[36mSQL (0.1ms)[0m  [1mSELECT COUNT(*) FROM "investments"[0m
Rendered admin/home.html.haml within layouts/application (5.5ms)
Completed 200 OK in 114ms (Views: 8.8ms | ActiveRecord: 0.8ms)


Started GET "/investments" for 127.0.0.1 at 2011-08-27 23:43:31 -0400
  Processing by InvestmentsController#index as HTML
  [1m[35mInvestment Load (0.3ms)[0m  SELECT "investments".* FROM "investments"
Rendered investments/index.html.erb within layouts/application (1.9ms)
Completed 200 OK in 32ms (Views: 5.0ms | ActiveRecord: 0.3ms)


Started GET "/investments/new" for 127.0.0.1 at 2011-08-27 23:43:34 -0400
  Processing by InvestmentsController#new as HTML
  [1m[36mCompany Load (0.2ms)[0m  [1mSELECT "companies".* FROM "companies"[0m
  [1m[35mEntity Load (0.2ms)[0m  SELECT "entities".* FROM "entities"
  [1m[36mCompany Load (0.2ms)[0m  [1mSELECT "companies".* FROM "companies" WHERE "companies"."id" = 1 LIMIT 1[0m
  [1m[35mCACHE (0.0ms)[0m  SELECT "companies".* FROM "companies" WHERE "companies"."id" = 1 LIMIT 1
Rendered investments/_form.html.erb (84.2ms)
Rendered investments/new.html.erb within layouts/application (86.9ms)
Completed 200 OK in 142ms (Views: 89.8ms | ActiveRecord: 0.5ms)


Started POST "/investments" for 127.0.0.1 at 2011-08-27 23:43:39 -0400
  Processing by InvestmentsController#create as HTML
  Parameters: {"utf8"=>"✓", "authenticity_token"=>"9ju5Y8SRHbPuigEa1lhX2oUlk9RVW4MacBvIDxv2q/w=", "investment"=>{"company_id"=>"2", "entity_id"=>"1"}, "commit"=>"Create Investment"}
  [1m[36mCompany Load (0.2ms)[0m  [1mSELECT "companies".* FROM "companies"[0m
  [1m[35mEntity Load (0.2ms)[0m  SELECT "entities".* FROM "entities"
  [1m[36mSQL (0.1ms)[0m  [1mSELECT 1 FROM "investments" WHERE "investments"."entity_id" = 1 AND ("investments"."company_id" = 2) LIMIT 1[0m
  [1m[35mSQL (0.1ms)[0m  SELECT 1 FROM "investments" WHERE ("investments"."entity_id" = 1) LIMIT 1
  [1m[36mEntity Load (0.1ms)[0m  [1mSELECT "entities".* FROM "entities" WHERE "entities"."id" = 1 LIMIT 1[0m
  [1m[35mCompany Load (0.1ms)[0m  SELECT "companies".* FROM "companies" WHERE "companies"."id" = 1 LIMIT 1
  [1m[36mAREL (0.3ms)[0m  [1mINSERT INTO "investments" ("company_id", "entity_id", "created_at", "updated_at") VALUES (2, 1, '2011-08-28 03:43:39.278755', '2011-08-28 03:43:39.278755')[0m
Redirected to http://localhost:3000/investments/4
Completed 302 Found in 90ms


Started GET "/investments/4" for 127.0.0.1 at 2011-08-27 23:43:39 -0400
  Processing by InvestmentsController#show as HTML
  Parameters: {"id"=>"4"}
  [1m[35mInvestment Load (0.1ms)[0m  SELECT "investments".* FROM "investments" WHERE "investments"."id" = 4 LIMIT 1
Rendered investments/show.html.erb within layouts/application (6.5ms)
Completed 200 OK in 20ms (Views: 9.5ms | ActiveRecord: 0.1ms)


Started GET "/" for 127.0.0.1 at 2011-08-27 23:43:44 -0400
  Processing by AdminController#home as HTML
  [1m[36mSQL (0.1ms)[0m  [1mSELECT COUNT(*) FROM "companies"[0m
  [1m[35mSQL (0.1ms)[0m  SELECT COUNT(*) FROM "entities"
  [1m[36mSQL (0.1ms)[0m  [1mSELECT COUNT(*) FROM "securities"[0m
  [1m[35mSQL (0.1ms)[0m  SELECT COUNT(*) FROM "kinds"
  [1m[36mSQL (0.1ms)[0m  [1mSELECT COUNT(*) FROM "transactions"[0m
  [1m[35mSQL (0.1ms)[0m  SELECT COUNT(*) FROM "investments"
Rendered admin/home.html.haml within layouts/application (5.8ms)
Completed 200 OK in 114ms (Views: 9.2ms | ActiveRecord: 0.7ms)


Started GET "/companies" for 127.0.0.1 at 2011-08-27 23:43:47 -0400
  Processing by CompaniesController#index as HTML
  [1m[36mCompany Load (0.4ms)[0m  [1mSELECT "companies".* FROM "companies"[0m
Rendered companies/index.html.erb within layouts/application (7.6ms)
Completed 200 OK in 22ms (Views: 10.7ms | ActiveRecord: 1.4ms)
..............debug company.show company.session is 2


Started GET "/companies/2" for 127.0.0.1 at 2011-08-27 23:43:48 -0400
  Processing by CompaniesController#show as HTML
  Parameters: {"id"=>"2"}
  [1m[35mCompany Load (0.1ms)[0m  SELECT "companies".* FROM "companies" WHERE "companies"."id" = 2 LIMIT 1
Rendered companies/show.html.erb within layouts/application (2.0ms)
Completed 200 OK in 41ms (Views: 5.1ms | ActiveRecord: 0.1ms)
  [1m[36mSQL (0.5ms)[0m  [1m SELECT name
 FROM sqlite_master
 WHERE type = 'table' AND NOT name = 'sqlite_sequence'
[0m
  [1m[35mCompany Load (0.1ms)[0m  SELECT "companies".* FROM "companies" WHERE "companies"."id" = 2 LIMIT 1
  [1m[36mCompany Load (0.2ms)[0m  [1mSELECT "companies".* FROM "companies" WHERE "companies"."id" = 2 LIMIT 1[0m
  [1m[36mSQL (0.5ms)[0m  [1m SELECT name
 FROM sqlite_master
 WHERE type = 'table' AND NOT name = 'sqlite_sequence'
[0m
  [1m[35mCompany Load (0.1ms)[0m  SELECT "companies".* FROM "companies" WHERE "companies"."id" = 2 LIMIT 1
  [1m[36mCompany Load (0.6ms)[0m  [1mSELECT "companies".* FROM "companies" WHERE "companies"."id" = 2 LIMIT 1[0m
  [1m[35mCompany Load (0.2ms)[0m  SELECT "companies".* FROM "companies" WHERE "companies"."id" = 2 LIMIT 1
  [1m[36mInvestment Load (0.2ms)[0m  [1mSELECT "investments".* FROM "investments" WHERE ("investments".company_id = 2)[0m
  [1m[35mCompany Load (0.2ms)[0m  SELECT "companies".* FROM "companies" WHERE "companies"."id" = 2 LIMIT 1
  [1m[36mInvestment Load (0.2ms)[0m  [1mSELECT "investments".* FROM "investments" WHERE ("investments".company_id = 2)[0m
  [1m[35mEntity Load (0.1ms)[0m  SELECT "entities".* FROM "entities" WHERE "entities"."id" = 1 LIMIT 1
  [1m[36mEntity Load (0.2ms)[0m  [1mSELECT "entities".* FROM "entities" WHERE "entities"."id" = 1 LIMIT 1[0m
  [1m[36mSQL (0.5ms)[0m  [1m SELECT name
 FROM sqlite_master
 WHERE type = 'table' AND NOT name = 'sqlite_sequence'
[0m
  [1m[35mCompany Load (0.1ms)[0m  SELECT "companies".* FROM "companies" WHERE "companies"."id" = 2 LIMIT 1
  [1m[36mCompany Load (0.2ms)[0m  [1mSELECT "companies".* FROM "companies" WHERE "companies"."id" = 2 LIMIT 1[0m
  [1m[35mInvestment Load (0.2ms)[0m  SELECT "investments".* FROM "investments" WHERE ("investments".company_id = 2)
  [1m[36mCompany Load (0.2ms)[0m  [1mSELECT "companies".* FROM "companies" WHERE "companies"."id" = 2 LIMIT 1[0m
  [1m[35mInvestment Load (0.2ms)[0m  SELECT "investments".* FROM "investments" WHERE ("investments".company_id = 2)
  [1m[36mSQL (0.5ms)[0m  [1m SELECT name
 FROM sqlite_master
 WHERE type = 'table' AND NOT name = 'sqlite_sequence'
[0m
  [1m[35mCompany Load (0.1ms)[0m  SELECT "companies".* FROM "companies" WHERE "companies"."id" = 2 LIMIT 1
  [1m[36mInvestment Load (0.2ms)[0m  [1mSELECT "investments".* FROM "investments" WHERE ("investments".company_id = 2)[0m
  [1m[35mCompany Load (0.2ms)[0m  SELECT "companies".* FROM "companies" WHERE "companies"."id" = 2 LIMIT 1
  [1m[36mSQL (0.5ms)[0m  [1m SELECT name
 FROM sqlite_master
 WHERE type = 'table' AND NOT name = 'sqlite_sequence'
[0m
  [1m[35mCompany Load (0.1ms)[0m  SELECT "companies".* FROM "companies" WHERE "companies"."id" = 2 LIMIT 1
  [1m[36mInvestment Load (0.2ms)[0m  [1mSELECT "investments".* FROM "investments" WHERE ("investments".company_id = 2)[0m
  [1m[35mCompany Load (0.2ms)[0m  SELECT "companies".* FROM "companies" WHERE "companies"."id" = 2 LIMIT 1
  [1m[36mInvestment Load (0.2ms)[0m  [1mSELECT "investments".* FROM "investments" WHERE ("investments".company_id = 2)[0m
  [1m[35mEntity Load (0.2ms)[0m  SELECT "entities".* FROM "entities" WHERE "entities"."id" = 1 LIMIT 1


Started GET "/companies/2" for 127.0.0.1 at 2011-08-28 00:12:20 -0400
  Processing by CompaniesController#show as HTML
  Parameters: {"id"=>"2"}
  [1m[36mCompany Load (0.1ms)[0m  [1mSELECT "companies".* FROM "companies" WHERE "companies"."id" = 2 LIMIT 1[0m
  [1m[35mInvestment Load (0.2ms)[0m  SELECT "investments".* FROM "investments" WHERE ("investments".company_id = 2)
Completed 500 Internal Server Error in 49ms

NoMethodError (undefined method `e' for 1:Fixnum):
  app/controllers/companies_controller.rb:18:in `map'
  app/controllers/companies_controller.rb:18:in `show'

Rendered /Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_dispatch/middleware/templates/rescues/_trace.erb (1.0ms)
Rendered /Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_dispatch/middleware/templates/rescues/_request_and_response.erb (2.6ms)
Rendered /Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_dispatch/middleware/templates/rescues/diagnostics.erb within rescues/layout (6.8ms)
^C[2011-08-28 00:12:42] INFO  going to shutdown ...
[2011-08-28 00:12:42] INFO  WEBrick::HTTPServer#start done.
Exiting
bash-3.2$ rails s
=> Booting WEBrick
=> Rails 3.0.9 application starting in development on http://0.0.0.0:3000
=> Call with -d to detach
=> Ctrl-C to shutdown server
[2011-08-28 00:12:46] INFO  WEBrick 1.3.1
[2011-08-28 00:12:46] INFO  ruby 1.9.2 (2011-07-09) [x86_64-darwin11.0.1]
[2011-08-28 00:12:46] INFO  WEBrick::HTTPServer#start: pid=29985 port=3000
DEPRECATION WARNING: config.action_view.debug_rjs will be removed in 3.1, from 3.1 onwards you will need to install prototype-rails to continue to use RJS templates . (called from service at /Users/jonkaufman/.rvm/rubies/ruby-1.9.2-p290/lib/ruby/1.9.1/webrick/httpserver.rb:111)


Started GET "/companies/2" for 127.0.0.1 at 2011-08-28 00:12:49 -0400
  Processing by CompaniesController#show as HTML
  Parameters: {"id"=>"2"}
  [1m[36mSQL (0.5ms)[0m  [1m SELECT name
 FROM sqlite_master
 WHERE type = 'table' AND NOT name = 'sqlite_sequence'
[0m
  [1m[35mCompany Load (0.1ms)[0m  SELECT "companies".* FROM "companies" WHERE "companies"."id" = 2 LIMIT 1
  [1m[36mInvestment Load (0.3ms)[0m  [1mSELECT "investments".* FROM "investments" WHERE ("investments".company_id = 2)[0m
  [1m[35mEntity Load (0.1ms)[0m  SELECT "entities".* FROM "entities" WHERE "entities"."id" = 1 LIMIT 1
Rendered companies/show.html.erb within layouts/application (2.3ms)
Completed 200 OK in 153ms (Views: 5.8ms | ActiveRecord: 1.0ms)


Started GET "/companies/2" for 127.0.0.1 at 2011-08-28 00:12:51 -0400
  Processing by CompaniesController#show as HTML
  Parameters: {"id"=>"2"}
  [1m[36mCompany Load (0.2ms)[0m  [1mSELECT "companies".* FROM "companies" WHERE "companies"."id" = 2 LIMIT 1[0m
  [1m[35mInvestment Load (0.2ms)[0m  SELECT "investments".* FROM "investments" WHERE ("investments".company_id = 2)
  [1m[36mEntity Load (0.1ms)[0m  [1mSELECT "entities".* FROM "entities" WHERE "entities"."id" = 1 LIMIT 1[0m
Rendered companies/show.html.erb within layouts/application (2.1ms)
Completed 200 OK in 65ms (Views: 5.3ms | ActiveRecord: 0.5ms)


Started GET "/companies/2" for 127.0.0.1 at 2011-08-28 00:19:52 -0400
  Processing by CompaniesController#show as HTML
  Parameters: {"id"=>"2"}
  [1m[35mCompany Load (0.1ms)[0m  SELECT "companies".* FROM "companies" WHERE "companies"."id" = 2 LIMIT 1
  [1m[36mInvestment Load (0.2ms)[0m  [1mSELECT "investments".* FROM "investments" WHERE ("investments".company_id = 2)[0m
  [1m[35mEntity Load (0.2ms)[0m  SELECT "entities".* FROM "entities" WHERE "entities"."id" = 1 LIMIT 1
Rendered companies/show.html.erb within layouts/application (2.0ms)
Completed 200 OK in 67ms (Views: 5.1ms | ActiveRecord: 0.5ms)


Started GET "/companies/2" for 127.0.0.1 at 2011-08-28 00:19:53 -0400
  Processing by CompaniesController#show as HTML
  Parameters: {"id"=>"2"}
  [1m[36mCompany Load (0.1ms)[0m  [1mSELECT "companies".* FROM "companies" WHERE "companies"."id" = 2 LIMIT 1[0m
  [1m[35mInvestment Load (0.2ms)[0m  SELECT "investments".* FROM "investments" WHERE ("investments".company_id = 2)
  [1m[36mEntity Load (0.2ms)[0m  [1mSELECT "entities".* FROM "entities" WHERE "entities"."id" = 1 LIMIT 1[0m
Rendered companies/show.html.erb within layouts/application (2.0ms)
Completed 200 OK in 66ms (Views: 5.2ms | ActiveRecord: 0.5ms)


Started GET "/companies/2" for 127.0.0.1 at 2011-08-28 00:20:40 -0400
  Processing by CompaniesController#show as HTML
  Parameters: {"id"=>"2"}
  [1m[35mCompany Load (0.1ms)[0m  SELECT "companies".* FROM "companies" WHERE "companies"."id" = 2 LIMIT 1
  [1m[36mInvestment Load (0.2ms)[0m  [1mSELECT "investments".* FROM "investments" WHERE ("investments".company_id = 2)[0m
  [1m[35mEntity Load (0.2ms)[0m  SELECT "entities".* FROM "entities" WHERE "entities"."id" = 1 LIMIT 1
Rendered companies/show.html.erb within layouts/application (2.1ms)
Completed 200 OK in 66ms (Views: 5.4ms | ActiveRecord: 0.5ms)


Started GET "/companies/2" for 127.0.0.1 at 2011-08-28 00:20:41 -0400
  Processing by CompaniesController#show as HTML
  Parameters: {"id"=>"2"}
  [1m[36mCompany Load (0.1ms)[0m  [1mSELECT "companies".* FROM "companies" WHERE "companies"."id" = 2 LIMIT 1[0m
  [1m[35mInvestment Load (0.2ms)[0m  SELECT "investments".* FROM "investments" WHERE ("investments".company_id = 2)
  [1m[36mEntity Load (0.2ms)[0m  [1mSELECT "entities".* FROM "entities" WHERE "entities"."id" = 1 LIMIT 1[0m
Rendered companies/show.html.erb within layouts/application (2.0ms)
Completed 200 OK in 66ms (Views: 5.1ms | ActiveRecord: 0.4ms)


Started GET "/companies/2" for 127.0.0.1 at 2011-08-28 00:20:42 -0400
  Processing by CompaniesController#show as HTML
  Parameters: {"id"=>"2"}
  [1m[35mCompany Load (0.1ms)[0m  SELECT "companies".* FROM "companies" WHERE "companies"."id" = 2 LIMIT 1
  [1m[36mInvestment Load (0.2ms)[0m  [1mSELECT "investments".* FROM "investments" WHERE ("investments".company_id = 2)[0m
  [1m[35mEntity Load (0.2ms)[0m  SELECT "entities".* FROM "entities" WHERE "entities"."id" = 1 LIMIT 1
Rendered companies/show.html.erb within layouts/application (2.0ms)
Completed 200 OK in 47ms (Views: 5.2ms | ActiveRecord: 0.4ms)


Started GET "/companies/2" for 127.0.0.1 at 2011-08-28 00:21:08 -0400
  Processing by CompaniesController#show as HTML
  Parameters: {"id"=>"2"}
  [1m[36mCompany Load (0.1ms)[0m  [1mSELECT "companies".* FROM "companies" WHERE "companies"."id" = 2 LIMIT 1[0m
  [1m[35mInvestment Load (0.2ms)[0m  SELECT "investments".* FROM "investments" WHERE ("investments".company_id = 2)
  [1m[36mEntity Load (0.2ms)[0m  [1mSELECT "entities".* FROM "entities" WHERE "entities"."id" = 1 LIMIT 1[0m
Rendered companies/show.html.erb within layouts/application (2.0ms)
Completed 200 OK in 66ms (Views: 5.2ms | ActiveRecord: 0.5ms)


Started GET "/companies/2" for 127.0.0.1 at 2011-08-28 00:21:09 -0400
  Processing by CompaniesController#show as HTML
  Parameters: {"id"=>"2"}
  [1m[35mCompany Load (0.1ms)[0m  SELECT "companies".* FROM "companies" WHERE "companies"."id" = 2 LIMIT 1
  [1m[36mInvestment Load (0.2ms)[0m  [1mSELECT "investments".* FROM "investments" WHERE ("investments".company_id = 2)[0m
  [1m[35mEntity Load (0.2ms)[0m  SELECT "entities".* FROM "entities" WHERE "entities"."id" = 1 LIMIT 1
Rendered companies/show.html.erb within layouts/application (2.1ms)
Completed 200 OK in 66ms (Views: 5.2ms | ActiveRecord: 0.5ms)


Started GET "/companies/2" for 127.0.0.1 at 2011-08-28 00:21:10 -0400
  Processing by CompaniesController#show as HTML
  Parameters: {"id"=>"2"}
  [1m[36mCompany Load (0.1ms)[0m  [1mSELECT "companies".* FROM "companies" WHERE "companies"."id" = 2 LIMIT 1[0m
  [1m[35mInvestment Load (0.2ms)[0m  SELECT "investments".* FROM "investments" WHERE ("investments".company_id = 2)
  [1m[36mEntity Load (0.2ms)[0m  [1mSELECT "entities".* FROM "entities" WHERE "entities"."id" = 1 LIMIT 1[0m
Rendered companies/show.html.erb within layouts/application (1.9ms)
Completed 200 OK in 65ms (Views: 5.0ms | ActiveRecord: 0.4ms)


Started GET "/companies/2" for 127.0.0.1 at 2011-08-28 00:21:48 -0400
  Processing by CompaniesController#show as HTML
  Parameters: {"id"=>"2"}
  [1m[35mCompany Load (0.1ms)[0m  SELECT "companies".* FROM "companies" WHERE "companies"."id" = 2 LIMIT 1
  [1m[36mInvestment Load (0.2ms)[0m  [1mSELECT "investments".* FROM "investments" WHERE ("investments".company_id = 2)[0m
  [1m[35mEntity Load (0.2ms)[0m  SELECT "entities".* FROM "entities" WHERE "entities"."id" = 1 LIMIT 1
Rendered companies/show.html.haml within layouts/application (0.8ms)
Completed 500 Internal Server Error in 65ms

ActionView::Template::Error (Illegal nesting: nesting within plain text is illegal.):
    2: %p{:id => "notice"}= notice
    3: 
    4: <p>
    5:   <b>Name:</b>
    6:   <%= @company.name %>
    7: </p>
    8: 
  app/views/companies/show.html.haml:5
  app/controllers/companies_controller.rb:20:in `show'

Rendered /Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_dispatch/middleware/templates/rescues/_trace.erb (0.9ms)
Rendered /Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_dispatch/middleware/templates/rescues/_request_and_response.erb (25.2ms)
Rendered /Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_dispatch/middleware/templates/rescues/template_error.erb within rescues/layout (29.7ms)


Started GET "/companies/2" for 127.0.0.1 at 2011-08-28 00:23:38 -0400
  Processing by CompaniesController#show as HTML
  Parameters: {"id"=>"2"}
  [1m[36mCompany Load (0.1ms)[0m  [1mSELECT "companies".* FROM "companies" WHERE "companies"."id" = 2 LIMIT 1[0m
  [1m[35mInvestment Load (0.2ms)[0m  SELECT "investments".* FROM "investments" WHERE ("investments".company_id = 2)
  [1m[36mEntity Load (0.2ms)[0m  [1mSELECT "entities".* FROM "entities" WHERE "entities"."id" = 1 LIMIT 1[0m
ERROR: compiling _app_views_companies_show_html_haml__274085853080200353_70332750229160__4550476838429121483 RAISED /Users/jonkaufman/github/equity/app/views/companies/show.html.haml:9: syntax error, unexpected '>'
Function body:           def _app_views_companies_show_html_haml__274085853080200353_70332750229160__4550476838429121483(local_assigns)
            _old_virtual_path, @_virtual_path = @_virtual_path, "companies/show";_old_output_buffer = @output_buffer;;begin;extend Haml::Helpers;_hamlout = @haml_buffer = Haml::Buffer.new(@haml_buffer, {:autoclose=>["meta", "img", "link", "br", "hr", "input", "area", "param", "col", "base"], :preserve=>["textarea", "pre", "code"], :attr_wrapper=>"'", :ugly=>false, :format=>:html5, :encoding=>"UTF-8", :escape_html=>true, :escape_attrs=>true});_erbout = _hamlout.buffer;__in_erb_template = true;;_hamlout.push_text("<p id='notice'>#{_hamlout.adjust_tabs(1); 
_hamlout.format_script_false_true_false_true_false_true_false((notice
));}</p>\n<p>\n  <b>\n    Name:\n    #{_hamlout.adjust_tabs(2); 



_hamlout.format_script_false_false_false_true_false_true_false(( @company.name
));}\n  </b>\n</p>\n#{_hamlout.adjust_tabs(-2); 
_hamlout.format_script_false_false_false_true_false_true_false(( link_to 'Edit', edit_company_path(@company) %>
));}\n#{_hamlout.format_script_false_false_false_true_false_true_false(( link_to 'Back', companies_path %>
));}\n", 0, false);::Haml::Util.html_safe(_erbout);ensure;@haml_buffer = @haml_buffer.upper;end;
          ensure
            @_virtual_path, @output_buffer = _old_virtual_path, _old_output_buffer
          end
Backtrace: /Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_view/template.rb:258:in `module_eval'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_view/template.rb:258:in `compile'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_view/template.rb:134:in `block in render'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/activesupport-3.0.9/lib/active_support/notifications.rb:54:in `instrument'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_view/template.rb:127:in `render'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_view/render/rendering.rb:59:in `block in _render_template'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/activesupport-3.0.9/lib/active_support/notifications.rb:52:in `block in instrument'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/activesupport-3.0.9/lib/active_support/notifications/instrumenter.rb:21:in `instrument'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/activesupport-3.0.9/lib/active_support/notifications.rb:52:in `instrument'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_view/render/rendering.rb:56:in `_render_template'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_view/render/rendering.rb:26:in `render'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/haml-3.1.2/lib/haml/helpers/action_view_mods.rb:13:in `render_with_haml'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/abstract_controller/rendering.rb:115:in `_render_template'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/abstract_controller/rendering.rb:109:in `render_to_body'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_controller/metal/renderers.rb:47:in `render_to_body'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_controller/metal/compatibility.rb:55:in `render_to_body'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/abstract_controller/rendering.rb:102:in `render_to_string'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/abstract_controller/rendering.rb:93:in `render'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_controller/metal/rendering.rb:17:in `render'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_controller/metal/instrumentation.rb:40:in `block (2 levels) in render'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/activesupport-3.0.9/lib/active_support/core_ext/benchmark.rb:5:in `block in ms'
/Users/jonkaufman/.rvm/rubies/ruby-1.9.2-p290/lib/ruby/1.9.1/benchmark.rb:310:in `realtime'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/activesupport-3.0.9/lib/active_support/core_ext/benchmark.rb:5:in `ms'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_controller/metal/instrumentation.rb:40:in `block in render'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_controller/metal/instrumentation.rb:78:in `cleanup_view_runtime'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/activerecord-3.0.9/lib/active_record/railties/controller_runtime.rb:15:in `cleanup_view_runtime'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_controller/metal/instrumentation.rb:39:in `render'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_controller/metal/implicit_render.rb:10:in `default_render'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_controller/metal/mime_responds.rb:261:in `block in retrieve_response_from_mimes'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_controller/metal/mime_responds.rb:192:in `call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_controller/metal/mime_responds.rb:192:in `respond_to'
/Users/jonkaufman/github/equity/app/controllers/companies_controller.rb:20:in `show'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_controller/metal/implicit_render.rb:4:in `send_action'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/abstract_controller/base.rb:150:in `process_action'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_controller/metal/rendering.rb:11:in `process_action'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/abstract_controller/callbacks.rb:18:in `block in process_action'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/activesupport-3.0.9/lib/active_support/callbacks.rb:436:in `_run__3361432511936299251__process_action__2127253488526671925__callbacks'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/activesupport-3.0.9/lib/active_support/callbacks.rb:410:in `_run_process_action_callbacks'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/activesupport-3.0.9/lib/active_support/callbacks.rb:94:in `run_callbacks'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/abstract_controller/callbacks.rb:17:in `process_action'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_controller/metal/instrumentation.rb:30:in `block in process_action'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/activesupport-3.0.9/lib/active_support/notifications.rb:52:in `block in instrument'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/activesupport-3.0.9/lib/active_support/notifications/instrumenter.rb:21:in `instrument'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/activesupport-3.0.9/lib/active_support/notifications.rb:52:in `instrument'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_controller/metal/instrumentation.rb:29:in `process_action'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_controller/metal/rescue.rb:17:in `process_action'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/abstract_controller/base.rb:119:in `process'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/abstract_controller/rendering.rb:41:in `process'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_controller/metal.rb:138:in `dispatch'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_controller/metal/rack_delegation.rb:14:in `dispatch'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_controller/metal.rb:178:in `block in action'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_dispatch/routing/route_set.rb:62:in `call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_dispatch/routing/route_set.rb:62:in `dispatch'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_dispatch/routing/route_set.rb:27:in `call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/rack-mount-0.6.14/lib/rack/mount/route_set.rb:148:in `block in call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/rack-mount-0.6.14/lib/rack/mount/code_generation.rb:93:in `block in recognize'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/rack-mount-0.6.14/lib/rack/mount/code_generation.rb:89:in `optimized_each'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/rack-mount-0.6.14/lib/rack/mount/code_generation.rb:92:in `recognize'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/rack-mount-0.6.14/lib/rack/mount/route_set.rb:139:in `call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_dispatch/routing/route_set.rb:493:in `call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_dispatch/middleware/best_standards_support.rb:17:in `call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_dispatch/middleware/head.rb:14:in `call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/rack-1.2.3/lib/rack/methodoverride.rb:24:in `call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_dispatch/middleware/params_parser.rb:21:in `call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_dispatch/middleware/flash.rb:182:in `call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_dispatch/middleware/session/abstract_store.rb:149:in `call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_dispatch/middleware/cookies.rb:302:in `call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/activerecord-3.0.9/lib/active_record/query_cache.rb:32:in `block in call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/activerecord-3.0.9/lib/active_record/connection_adapters/abstract/query_cache.rb:28:in `cache'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/activerecord-3.0.9/lib/active_record/query_cache.rb:12:in `cache'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/activerecord-3.0.9/lib/active_record/query_cache.rb:31:in `call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/activerecord-3.0.9/lib/active_record/connection_adapters/abstract/connection_pool.rb:354:in `call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_dispatch/middleware/callbacks.rb:46:in `block in call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/activesupport-3.0.9/lib/active_support/callbacks.rb:416:in `_run_call_callbacks'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_dispatch/middleware/callbacks.rb:44:in `call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/rack-1.2.3/lib/rack/sendfile.rb:107:in `call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_dispatch/middleware/remote_ip.rb:48:in `call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_dispatch/middleware/show_exceptions.rb:47:in `call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/railties-3.0.9/lib/rails/rack/logger.rb:13:in `call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/rack-1.2.3/lib/rack/runtime.rb:17:in `call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/activesupport-3.0.9/lib/active_support/cache/strategy/local_cache.rb:72:in `call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/rack-1.2.3/lib/rack/lock.rb:11:in `block in call'
<internal:prelude>:10:in `synchronize'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/rack-1.2.3/lib/rack/lock.rb:11:in `call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_dispatch/middleware/static.rb:30:in `call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/railties-3.0.9/lib/rails/application.rb:168:in `call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/railties-3.0.9/lib/rails/application.rb:77:in `method_missing'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/railties-3.0.9/lib/rails/rack/log_tailer.rb:14:in `call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/rack-1.2.3/lib/rack/content_length.rb:13:in `call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/rack-1.2.3/lib/rack/handler/webrick.rb:52:in `service'
/Users/jonkaufman/.rvm/rubies/ruby-1.9.2-p290/lib/ruby/1.9.1/webrick/httpserver.rb:111:in `service'
/Users/jonkaufman/.rvm/rubies/ruby-1.9.2-p290/lib/ruby/1.9.1/webrick/httpserver.rb:70:in `run'
/Users/jonkaufman/.rvm/rubies/ruby-1.9.2-p290/lib/ruby/1.9.1/webrick/server.rb:183:in `block in start_thread'
Rendered companies/show.html.haml within layouts/application (2.0ms)
Completed 500 Internal Server Error in 67ms

ActionView::Template::Error (/Users/jonkaufman/github/equity/app/views/companies/show.html.haml:9: syntax error, unexpected '>'):
    6:     Name:
    7:     = @company.name
    8: 
    9: = link_to 'Edit', edit_company_path(@company) %> |
    10: = link_to 'Back', companies_path %>
  app/controllers/companies_controller.rb:20:in `show'

Rendered /Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_dispatch/middleware/templates/rescues/_trace.erb (0.9ms)
Rendered /Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_dispatch/middleware/templates/rescues/_request_and_response.erb (7.1ms)
Rendered /Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_dispatch/middleware/templates/rescues/template_error.erb within rescues/layout (11.4ms)


Started GET "/companies/2" for 127.0.0.1 at 2011-08-28 00:24:17 -0400
  Processing by CompaniesController#show as HTML
  Parameters: {"id"=>"2"}
  [1m[35mCompany Load (0.1ms)[0m  SELECT "companies".* FROM "companies" WHERE "companies"."id" = 2 LIMIT 1
  [1m[36mInvestment Load (0.2ms)[0m  [1mSELECT "investments".* FROM "investments" WHERE ("investments".company_id = 2)[0m
  [1m[35mEntity Load (0.1ms)[0m  SELECT "entities".* FROM "entities" WHERE "entities"."id" = 1 LIMIT 1
Rendered companies/show.html.haml within layouts/application (0.8ms)
Completed 500 Internal Server Error in 65ms

ActionView::Template::Error (Inconsistent indentation: 1 space was used for indentation, but the rest of the document was indented using 2 spaces.):
    7:     = @company.name
    8: 
    9: = link_to 'Edit', edit_company_path(@company)
    10:  |
    11: = link_to 'Back', companies_path
  app/views/companies/show.html.haml:10
  app/controllers/companies_controller.rb:20:in `show'

Rendered /Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_dispatch/middleware/templates/rescues/_trace.erb (0.9ms)
Rendered /Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_dispatch/middleware/templates/rescues/_request_and_response.erb (6.8ms)
Rendered /Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_dispatch/middleware/templates/rescues/template_error.erb within rescues/layout (11.0ms)


Started GET "/companies/2" for 127.0.0.1 at 2011-08-28 00:24:43 -0400
  Processing by CompaniesController#show as HTML
  Parameters: {"id"=>"2"}
  [1m[36mCompany Load (0.2ms)[0m  [1mSELECT "companies".* FROM "companies" WHERE "companies"."id" = 2 LIMIT 1[0m
  [1m[35mInvestment Load (0.2ms)[0m  SELECT "investments".* FROM "investments" WHERE ("investments".company_id = 2)
  [1m[36mEntity Load (0.2ms)[0m  [1mSELECT "entities".* FROM "entities" WHERE "entities"."id" = 1 LIMIT 1[0m
Rendered companies/show.html.haml within layouts/application (22.2ms)
Completed 200 OK in 68ms (Views: 25.6ms | ActiveRecord: 0.5ms)


Started GET "/companies/2" for 127.0.0.1 at 2011-08-28 00:25:18 -0400
  Processing by CompaniesController#show as HTML
  Parameters: {"id"=>"2"}
  [1m[35mCompany Load (0.1ms)[0m  SELECT "companies".* FROM "companies" WHERE "companies"."id" = 2 LIMIT 1
  [1m[36mInvestment Load (0.2ms)[0m  [1mSELECT "investments".* FROM "investments" WHERE ("investments".company_id = 2)[0m
  [1m[35mEntity Load (0.2ms)[0m  SELECT "entities".* FROM "entities" WHERE "entities"."id" = 1 LIMIT 1
Rendered companies/show.html.haml within layouts/application (3.6ms)
Completed 200 OK in 68ms (Views: 6.7ms | ActiveRecord: 0.5ms)


Started GET "/companies/2" for 127.0.0.1 at 2011-08-28 00:25:31 -0400
  Processing by CompaniesController#show as HTML
  Parameters: {"id"=>"2"}
  [1m[36mCompany Load (0.2ms)[0m  [1mSELECT "companies".* FROM "companies" WHERE "companies"."id" = 2 LIMIT 1[0m
  [1m[35mInvestment Load (0.2ms)[0m  SELECT "investments".* FROM "investments" WHERE ("investments".company_id = 2)
  [1m[36mEntity Load (0.2ms)[0m  [1mSELECT "entities".* FROM "entities" WHERE "entities"."id" = 1 LIMIT 1[0m
Rendered companies/show.html.haml within layouts/application (3.8ms)
Completed 200 OK in 52ms (Views: 6.9ms | ActiveRecord: 0.5ms)


Started GET "/companies/2" for 127.0.0.1 at 2011-08-28 00:26:20 -0400
  Processing by CompaniesController#show as HTML
  Parameters: {"id"=>"2"}
  [1m[35mCompany Load (0.1ms)[0m  SELECT "companies".* FROM "companies" WHERE "companies"."id" = 2 LIMIT 1
  [1m[36mInvestment Load (0.2ms)[0m  [1mSELECT "investments".* FROM "investments" WHERE ("investments".company_id = 2)[0m
  [1m[35mEntity Load (0.1ms)[0m  SELECT "entities".* FROM "entities" WHERE "entities"."id" = 1 LIMIT 1
Rendered companies/show.html.haml within layouts/application (3.6ms)
Completed 200 OK in 65ms (Views: 6.6ms | ActiveRecord: 0.4ms)


Started GET "/companies/2" for 127.0.0.1 at 2011-08-28 00:36:25 -0400
  Processing by CompaniesController#show as HTML
  Parameters: {"id"=>"2"}
  [1m[36mCompany Load (0.1ms)[0m  [1mSELECT "companies".* FROM "companies" WHERE "companies"."id" = 2 LIMIT 1[0m
  [1m[35mInvestment Load (0.2ms)[0m  SELECT "investments".* FROM "investments" WHERE ("investments".company_id = 2)
  [1m[36mEntity Load (0.2ms)[0m  [1mSELECT "entities".* FROM "entities" WHERE "entities"."id" = 1 LIMIT 1[0m
  [1m[35mCompany Load (0.2ms)[0m  SELECT "companies".* FROM "companies" WHERE "companies"."id" = 1 LIMIT 1
Rendered companies/show.html.haml within layouts/application (30.9ms)
Completed 200 OK in 95ms (Views: 34.0ms | ActiveRecord: 0.6ms)


Started GET "/companies/2" for 127.0.0.1 at 2011-08-28 00:37:27 -0400
  Processing by CompaniesController#show as HTML
  Parameters: {"id"=>"2"}
  [1m[36mCompany Load (0.1ms)[0m  [1mSELECT "companies".* FROM "companies" WHERE "companies"."id" = 2 LIMIT 1[0m
  [1m[35mInvestment Load (0.2ms)[0m  SELECT "investments".* FROM "investments" WHERE ("investments".company_id = 2)
  [1m[36mEntity Load (0.2ms)[0m  [1mSELECT "entities".* FROM "entities" WHERE "entities"."id" = 1 LIMIT 1[0m
  [1m[35mCompany Load (0.1ms)[0m  SELECT "companies".* FROM "companies" WHERE "companies"."id" = 1 LIMIT 1
Rendered companies/show.html.haml within layouts/application (12.3ms)
Completed 200 OK in 75ms (Views: 15.2ms | ActiveRecord: 0.6ms)


Started GET "/companies/2" for 127.0.0.1 at 2011-08-28 00:38:51 -0400
  Processing by CompaniesController#show as HTML
  Parameters: {"id"=>"2"}
  [1m[36mCompany Load (0.1ms)[0m  [1mSELECT "companies".* FROM "companies" WHERE "companies"."id" = 2 LIMIT 1[0m
  [1m[35mInvestment Load (0.2ms)[0m  SELECT "investments".* FROM "investments" WHERE ("investments".company_id = 2)
  [1m[36mEntity Load (0.2ms)[0m  [1mSELECT "entities".* FROM "entities" WHERE "entities"."id" = 1 LIMIT 1[0m
  [1m[35mCompany Load (0.2ms)[0m  SELECT "companies".* FROM "companies" WHERE "companies"."id" = 1 LIMIT 1
Rendered companies/show.html.haml within layouts/application (12.8ms)
Completed 200 OK in 78ms (Views: 15.7ms | ActiveRecord: 0.6ms)


Started GET "/companies/2" for 127.0.0.1 at 2011-08-28 00:39:13 -0400
  Processing by CompaniesController#show as HTML
  Parameters: {"id"=>"2"}
  [1m[36mCompany Load (0.1ms)[0m  [1mSELECT "companies".* FROM "companies" WHERE "companies"."id" = 2 LIMIT 1[0m
  [1m[35mInvestment Load (0.2ms)[0m  SELECT "investments".* FROM "investments" WHERE ("investments".company_id = 2)
  [1m[36mEntity Load (0.2ms)[0m  [1mSELECT "entities".* FROM "entities" WHERE "entities"."id" = 1 LIMIT 1[0m
  [1m[35mCompany Load (0.2ms)[0m  SELECT "companies".* FROM "companies" WHERE "companies"."id" = 1 LIMIT 1
Rendered companies/show.html.haml within layouts/application (13.1ms)
Completed 200 OK in 78ms (Views: 16.2ms | ActiveRecord: 0.6ms)


Started GET "/companies/2" for 127.0.0.1 at 2011-08-28 00:39:56 -0400
  Processing by CompaniesController#show as HTML
  Parameters: {"id"=>"2"}
  [1m[36mCompany Load (0.1ms)[0m  [1mSELECT "companies".* FROM "companies" WHERE "companies"."id" = 2 LIMIT 1[0m
  [1m[35mInvestment Load (0.2ms)[0m  SELECT "investments".* FROM "investments" WHERE ("investments".company_id = 2)
  [1m[36mEntity Load (0.2ms)[0m  [1mSELECT "entities".* FROM "entities" WHERE "entities"."id" = 1 LIMIT 1[0m
ERROR: compiling _app_views_companies_show_html_haml__274085853080200353_70332748995900__4550476838429121483 RAISED /Users/jonkaufman/github/equity/app/views/companies/show.html.haml:9: syntax error, unexpected tIDENTIFIER, expecting tASSOC
... nil, :style => {"{color: "blue"}"})}>\n  Investments\n</p>\...
...                               ^
Function body:           def _app_views_companies_show_html_haml__274085853080200353_70332748995900__4550476838429121483(local_assigns)
            _old_virtual_path, @_virtual_path = @_virtual_path, "companies/show";_old_output_buffer = @output_buffer;;begin;extend Haml::Helpers;_hamlout = @haml_buffer = Haml::Buffer.new(@haml_buffer, {:autoclose=>["meta", "img", "link", "br", "hr", "input", "area", "param", "col", "base"], :preserve=>["textarea", "pre", "code"], :attr_wrapper=>"'", :ugly=>false, :format=>:html5, :encoding=>"UTF-8", :escape_html=>true, :escape_attrs=>true});_erbout = _hamlout.buffer;__in_erb_template = true;;_hamlout.push_text("<p id='notice'>#{_hamlout.adjust_tabs(1); 
_hamlout.format_script_false_true_false_true_false_true_false((notice
));}</p>\n<p>\n  <b>\n    Name:\n    #{_hamlout.adjust_tabs(2); 



_hamlout.format_script_false_false_false_true_false_true_false(( @company.name
));}\n  </b>\n</p>\n<p#{_hamlout.adjust_tabs(-2); 
_hamlout.attributes({}, nil, :style => {"{color: "blue"}"})}>\n  Investments\n</p>\n<table>\n", 1, false);



_hamlout.append_if_string=  @entities.each do |e|
_hamlout.push_text("  <tr>#{_hamlout.adjust_tabs(1); _hamlout.format_script_false_true_false_true_false_true_false(("#{e.company.name}: #{e.name}"
));}</tr>\n", 0, false);end
_hamlout.push_text("</table>\n<br>\n#{_hamlout.adjust_tabs(-1); 
_hamlout.format_script_false_false_false_true_false_true_false(( link_to 'Edit', edit_company_path(@company)
));}\n#{_hamlout.format_script_false_false_false_true_false_true_false(( " | "
));}\n#{_hamlout.format_script_false_false_false_true_false_true_false(( link_to 'Back', companies_path
));}\n", 0, false);::Haml::Util.html_safe(_erbout);ensure;@haml_buffer = @haml_buffer.upper;end;
          ensure
            @_virtual_path, @output_buffer = _old_virtual_path, _old_output_buffer
          end
Backtrace: /Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_view/template.rb:258:in `module_eval'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_view/template.rb:258:in `compile'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_view/template.rb:134:in `block in render'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/activesupport-3.0.9/lib/active_support/notifications.rb:54:in `instrument'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_view/template.rb:127:in `render'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_view/render/rendering.rb:59:in `block in _render_template'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/activesupport-3.0.9/lib/active_support/notifications.rb:52:in `block in instrument'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/activesupport-3.0.9/lib/active_support/notifications/instrumenter.rb:21:in `instrument'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/activesupport-3.0.9/lib/active_support/notifications.rb:52:in `instrument'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_view/render/rendering.rb:56:in `_render_template'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_view/render/rendering.rb:26:in `render'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/haml-3.1.2/lib/haml/helpers/action_view_mods.rb:13:in `render_with_haml'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/abstract_controller/rendering.rb:115:in `_render_template'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/abstract_controller/rendering.rb:109:in `render_to_body'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_controller/metal/renderers.rb:47:in `render_to_body'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_controller/metal/compatibility.rb:55:in `render_to_body'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/abstract_controller/rendering.rb:102:in `render_to_string'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/abstract_controller/rendering.rb:93:in `render'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_controller/metal/rendering.rb:17:in `render'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_controller/metal/instrumentation.rb:40:in `block (2 levels) in render'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/activesupport-3.0.9/lib/active_support/core_ext/benchmark.rb:5:in `block in ms'
/Users/jonkaufman/.rvm/rubies/ruby-1.9.2-p290/lib/ruby/1.9.1/benchmark.rb:310:in `realtime'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/activesupport-3.0.9/lib/active_support/core_ext/benchmark.rb:5:in `ms'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_controller/metal/instrumentation.rb:40:in `block in render'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_controller/metal/instrumentation.rb:78:in `cleanup_view_runtime'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/activerecord-3.0.9/lib/active_record/railties/controller_runtime.rb:15:in `cleanup_view_runtime'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_controller/metal/instrumentation.rb:39:in `render'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_controller/metal/implicit_render.rb:10:in `default_render'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_controller/metal/mime_responds.rb:261:in `block in retrieve_response_from_mimes'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_controller/metal/mime_responds.rb:192:in `call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_controller/metal/mime_responds.rb:192:in `respond_to'
/Users/jonkaufman/github/equity/app/controllers/companies_controller.rb:20:in `show'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_controller/metal/implicit_render.rb:4:in `send_action'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/abstract_controller/base.rb:150:in `process_action'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_controller/metal/rendering.rb:11:in `process_action'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/abstract_controller/callbacks.rb:18:in `block in process_action'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/activesupport-3.0.9/lib/active_support/callbacks.rb:436:in `_run__3361432511936299251__process_action__2127253488526671925__callbacks'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/activesupport-3.0.9/lib/active_support/callbacks.rb:410:in `_run_process_action_callbacks'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/activesupport-3.0.9/lib/active_support/callbacks.rb:94:in `run_callbacks'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/abstract_controller/callbacks.rb:17:in `process_action'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_controller/metal/instrumentation.rb:30:in `block in process_action'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/activesupport-3.0.9/lib/active_support/notifications.rb:52:in `block in instrument'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/activesupport-3.0.9/lib/active_support/notifications/instrumenter.rb:21:in `instrument'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/activesupport-3.0.9/lib/active_support/notifications.rb:52:in `instrument'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_controller/metal/instrumentation.rb:29:in `process_action'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_controller/metal/rescue.rb:17:in `process_action'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/abstract_controller/base.rb:119:in `process'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/abstract_controller/rendering.rb:41:in `process'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_controller/metal.rb:138:in `dispatch'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_controller/metal/rack_delegation.rb:14:in `dispatch'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_controller/metal.rb:178:in `block in action'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_dispatch/routing/route_set.rb:62:in `call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_dispatch/routing/route_set.rb:62:in `dispatch'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_dispatch/routing/route_set.rb:27:in `call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/rack-mount-0.6.14/lib/rack/mount/route_set.rb:148:in `block in call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/rack-mount-0.6.14/lib/rack/mount/code_generation.rb:93:in `block in recognize'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/rack-mount-0.6.14/lib/rack/mount/code_generation.rb:89:in `optimized_each'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/rack-mount-0.6.14/lib/rack/mount/code_generation.rb:92:in `recognize'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/rack-mount-0.6.14/lib/rack/mount/route_set.rb:139:in `call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_dispatch/routing/route_set.rb:493:in `call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_dispatch/middleware/best_standards_support.rb:17:in `call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_dispatch/middleware/head.rb:14:in `call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/rack-1.2.3/lib/rack/methodoverride.rb:24:in `call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_dispatch/middleware/params_parser.rb:21:in `call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_dispatch/middleware/flash.rb:182:in `call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_dispatch/middleware/session/abstract_store.rb:149:in `call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_dispatch/middleware/cookies.rb:302:in `call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/activerecord-3.0.9/lib/active_record/query_cache.rb:32:in `block in call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/activerecord-3.0.9/lib/active_record/connection_adapters/abstract/query_cache.rb:28:in `cache'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/activerecord-3.0.9/lib/active_record/query_cache.rb:12:in `cache'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/activerecord-3.0.9/lib/active_record/query_cache.rb:31:in `call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/activerecord-3.0.9/lib/active_record/connection_adapters/abstract/connection_pool.rb:354:in `call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_dispatch/middleware/callbacks.rb:46:in `block in call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/activesupport-3.0.9/lib/active_support/callbacks.rb:416:in `_run_call_callbacks'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_dispatch/middleware/callbacks.rb:44:in `call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/rack-1.2.3/lib/rack/sendfile.rb:107:in `call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_dispatch/middleware/remote_ip.rb:48:in `call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_dispatch/middleware/show_exceptions.rb:47:in `call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/railties-3.0.9/lib/rails/rack/logger.rb:13:in `call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/rack-1.2.3/lib/rack/runtime.rb:17:in `call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/activesupport-3.0.9/lib/active_support/cache/strategy/local_cache.rb:72:in `call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/rack-1.2.3/lib/rack/lock.rb:11:in `block in call'
<internal:prelude>:10:in `synchronize'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/rack-1.2.3/lib/rack/lock.rb:11:in `call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_dispatch/middleware/static.rb:30:in `call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/railties-3.0.9/lib/rails/application.rb:168:in `call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/railties-3.0.9/lib/rails/application.rb:77:in `method_missing'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/railties-3.0.9/lib/rails/rack/log_tailer.rb:14:in `call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/rack-1.2.3/lib/rack/content_length.rb:13:in `call'
/Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/rack-1.2.3/lib/rack/handler/webrick.rb:52:in `service'
/Users/jonkaufman/.rvm/rubies/ruby-1.9.2-p290/lib/ruby/1.9.1/webrick/httpserver.rb:111:in `service'
/Users/jonkaufman/.rvm/rubies/ruby-1.9.2-p290/lib/ruby/1.9.1/webrick/httpserver.rb:70:in `run'
/Users/jonkaufman/.rvm/rubies/ruby-1.9.2-p290/lib/ruby/1.9.1/webrick/server.rb:183:in `block in start_thread'
Rendered companies/show.html.haml within layouts/application (2.7ms)
Completed 500 Internal Server Error in 66ms

ActionView::Template::Error (/Users/jonkaufman/github/equity/app/views/companies/show.html.haml:9: syntax error, unexpected tIDENTIFIER, expecting tASSOC
... nil, :style => {"{color: "blue"}"})}>\n  Investments\n</p>\...
...                               ^):
    6:     Name:
    7:     = @company.name
    8: 
    9: %p{:style => {"{color: "blue"}"}}
    10:   Investments
    11:   
    12: %table
  app/controllers/companies_controller.rb:20:in `show'

Rendered /Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_dispatch/middleware/templates/rescues/_trace.erb (0.9ms)
Rendered /Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_dispatch/middleware/templates/rescues/_request_and_response.erb (6.9ms)
Rendered /Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_dispatch/middleware/templates/rescues/template_error.erb within rescues/layout (10.9ms)


Started GET "/companies/2" for 127.0.0.1 at 2011-08-28 00:46:50 -0400
  Processing by CompaniesController#show as HTML
  Parameters: {"id"=>"2"}
  [1m[35mCompany Load (0.1ms)[0m  SELECT "companies".* FROM "companies" WHERE "companies"."id" = 2 LIMIT 1
  [1m[36mInvestment Load (0.2ms)[0m  [1mSELECT "investments".* FROM "investments" WHERE ("investments".company_id = 2)[0m
  [1m[35mEntity Load (0.2ms)[0m  SELECT "entities".* FROM "entities" WHERE "entities"."id" = 1 LIMIT 1
  [1m[36mCompany Load (0.2ms)[0m  [1mSELECT "companies".* FROM "companies" WHERE "companies"."id" = 1 LIMIT 1[0m
Rendered companies/show.html.haml within layouts/application (31.5ms)
Completed 200 OK in 78ms (Views: 34.6ms | ActiveRecord: 0.6ms)


Started GET "/companies/2" for 127.0.0.1 at 2011-08-28 00:46:53 -0400
  Processing by CompaniesController#show as HTML
  Parameters: {"id"=>"2"}
  [1m[35mCompany Load (0.1ms)[0m  SELECT "companies".* FROM "companies" WHERE "companies"."id" = 2 LIMIT 1
  [1m[36mInvestment Load (0.2ms)[0m  [1mSELECT "investments".* FROM "investments" WHERE ("investments".company_id = 2)[0m
  [1m[35mEntity Load (0.2ms)[0m  SELECT "entities".* FROM "entities" WHERE "entities"."id" = 1 LIMIT 1
  [1m[36mCompany Load (0.2ms)[0m  [1mSELECT "companies".* FROM "companies" WHERE "companies"."id" = 1 LIMIT 1[0m
Rendered companies/show.html.haml within layouts/application (13.1ms)
Completed 200 OK in 77ms (Views: 16.1ms | ActiveRecord: 0.6ms)


Started GET "/companies/2" for 127.0.0.1 at 2011-08-28 00:52:36 -0400
  Processing by CompaniesController#show as HTML
  Parameters: {"id"=>"2"}
  [1m[35mCompany Load (0.1ms)[0m  SELECT "companies".* FROM "companies" WHERE "companies"."id" = 2 LIMIT 1
  [1m[36mInvestment Load (0.2ms)[0m  [1mSELECT "investments".* FROM "investments" WHERE ("investments".company_id = 2)[0m
  [1m[35mEntity Load (0.2ms)[0m  SELECT "entities".* FROM "entities" WHERE "entities"."id" = 1 LIMIT 1
  [1m[36mCompany Load (0.1ms)[0m  [1mSELECT "companies".* FROM "companies" WHERE "companies"."id" = 1 LIMIT 1[0m
Rendered companies/show.html.haml within layouts/application (12.4ms)
Completed 200 OK in 79ms (Views: 15.6ms | ActiveRecord: 0.6ms)


Started GET "/companies/2" for 127.0.0.1 at 2011-08-28 00:52:37 -0400
  Processing by CompaniesController#show as HTML
  Parameters: {"id"=>"2"}
  [1m[35mCompany Load (0.1ms)[0m  SELECT "companies".* FROM "companies" WHERE "companies"."id" = 2 LIMIT 1
  [1m[36mInvestment Load (0.2ms)[0m  [1mSELECT "investments".* FROM "investments" WHERE ("investments".company_id = 2)[0m
  [1m[35mEntity Load (0.2ms)[0m  SELECT "entities".* FROM "entities" WHERE "entities"."id" = 1 LIMIT 1
  [1m[36mCompany Load (0.1ms)[0m  [1mSELECT "companies".* FROM "companies" WHERE "companies"."id" = 1 LIMIT 1[0m
Rendered companies/show.html.haml within layouts/application (12.3ms)
Completed 200 OK in 77ms (Views: 15.2ms | ActiveRecord: 0.6ms)


Started GET "/companies/2" for 127.0.0.1 at 2011-08-28 00:52:38 -0400
  Processing by CompaniesController#show as HTML
  Parameters: {"id"=>"2"}
  [1m[35mCompany Load (0.1ms)[0m  SELECT "companies".* FROM "companies" WHERE "companies"."id" = 2 LIMIT 1
  [1m[36mInvestment Load (0.2ms)[0m  [1mSELECT "investments".* FROM "investments" WHERE ("investments".company_id = 2)[0m
  [1m[35mEntity Load (0.2ms)[0m  SELECT "entities".* FROM "entities" WHERE "entities"."id" = 1 LIMIT 1
  [1m[36mCompany Load (0.1ms)[0m  [1mSELECT "companies".* FROM "companies" WHERE "companies"."id" = 1 LIMIT 1[0m
Rendered companies/show.html.haml within layouts/application (12.1ms)
Completed 200 OK in 77ms (Views: 15.1ms | ActiveRecord: 0.7ms)


Started GET "/" for 127.0.0.1 at 2011-08-28 00:52:43 -0400
  Processing by AdminController#home as HTML
  [1m[35mSQL (0.1ms)[0m  SELECT COUNT(*) FROM "companies"
  [1m[36mSQL (0.1ms)[0m  [1mSELECT COUNT(*) FROM "entities"[0m
  [1m[35mSQL (0.1ms)[0m  SELECT COUNT(*) FROM "securities"
  [1m[36mSQL (0.1ms)[0m  [1mSELECT COUNT(*) FROM "kinds"[0m
  [1m[35mSQL (0.1ms)[0m  SELECT COUNT(*) FROM "transactions"
  [1m[36mSQL (0.1ms)[0m  [1mSELECT COUNT(*) FROM "investments"[0m
Rendered admin/home.html.haml within layouts/application (5.2ms)
Completed 200 OK in 101ms (Views: 8.5ms | ActiveRecord: 0.8ms)


Started GET "/companies" for 127.0.0.1 at 2011-08-28 00:52:46 -0400
  Processing by CompaniesController#index as HTML
  [1m[35mCompany Load (0.4ms)[0m  SELECT "companies".* FROM "companies"
Rendered companies/index.html.erb within layouts/application (7.6ms)
Completed 200 OK in 22ms (Views: 10.8ms | ActiveRecord: 0.4ms)


Started GET "/companies/2" for 127.0.0.1 at 2011-08-28 00:52:47 -0400
  Processing by CompaniesController#show as HTML
  Parameters: {"id"=>"2"}
  [1m[36mCompany Load (0.1ms)[0m  [1mSELECT "companies".* FROM "companies" WHERE "companies"."id" = 2 LIMIT 1[0m
  [1m[35mInvestment Load (0.2ms)[0m  SELECT "investments".* FROM "investments" WHERE ("investments".company_id = 2)
  [1m[36mEntity Load (0.3ms)[0m  [1mSELECT "entities".* FROM "entities" WHERE "entities"."id" = 1 LIMIT 1[0m
  [1m[35mCompany Load (0.2ms)[0m  SELECT "companies".* FROM "companies" WHERE "companies"."id" = 1 LIMIT 1
Rendered companies/show.html.haml within layouts/application (31.6ms)
Completed 200 OK in 98ms (Views: 34.8ms | ActiveRecord: 0.8ms)


Started GET "/companies/2" for 127.0.0.1 at 2011-08-28 00:53:30 -0400
  Processing by CompaniesController#show as HTML
  Parameters: {"id"=>"2"}
  [1m[36mCompany Load (0.1ms)[0m  [1mSELECT "companies".* FROM "companies" WHERE "companies"."id" = 2 LIMIT 1[0m
  [1m[35mInvestment Load (0.2ms)[0m  SELECT "investments".* FROM "investments" WHERE ("investments".company_id = 2)
  [1m[36mEntity Load (0.2ms)[0m  [1mSELECT "entities".* FROM "entities" WHERE "entities"."id" = 1 LIMIT 1[0m
  [1m[35mCompany Load (0.2ms)[0m  SELECT "companies".* FROM "companies" WHERE "companies"."id" = 1 LIMIT 1
Rendered companies/show.html.haml within layouts/application (12.7ms)
Completed 200 OK in 78ms (Views: 15.7ms | ActiveRecord: 0.6ms)


Started GET "/companies/2" for 127.0.0.1 at 2011-08-28 00:54:25 -0400
  Processing by CompaniesController#show as HTML
  Parameters: {"id"=>"2"}
  [1m[36mCompany Load (0.1ms)[0m  [1mSELECT "companies".* FROM "companies" WHERE "companies"."id" = 2 LIMIT 1[0m
  [1m[35mInvestment Load (0.2ms)[0m  SELECT "investments".* FROM "investments" WHERE ("investments".company_id = 2)
  [1m[36mEntity Load (0.2ms)[0m  [1mSELECT "entities".* FROM "entities" WHERE "entities"."id" = 1 LIMIT 1[0m
  [1m[35mCompany Load (0.1ms)[0m  SELECT "companies".* FROM "companies" WHERE "companies"."id" = 1 LIMIT 1
Rendered companies/show.html.haml within layouts/application (12.6ms)
Completed 200 OK in 77ms (Views: 15.6ms | ActiveRecord: 0.6ms)


Started GET "/" for 127.0.0.1 at 2011-08-28 00:55:06 -0400
  Processing by AdminController#home as HTML
  [1m[36mSQL (0.1ms)[0m  [1mSELECT COUNT(*) FROM "companies"[0m
  [1m[35mSQL (0.1ms)[0m  SELECT COUNT(*) FROM "entities"
  [1m[36mSQL (0.1ms)[0m  [1mSELECT COUNT(*) FROM "securities"[0m
  [1m[35mSQL (0.1ms)[0m  SELECT COUNT(*) FROM "kinds"
  [1m[36mSQL (0.1ms)[0m  [1mSELECT COUNT(*) FROM "transactions"[0m
  [1m[35mSQL (0.1ms)[0m  SELECT COUNT(*) FROM "investments"
Rendered admin/home.html.haml within layouts/application (6.1ms)
Completed 200 OK in 121ms (Views: 9.4ms | ActiveRecord: 0.8ms)


Started GET "/companies" for 127.0.0.1 at 2011-08-28 00:55:08 -0400
  Processing by CompaniesController#index as HTML
  [1m[36mCompany Load (0.4ms)[0m  [1mSELECT "companies".* FROM "companies"[0m
Rendered companies/index.html.erb within layouts/application (7.9ms)
Completed 200 OK in 44ms (Views: 11.1ms | ActiveRecord: 0.4ms)


Started GET "/companies/2" for 127.0.0.1 at 2011-08-28 00:55:09 -0400
  Processing by CompaniesController#show as HTML
  Parameters: {"id"=>"2"}
  [1m[35mCompany Load (0.2ms)[0m  SELECT "companies".* FROM "companies" WHERE "companies"."id" = 2 LIMIT 1
  [1m[36mInvestment Load (0.2ms)[0m  [1mSELECT "investments".* FROM "investments" WHERE ("investments".company_id = 2)[0m
  [1m[35mEntity Load (0.3ms)[0m  SELECT "entities".* FROM "entities" WHERE "entities"."id" = 1 LIMIT 1
Rendered companies/show.html.haml within layouts/application (1.1ms)
Completed 500 Internal Server Error in 66ms

ActionView::Template::Error (Inconsistent indentation: 5 spaces were used for indentation, but the rest of the document was indented using 2 spaces.):
    9: %table
    10:   %tr 
    11:     :plain
    12:      Investmets:
    13:   - @entities.each do |e|
    14:     %tr= "#{e.company.name}: #{e.name}"
    15:       
  app/views/companies/show.html.haml:12
  app/controllers/companies_controller.rb:20:in `show'

Rendered /Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_dispatch/middleware/templates/rescues/_trace.erb (0.9ms)
Rendered /Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_dispatch/middleware/templates/rescues/_request_and_response.erb (6.9ms)
Rendered /Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_dispatch/middleware/templates/rescues/template_error.erb within rescues/layout (11.0ms)


Started GET "/companies/2" for 127.0.0.1 at 2011-08-28 00:55:57 -0400
  Processing by CompaniesController#show as HTML
  Parameters: {"id"=>"2"}
  [1m[36mCompany Load (0.1ms)[0m  [1mSELECT "companies".* FROM "companies" WHERE "companies"."id" = 2 LIMIT 1[0m
  [1m[35mInvestment Load (0.2ms)[0m  SELECT "investments".* FROM "investments" WHERE ("investments".company_id = 2)
  [1m[36mEntity Load (0.1ms)[0m  [1mSELECT "entities".* FROM "entities" WHERE "entities"."id" = 1 LIMIT 1[0m
  [1m[35mCompany Load (0.1ms)[0m  SELECT "companies".* FROM "companies" WHERE "companies"."id" = 1 LIMIT 1
Rendered companies/show.html.haml within layouts/application (32.5ms)
Completed 200 OK in 77ms (Views: 35.4ms | ActiveRecord: 0.6ms)


Started GET "/companies/2" for 127.0.0.1 at 2011-08-28 00:56:22 -0400
  Processing by CompaniesController#show as HTML
  Parameters: {"id"=>"2"}
  [1m[36mCompany Load (0.1ms)[0m  [1mSELECT "companies".* FROM "companies" WHERE "companies"."id" = 2 LIMIT 1[0m
  [1m[35mInvestment Load (0.2ms)[0m  SELECT "investments".* FROM "investments" WHERE ("investments".company_id = 2)
  [1m[36mEntity Load (0.2ms)[0m  [1mSELECT "entities".* FROM "entities" WHERE "entities"."id" = 1 LIMIT 1[0m
  [1m[35mCompany Load (0.2ms)[0m  SELECT "companies".* FROM "companies" WHERE "companies"."id" = 1 LIMIT 1
Rendered companies/show.html.haml within layouts/application (12.9ms)
Completed 200 OK in 77ms (Views: 15.9ms | ActiveRecord: 0.6ms)


Started GET "/companies/2" for 127.0.0.1 at 2011-08-28 00:58:12 -0400
  Processing by CompaniesController#show as HTML
  Parameters: {"id"=>"2"}
  [1m[36mCompany Load (0.1ms)[0m  [1mSELECT "companies".* FROM "companies" WHERE "companies"."id" = 2 LIMIT 1[0m
  [1m[35mInvestment Load (0.2ms)[0m  SELECT "investments".* FROM "investments" WHERE ("investments".company_id = 2)
  [1m[36mEntity Load (0.2ms)[0m  [1mSELECT "entities".* FROM "entities" WHERE "entities"."id" = 1 LIMIT 1[0m
Rendered companies/show.html.haml within layouts/application (0.9ms)
Completed 500 Internal Server Error in 67ms

ActionView::Template::Error (There's no Ruby code for = to evaluate.):
    7:     = @company.name
    8: 
    9: %table
    10:   %tr=
    11:     %td= "Investmets:"
    12:   - @entities.each do |e|
    13:     %tr
  app/views/companies/show.html.haml:10
  app/controllers/companies_controller.rb:20:in `show'

Rendered /Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_dispatch/middleware/templates/rescues/_trace.erb (1.0ms)
Rendered /Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_dispatch/middleware/templates/rescues/_request_and_response.erb (7.3ms)
Rendered /Users/jonkaufman/.rvm/gems/ruby-1.9.2-p290@rails309/gems/actionpack-3.0.9/lib/action_dispatch/middleware/templates/rescues/template_error.erb within rescues/layout (11.5ms)


Started GET "/companies/2" for 127.0.0.1 at 2011-08-28 00:58:28 -0400
  Processing by CompaniesController#show as HTML
  Parameters: {"id"=>"2"}
  [1m[35mCompany Load (0.2ms)[0m  SELECT "companies".* FROM "companies" WHERE "companies"."id" = 2 LIMIT 1
  [1m[36mInvestment Load (0.2ms)[0m  [1mSELECT "investments".* FROM "investments" WHERE ("investments".company_id = 2)[0m
  [1m[35mEntity Load (0.2ms)[0m  SELECT "entities".* FROM "entities" WHERE "entities"."id" = 1 LIMIT 1
  [1m[36mCompany Loa