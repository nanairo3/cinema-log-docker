{"filter":false,"title":"application_controller.rb","tooltip":"/app/controllers/application_controller.rb","undoManager":{"mark":7,"position":7,"stack":[[{"start":{"row":8,"column":6},"end":{"row":8,"column":70},"action":"remove","lines":["devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :age])"],"id":2},{"start":{"row":8,"column":6},"end":{"row":15,"column":5},"action":"insert","lines":["added_attrs = [","      :email, :name, :password, :password_confirmation,","      :my_book1, :my_book2, :my_book3, :self_introduction,","      :image,","    ]","    devise_parameter_sanitizer.permit(:sign_up, keys: added_attrs)","    devise_parameter_sanitizer.permit(:account_update, keys: added_attrs)","  end"]}],[{"start":{"row":15,"column":4},"end":{"row":15,"column":5},"action":"remove","lines":["d"],"id":3},{"start":{"row":15,"column":3},"end":{"row":15,"column":4},"action":"remove","lines":["n"]},{"start":{"row":15,"column":2},"end":{"row":15,"column":3},"action":"remove","lines":["e"]},{"start":{"row":15,"column":0},"end":{"row":15,"column":2},"action":"remove","lines":["  "]},{"start":{"row":14,"column":73},"end":{"row":15,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":10,"column":57},"end":{"row":10,"column":58},"action":"remove","lines":[","],"id":4},{"start":{"row":10,"column":56},"end":{"row":10,"column":57},"action":"remove","lines":["n"]},{"start":{"row":10,"column":55},"end":{"row":10,"column":56},"action":"remove","lines":["o"]},{"start":{"row":10,"column":54},"end":{"row":10,"column":55},"action":"remove","lines":["i"]}],[{"start":{"row":10,"column":53},"end":{"row":10,"column":54},"action":"remove","lines":["t"],"id":5},{"start":{"row":10,"column":52},"end":{"row":10,"column":53},"action":"remove","lines":["c"]},{"start":{"row":10,"column":51},"end":{"row":10,"column":52},"action":"remove","lines":["u"]},{"start":{"row":10,"column":50},"end":{"row":10,"column":51},"action":"remove","lines":["d"]},{"start":{"row":10,"column":49},"end":{"row":10,"column":50},"action":"remove","lines":["o"]},{"start":{"row":10,"column":48},"end":{"row":10,"column":49},"action":"remove","lines":["r"]},{"start":{"row":10,"column":47},"end":{"row":10,"column":48},"action":"remove","lines":["t"]},{"start":{"row":10,"column":46},"end":{"row":10,"column":47},"action":"remove","lines":["n"]},{"start":{"row":10,"column":45},"end":{"row":10,"column":46},"action":"remove","lines":["i"]},{"start":{"row":10,"column":44},"end":{"row":10,"column":45},"action":"remove","lines":["_"]},{"start":{"row":10,"column":43},"end":{"row":10,"column":44},"action":"remove","lines":["f"]},{"start":{"row":10,"column":42},"end":{"row":10,"column":43},"action":"remove","lines":["l"]},{"start":{"row":10,"column":41},"end":{"row":10,"column":42},"action":"remove","lines":["e"]},{"start":{"row":10,"column":40},"end":{"row":10,"column":41},"action":"remove","lines":["s"]},{"start":{"row":10,"column":39},"end":{"row":10,"column":40},"action":"remove","lines":[":"]},{"start":{"row":10,"column":38},"end":{"row":10,"column":39},"action":"remove","lines":[" "]},{"start":{"row":10,"column":37},"end":{"row":10,"column":38},"action":"remove","lines":[","]},{"start":{"row":10,"column":36},"end":{"row":10,"column":37},"action":"remove","lines":["3"]},{"start":{"row":10,"column":35},"end":{"row":10,"column":36},"action":"remove","lines":["k"]},{"start":{"row":10,"column":34},"end":{"row":10,"column":35},"action":"remove","lines":["o"]},{"start":{"row":10,"column":33},"end":{"row":10,"column":34},"action":"remove","lines":["o"]},{"start":{"row":10,"column":32},"end":{"row":10,"column":33},"action":"remove","lines":["b"]},{"start":{"row":10,"column":31},"end":{"row":10,"column":32},"action":"remove","lines":["_"]},{"start":{"row":10,"column":30},"end":{"row":10,"column":31},"action":"remove","lines":["y"]},{"start":{"row":10,"column":29},"end":{"row":10,"column":30},"action":"remove","lines":["m"]},{"start":{"row":10,"column":28},"end":{"row":10,"column":29},"action":"remove","lines":[":"]},{"start":{"row":10,"column":27},"end":{"row":10,"column":28},"action":"remove","lines":[" "]},{"start":{"row":10,"column":26},"end":{"row":10,"column":27},"action":"remove","lines":[","]},{"start":{"row":10,"column":25},"end":{"row":10,"column":26},"action":"remove","lines":["2"]},{"start":{"row":10,"column":24},"end":{"row":10,"column":25},"action":"remove","lines":["k"]},{"start":{"row":10,"column":23},"end":{"row":10,"column":24},"action":"remove","lines":["o"]},{"start":{"row":10,"column":22},"end":{"row":10,"column":23},"action":"remove","lines":["o"]},{"start":{"row":10,"column":21},"end":{"row":10,"column":22},"action":"remove","lines":["b"]},{"start":{"row":10,"column":20},"end":{"row":10,"column":21},"action":"remove","lines":["_"]},{"start":{"row":10,"column":19},"end":{"row":10,"column":20},"action":"remove","lines":["y"]},{"start":{"row":10,"column":18},"end":{"row":10,"column":19},"action":"remove","lines":["m"]},{"start":{"row":10,"column":17},"end":{"row":10,"column":18},"action":"remove","lines":[":"]},{"start":{"row":10,"column":16},"end":{"row":10,"column":17},"action":"remove","lines":[" "]},{"start":{"row":10,"column":15},"end":{"row":10,"column":16},"action":"remove","lines":[","]},{"start":{"row":10,"column":14},"end":{"row":10,"column":15},"action":"remove","lines":["1"]},{"start":{"row":10,"column":13},"end":{"row":10,"column":14},"action":"remove","lines":["k"]}],[{"start":{"row":10,"column":12},"end":{"row":10,"column":13},"action":"remove","lines":["o"],"id":6},{"start":{"row":10,"column":11},"end":{"row":10,"column":12},"action":"remove","lines":["o"]},{"start":{"row":10,"column":10},"end":{"row":10,"column":11},"action":"remove","lines":["b"]},{"start":{"row":10,"column":9},"end":{"row":10,"column":10},"action":"remove","lines":["_"]},{"start":{"row":10,"column":8},"end":{"row":10,"column":9},"action":"remove","lines":["y"]},{"start":{"row":10,"column":7},"end":{"row":10,"column":8},"action":"remove","lines":["m"]},{"start":{"row":10,"column":6},"end":{"row":10,"column":7},"action":"remove","lines":[":"]},{"start":{"row":10,"column":4},"end":{"row":10,"column":6},"action":"remove","lines":["  "]},{"start":{"row":10,"column":2},"end":{"row":10,"column":4},"action":"remove","lines":["  "]},{"start":{"row":10,"column":0},"end":{"row":10,"column":2},"action":"remove","lines":["  "]}],[{"start":{"row":9,"column":55},"end":{"row":10,"column":0},"action":"remove","lines":["",""],"id":7}],[{"start":{"row":10,"column":12},"end":{"row":10,"column":13},"action":"remove","lines":[","],"id":8}],[{"start":{"row":10,"column":12},"end":{"row":10,"column":13},"action":"insert","lines":[","],"id":9}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":16,"column":0},"end":{"row":16,"column":0},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":{"row":23,"mode":"ace/mode/ruby"}},"timestamp":1568083930552,"hash":"4cb89532fbcecacbb6a7ccfce9cc79d974c68613"}