class App 

    def self.header(text = banner_text)
        banner = TTY::Box.frame(*box_options) {text}
    end
    
    def self.exit (text = exit_text)
        banner = TTY::Box.frame(*box_options) {text}
    end

    def self.box_options
        [
            width: TTY::Screen.width,
            height: 12,
            align: :center,
            style: banner_style
        ]

    end

    def self.banner_style
    {
      fg: :blue,
      border: { fg: :blue },
      align: :center 
    }
    end
    
    def self.banner_text
        " 

        '||    ||'                  ||          '||          
         |||  |||  ... ...   ....  ...    ....   ||  .... ...
         |'|..'||   ||  ||  ||. '   ||  .|   ''  ||   '|.  | 
         | '|' ||   ||  ||  . '|..  ||  ||       ||    '|.|  
        .|. | .||.  '|..'|. |'..|' .||.  '|...' .||.    '|   
                                                     .. |    
                                                      ''  
        "
    end

    def self.exit_text 
        "

       |''||''| '||                       '||                                         \  
          ||     || ..    ....   .. ...    ||  ..     .... ...   ...   ... ...     ||  \\
           ||     ||' ||  '' .||   ||  ||   || .'       '|.  |  .|  '|.  ||  ||         ||
           ||     ||  ||  .|' ||   ||  ||   ||'|.        '|.|   ||   ||  ||  ||     ||  ||
          .||.   .||. ||. '|..'|' .||. ||. .||. ||.       '|     '|..|'  '|..'|.        ||
                                                       .. |                             //
                                                         ''                             /  
        
    "
    end
end
