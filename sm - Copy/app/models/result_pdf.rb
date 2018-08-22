lass ResultPdf < Prawn::Document
	def initialize(result)
		super(top_margin:70)
		@result = Result.all
		reg_number
		#text 'Marks for: '+result.student.reg_number
		line_marks
		
	end
	def reg_number
		#text "Marks for: #{result.student.reg_number}"

	end
	def line_marks
		move_down 20
		table line_marks_rows do 
			row(0).font_style= :bold
		end
	end
	def line_marks_rows
		[['Registration Number','Module Code', 'Level', 'Department', 'Marks']]+
		@result.map do |result|
			[result.student.reg_number, result.course.module_code, result.level, result.department.name, result.marks]
		end
	end

end 