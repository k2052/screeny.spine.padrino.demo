rivets.configure adapter:
  subscribe: (obj, keypath, callback) ->
    callback.wrapped = (m, v) ->
      callback v

    obj.bind "update:" + keypath, callback.wrapped

  unsubscribe: (obj, keypath, callback) ->
    obj.unbind "update:" + keypath, callback.wrapped

  read: (obj, keypath) ->
    obj[keypath]

  publish: (obj, keypath, value) ->
    obj.updateAttribute(keypath, value)