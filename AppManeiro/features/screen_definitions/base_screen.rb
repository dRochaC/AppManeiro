require 'calabash-android/abase'

class BaseScreen < Calabash::ABase

    def touch_view_with_text(botao)
        touch "* text:'#{botao}'"
    end

    def touch_view_with_id(botao)
        touch "* id:'#{botao}'"
    end

    def view_exists(view_text)
        wait_for(timeout: 10) { element_exists "* text:'#{view_text}'" }
    end

    def fill_view_with_text(text)
        keyboard_enter_text(text)
        hide_soft_keyboard if keyboard_visible?
        wait_for(timeout: 30) { !keyboard_visible? }
    end

end