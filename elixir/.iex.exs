IEx.configure(
  inspect: [pretty: true],
  history_size: 100,
  colors: [
    ls_directory: :cyan,
    ls_device: :yellow,
    eval_result: [:green, :bright],
    eval_error: [:red,:bright],
    eval_info: [:yellow, :bright ],
  ]
)
