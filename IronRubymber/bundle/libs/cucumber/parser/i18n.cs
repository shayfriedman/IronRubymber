module Cucumber
  module Parser
    module I18n
      grammar <%= @grammar_name %>
        include Feature
        include Table
        include PyString

        rule feature
          feature_sub
        end

        rule background_keyword
          <%= treetop_keywords(background_keywords) %> ':'
        end

        rule scenario_keyword
          <%= treetop_keywords(scenario_keywords) %> ':'
        end

        rule scenario_outline_keyword
          <%= treetop_keywords(scenario_outline_keywords) %> ':'
        end

        rule step_keyword
          <%= treetop_keywords(step_keywords) %>
        end

        rule examples_keyword
          <%= treetop_keywords(examples_keywords) %> ':'?
        end
      end
    end
  end
end
