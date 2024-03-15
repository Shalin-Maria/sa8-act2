class Quiz
    def initialize(questions)
      @questions = questions
      define_question_methods
    end
  
    private
  
    def define_question_methods
      @questions.each do |topic, question|
        puts "question_about_#{topic}" { puts question }
      end
    end
  end
  questions = {
    math: "What is natural log?",
    history: "Who was the first president of the United States?"
  }
  
  quiz = Quiz.new(questions)
  
  quiz.question_about_math  
  quiz.question_about_history  
  
  begin
    quiz.question_about_geography  
  rescue NoMethodError => e
    puts e.message  
  end