require_relative 'KLastLines'
require "test/unit"

class TesKtLastLines < Test::Unit::TestCase
    def setup
        
    end
    def test_last_3_lines_from_a_big_file_printed_correctly  
        file_name = "Summer camp diary 2013.txt"
        file = File.new(file_name, "r:UTF-8")
        
        res = printLastLines(file, 3)
        file.close

        model = "\nBye-bye! \nThanks for reading this."        
        assert_equal(model, res)
    end
    def test_last_2_lines_from_a_2_line_file  
        file_name = "Jelena summary.txt"
        file = File.new(file_name, "r:UTF-8")

        res = printLastLines(file, 2)

        model = "Passionate about building products that bring value to people. With 10 years of experience in software development leading definition, development and delivery of web products and services that are low latency, highly loaded, easily scalable. \nMy purpose is to build and drive cross-functional development teams to create the best possible product for client and feel happy doing that."
        assert_equal(model, res)
    end
    def test_last_3_lines_from_a_2_line_file  
        file_name = "Jelena summary.txt"
        file = File.new(file_name, "r:UTF-8")

        res = printLastLines(file, 3)

        model = "Passionate about building products that bring value to people. With 10 years of experience in software development leading definition, development and delivery of web products and services that are low latency, highly loaded, easily scalable. \nMy purpose is to build and drive cross-functional development teams to create the best possible product for client and feel happy doing that."
        assert_equal(model, res)
    end
    def test_last_3_lines_from_empty_file  
        file_name = "Empty.txt"
        file = File.new(file_name, "r:UTF-8")

        res = printLastLines(file, 3)

        model = ""
        assert_equal(model, res)
    end
end