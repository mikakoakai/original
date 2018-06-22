 public function show($id)
    {
      $item = Item::find($id);
      $want_users = $item->want_users;

      return view('items.show', [
          'item' => $item,
          'want_users' => $want_users,
      ]);
    }