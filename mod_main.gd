extends Node

func _init() -> void:
    print("ExampleMod: Initializing...")
    install_script_extensions()
    install_script_hooks()

func _ready() -> void:
    print("ExampleMod: Ready!")

func install_script_extensions() -> void:
    pass

func install_script_hooks() -> void:
    pass

func my_hook_function(chain: HemoHookChain) -> void:
    var player = chain.reference_object
    print("ExampleMod: Player _ready is being called!")
    chain.execute_next()
    print("ExampleMod: Player _ready completed!")
