# inside app/controllers/welcome_controller.rb  
class WelcomeController < ApplicationController  
    def summary
        @now = Time.current-6.hours

        @last_juuled = Time.new(2020, 12, 21, 16, 28, 0)
        @last_juuled_seconds = @last_juuled.to_f * 1000 + 6.hours * 1000 #Year, Month, Date, Hour, Minute, Second
        @juul_streak = @now - @last_juuled
        @juul_streak_to_hours = @juul_streak / 60 / 60
        
        @juul_cost = 13
        @juul_savings = @juul_streak / 60 / 60 / 24 * @juul_cost
        
        @juul_facts = [
            "Psychological symptoms include: a strong desire or craving for nicotine, irritability or frustration, low mood, difficulty concentrating, anxiety, mood swings", 
            "Withdrawal symptoms set in between 4 and 24 hours after a person smokes their last cigarette. The symptoms peak around day 3 of quitting and then gradually subside over the following 3 to 4 weeks.", 
            "health risks of smoking e-cigarettes are not yet known. They may be less harmful than smoking tobacco cigarettes, but there is currently insufficient research to confirm this."]
        @juul_six_month_milestone = @juul_streak_to_hours / 4320
        @juul_record = @juul_streak_to_hours / 3600
        
        
        @went_vegan = Time.new(2021, 01, 02, 16, 00, 0).to_f * 1000 + 6.hours * 1000 #Year, Month, Date, Hour, Minute, Second

        @company = Time.new(2019, 9, 16) #Year, Month, Date, Hour, Minute, Second
        @company_seconds = @company.to_f * 1000 + 6.hours * 1000
        @company_streak = @now - @company
        @company_streak_to_hours = @company_streak / 60 / 60
        @company_two_year_milestone = @company_streak_to_hours / 17520

        
        render("welcome/index.html.erb")
    end
end  