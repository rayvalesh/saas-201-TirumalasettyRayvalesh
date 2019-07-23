# require './department' # Include other files in the same directory

# Your application
class Application
  # attr_accessor :departments

  def initialize
    #self.departments = ['EEE', 'MECH', 'CSE', 'CIVIL'].each { |dept| Department.new dept }
    @stud_names_EEE = []
    @stud_names_MECH = []
    @stud_names_CSE = []
    @stud_names_CIVIL = []
    @stud_names = []
    @stud_deps =[]
    @stud_deps_EEE = []
    @stud_deps_MECH = []
    @stud_deps_CSE = []
    @stud_deps_CIVIL = []
    @stud_secs = []
    @stud_rollnos = " "
    @stud_rollnos =[]
    @stud_secs_EEE = []
    @stud_secs_MECH = []
    @stud_secs_CSE = []
    @stud_secs_CIVIL = []
    @stud_rollnos_EEE = []
    @stud_rollnos_MECH = []
    @stud_rollnos_CSE = []
    @stud_rollnos_CIVIL = []
    @list_sec_index =[]
    @sec_index = []
    @stud_roll_nos =[]
    @sec_count = 0
    @stud = ""
    @stud_s =[]
    @t = -1
    @k = 0
    @m = 0
    @p = 0
    @q = 0
    @q1 = 0
    @q2 = 0
    @q3 = 0
    @q4 = 0
    @q5 = 0
    @q6 = 0
    @q7 = 0
    @p = []
    @x =[]
    @o =[]
    @i =0
    @w =[]
    @sec = " "
    @stud_d = ""
    @update_sec = " "
    @update_rollno = " "
  end

  def enroll(student_name, student_department)
    # This is a sample implementation. you can write your own code
    #department = departments.detect { |dept| dept == student_department }
    #department.enroll student_name
    if student_name.match(/[?<>',?\[\]}{=)(*&^%$#`~{}@-]/)
      return "Error: Please enter the student name without special characters"
    end
    
    if (student_department.upcase !="EEE"&&student_department.upcase !="MECH"&&student_department.upcase !="CSE"&&student_department.upcase !="CIVIL")
      return "Error: Enter a valid Department name from the above choices"
    end
    
    @stud_deps << student_department.upcase
    @stud_names << student_name

    if @stud_deps.count(student_department) > 30 
      return "Error: Seats are not available in #{student_department}"
    end
    case student_department.upcase
     when "EEE"
      @stud_names_EEE << student_name
      @stud_deps_EEE << student_department.upcase
      if @stud_secs_EEE.count("A") < 10
       @stud_secs << "A"
       @stud_secs_EEE <<"A"
       @stud_rollnos = "EEE" + "A" + "%.2i" %@stud_secs_EEE.count("A")
       @stud_rollnos_EEE << @stud_rollnos
      elsif @stud_secs_EEE.count("A") >=10 && @stud_secs_EEE.count("B")< 10
       @stud_secs << "B"
       @stud_secs_EEE <<"B"
       @stud_rollnos = "EEE" + "B" + "%.2i" %@stud_secs_EEE.count("B")
       @stud_rollnos_EEE << @stud_rollnos
      else @stud_secs_EEE.count("A") >= 10 && @stud_secs_EEE.count("B") >= 10 &&@stud_secs_EEE.count("C") < 10
       @stud_secs << "C"
       @stud_names_EEE << "C"
       @stud_rollnos = "EEE" + "C" + "%.2i" %@stud_secs_EEE.count("C")
       @stud_rollnos_EEE << @stud_rollnos
      end
      @stud_roll_nos << @stud_rollnos
     when "MECH" 
      @stud_names_MECH << student_name
      @stud_deps_MECH << student_department.upcase
      if @stud_secs_MECH.count("A") <= 9
       @stud_secs << "A"
       @stud_secs_MECH <<"A"
       @stud_rollnos = "MEC" + "A" + "%.2i" %@stud_secs_MECH.count("A")
       @stud_rollnos_MECH << @stud_rollnos
      elsif @stud_secs_MECH.count("A") >=10 && @stud_secs_MECH.count("B")< 10
       @stud_secs << "B"
       @stud_secs_MECH <<"B"
       @stud_rollnos = "MEC" +  "B" +"%.2i" %@stud_secs_MECH.count("B")
       @stud_rollnos_MECH << @stud_rollnos
      else @stud_secs_MECH.count("A") >= 10 && @stud_secs_MECH.count("B") >= 10 &&@stud_secs_MECH.count("C") < 10
       @stud_secs << "C"
       @stud_names_MECH << "C"
       @stud_rollnos = "MEC"+ "C" + "%.2i" %@stud_secs_MECH.count("C")
       @stud_rollnos_MECH << @stud_rollnos
      end
      @stud_roll_nos << @stud_rollnos
     when "CSE"
      @stud_names_CSE << student_name
      @stud_deps_CSE << student_department.upcase
      if @stud_secs_CSE.count("A") <= 9
       @stud_secs << "A"
       @stud_secs_CSE <<"A"
       @stud_rollnos = "CSE" + "A" + "%.2i" %@stud_secs_CSE.count("A")
       @stud_rollnos_CSE <<@stud_rollnos
      elsif @stud_secs_CSE.count("A") >=10 && @stud_secs_CSE.count("B")< 10
       @stud_secs << "B"
       @stud_secs_CSE <<"B"
       @stud_rollnos = "CSE" +  "B" + "%.2i" %@stud_secs_CSE.count("B")
       @stud_rollnos_CSE <<@stud_rollnos
      else @stud_secs_CSE.count("A") >= 10 && @stud_secs_CSE.count("B") >= 10 &&@stud_secs_CSE.count("C") < 10
       @stud_secs << "C"
       @stud_names_CSE << "C"
       @stud_rollnos = "CSE"+  "C" + "%.2i" %@stud_secs_CSE.count("C")
       @stud_rollnos_CSE <<@stud_rollnos
      end
      @stud_roll_nos << @stud_rollnos
     when "CIVIL"
      @stud_names_CIVIL << student_name
      @stud_deps_CIVIL << student_department.upcase
      if @stud_secs_CIVIL.count("A") <= 9
       @stud_secs << "A"
       @stud_secs_CIVIL <<"A"
       @stud_rollnos = "CIV" +  "A" + "%.2i" %@stud_secs_CIVIL.count("A")
       @stud_rollnos_CIVIL << @stud_rollnos 
      elsif @stud_secs_CIVIL.count("A") >=10 && @stud_secs_CIVIL.count("B")< 10
       @stud_secs << "B"
       @stud_secs_CIVIL <<"B"
       @stud_rollnos = "CIV"  + "B" + "%.2i" %@stud_secs_CIVIL.count("B")
       @stud_rollnos_CIVIL << @stud_rollnos 
      else @stud_secs_CIVIL.count("A") >= 10 && @stud_secs_CIVIL.count("B") >= 10 &&@stud_secs_CIVIL.count("C") < 10
       @stud_secs << "C"
       @stud_names_CIVIL << "C"
       @stud_rollnos = "CIV" + "C" + "%.2i" %@stud_secs_CIVIL.count("C")
       @stud_rollnos_CIVIL << @stud_rollnos 
      end
      @stud_roll_nos << @stud_rollnos
     end 

      
    "You have been enrolled to #{student_department.upcase}" \
    "\nYou have been allotted section #{@stud_secs[@t]}" \
    "\nYour roll number is #{@stud_rollnos}"
  end

  def change_dept(student_name, student_department)
    ## write some logic to frame the string below
    if student_name.match(/[?<>',?\[\]}{=)(*&^%$#`~{}@-]/)
      return "Error: Please enter the student name without special characters"
    end

    if @stud_deps.count(student_department.upcase) > 30 
      return "Error: Seats are not available in #{student_department}"
    end

    if (student_department.upcase !="EEE"&&student_department.upcase !="MECH"&&student_department.upcase !="CSE"&&student_department.upcase !="CIVIL")
      return "Error: Enter a valid Department name from the above choices"
    end

    if @stud_names.index(student_name) == nil 
      return "Error: Please check the name that you entered"
    end

    if @stud_deps[@stud_names.index(student_name)] == student_department.upcase
      return "Error: Please enter other than #{student_department.upcase} Department"
    end

    case @stud_deps[@stud_names.index(student_name)]
     when "EEE"
      @k = @stud_names_EEE.index(student_name)
      @sec = @stud_secs_EEE[@k]
      @stud_names_EEE.delete_at(@k)
      @stud_secs_EEE.delete_at(@k)
      @stud_deps_EEE.delete_at(@k)
      @stud_rollnos_EEE.delete_at(@k)
      @m = @k
      while @m < @stud_secs_EEE.count(@sec)
        @stud_rollnos_EEE[@m] = "EEE" +  @sec + "%.2i" %(@m +1)
        @m = @m + 1
      end
     when "MECH"
      @k = @stud_names_MECH.index(student_name)
      @sec = @stud_secs_MECH[@k]
      @stud_names_MECH.delete_at(@k)
      @stud_secs_MECH.delete_at(@k)
      @stud_deps_MECH.delete_at(@k)
      @stud_rollnos_MECH.delete_at(@k)
      @m = @k
      while  @m < @stud_secs_MECH.count(@sec)
        @stud_rollnos_MECH[@m] = "MEC" +  @sec + "%.2i" %(@m +1)
        @m = @m + 1
      end
     when "CSE"
      @k = @stud_names_CSE.index(student_name)
      @sec = @stud_secs_CSE[@k]
      @stud_names_CSE.delete_at(@k)
      @stud_secs_CSE.delete_at(@k)
      @stud_deps_CSE.delete_at(@k)
      @stud_rollnos_CSE.delete_at(@k)
      @m = @k
      while @m < @stud_secs_CSE.count(@sec)
        @stud_rollnos_MECH[@m] = "CSE" +  @sec + "%.2i" %(@m +1)
        @m = @m + 1
      end
     when "CIVIL"
      @k = @stud_names_CIVIL.index(student_name)
      @sec = @stud_secs_CIVIL[@k]
      @stud_names_CIVIL.delete_at(@k)
      @stud_secs_CIVIL.delete_at(@k)
      @stud_deps_CIVIL.delete_at(@k)
      @stud_rollnos_CIVIL.delete_at(@k)
      @m =@k
      while  @m < @stud_secs_CIVIL.count(@sec)
        @stud_rollnos_CIVIL[@m] = "CIV" +  @sec + "%.2i" %(@m +1)
        @m = @m + 1
      end
    end

    case student_department.upcase
     when "EEE"
      if @stud_secs_EEE.count("A") < 10
        @sec_count = @stud_secs_EEE.count("A")
        @stud_secs_EEE.insert(@sec_count,"A")
        @stud_deps_EEE.insert(@sec_count,"EEE")
        @stud_names_EEE.insert(@sec_count,student_name)
        @update_sec = "A"
        @stud_rollnos_EEE.insert(@sec_count,("EEE" +  "A" + "%.2i" %@stud_secs_EEE.count("A")))
        @update_rollno = @stud_rollnos_EEE[@sec_count]
      elsif @stud_secs_EEE.count("B") < 10 && @stud_secs_EEE.count("A") >= 10
        @sec_count = @stud_secs_EEE.count("B")
        @stud_secs_EEE.insert(@sec_count,"B")
        @stud_deps_EEE.insert(@sec_count,"EEE")
        @stud_names_EEE.insert(@sec_count,student_name)
        @update_sec = "B"
        @stud_rollnos_EEE.insert(@sec_count,("EEE" + "B" + "%.2i" %@stud_secs_EEE.count("B")))
        @update_rollno = @stud_rollnos_EEE[@sec_count]
      elsif @stud_secs_EEE.count("C") < 10 && @stud_secs_EEE.count("B") >= 10 && @stud_secs_EEE.count("A") >= 10
        @sec_count = @stud_secs_EEE.count("C")
        @stud_secs_EEE.insert(@sec_count,"C")
        @stud_deps_EEE.insert(@sec_count,"EEE")
        @stud_names_EEE.insert(@sec_count,student_name)
        @update_sec = "C"
        @stud_rollnos_EEE.insert(@sec_count,"EEE" +"C" +  "%.2i" %@stud_secs_EEE.count("C"))
        @update_rollno = @stud_rollnos_EEE[@sec_count]
      end
     when "MECH"
      if @stud_secs_MECH.count("A") < 10
        @sec_count = @stud_secs_MECH.count("A")
        @stud_secs_MECH.insert(@sec_count,"A")
        @stud_deps_MECH.insert(@sec_count,"MECH")
        @stud_names_MECH.insert(@sec_count,student_name)
        @update_sec = "A"
        @stud_rollnos_MECH.insert(@sec_count,"MEC" + "A" + "%.2i" %@stud_secs_MECH.count("A"))
        @update_rollno = @stud_rollnos_MECH[@sec_count]
      elsif @stud_secs_MECH.count("B") < 10 && @stud_secs_MECH.count("A") >= 10
        @sec_count = @stud_secs_MECH.count("B")
        @stud_secs_MECH.insert(@sec_count,"B")
        @stud_deps_MECH.insert(@sec_count,"MECH")
        @stud_names_MECH.insert(@sec_count,student_name)
        @update_sec = "B"
        @stud_rollnos_MECH.insert(@sec_count,("MEC" + "B" + "%.2i" %@stud_secs_MECH.count("B")))
        @update_rollno = @stud_rollnos_MECH[@sec_count]
      elsif @stud_secs_MECH.count("C") < 10 && @stud_secs_MECH.count("B") >= 10 && @stud_secs_MECH.count("A") >= 10
        @sec_count = @stud_secs_MECH.count("C")
        @stud_secs_MECH.insert(@sec_count,"C")
        @stud_deps_MECH.insert(@sec_count,"MECH")
        @stud_names_MECH.insert(@sec_count,student_name)
        @update_sec = "C"
        @stud_rollnos_MECH.insert(@sec_count,"MEC" +  "C" + "%.2i" %@stud_secs_MECH.count("C"))
        @update_rollno = @stud_rollnos_MECH[@sec_count]
      end
     when "CSE"
      if @stud_secs_CSE.count("A") < 10
        @sec_count = @stud_secs_CSE.count("A")
        @stud_secs_CSE.insert(@sec_count,"A")
        @stud_deps_CSE.insert(@sec_count,"CSE")
        @stud_names_CSE.insert(@sec_count,student_name)
        @update_sec = "A"
        @stud_rollnos_CSE.insert(@sec_count,("CSE" +  "A" + "%.2i" %@stud_secs_CSE.count("A")))
        @update_rollno = @stud_rollnos_CSE[@sec_count]
      elsif @stud_secs_CSE.count("B") < 10 && @stud_secs_CSE.count("A") >= 10
        @sec_count = @stud_secs_CSE.count("B")
        @stud_secs_CSE.insert(@sec_count,"B")
        @stud_deps_CSE.insert(@sec_count,"CSE")
        @stud_names_CSE.insert(@sec_count,student_name)
        @update_sec = "B"
        @stud_rollnos_CSE.insert(@sec_count,("CSE" +  "B" + "%.2i" %@stud_secs_CSE.count("A")))
        @update_rollno = @stud_rollnos_CSE[@sec_count]
      elsif @stud_secs_CSE.count("C") < 10 && @stud_secs_CSE.count("B") >= 10 && @stud_secs_CSE.count("A") >= 10
        @sec_count = @stud_secs_CSE.count("C")
        @stud_secs_CSE.insert(@sec_count,"C")
        @stud_deps_CSE.insert(@sec_count,"CSE")
        @stud_names_CSE.insert(@sec_count,student_name)
        @update_sec = "C"
        @stud_rollnos_CSE.insert(@sec_count,("CSE" +"C" + "%.2i" %@stud_secs_CSE.count("A")))
        @update_rollno = @stud_rollnos_CSE[@sec_count]
      end
     when "CIVIL"
      if @stud_secs_CIVIL.count("A") < 10
        @sec_count = @stud_secs_CIVIL.count("A")
        @stud_secs_CIVIL.insert(@sec_count,"A")
        @stud_deps_CIVIL.insert(@sec_count,"CIVIL")
        @stud_names_CIVIL.insert(@sec_count,student_name)
        @update_sec = "A"
        @stud_rollnos_CIVIL.insert(@sec_count,("CIV" +  "A" + "%.2i" %@stud_secs_CIVIL.count("A")))
        @update_rollno = @stud_rollnos_CIVIL[@sec_count]
      elsif @stud_secs_CIVIL.count("B") < 10 && @stud_secs_CIVIL.count("A") >= 10
        @sec_count = @stud_secs_CIVIL.count("B")
        @stud_secs_CIVIL.insert(@sec_count,"B")
        @stud_deps_CIVIL.insert(@sec_count,"CIVIL")
        @stud_names_CIVIL.insert(@sec_count,student_name)
        @update_sec = "B"
        @stud_rollnos_CIVIL.insert(@sec_count,("CIV" +  "B" + "%.2i" %@stud_secs_CIVIL.count("B")))
        @update_rollno = @stud_rollnos_CIVIL[@sec_count]
      elsif @stud_secs_CIVIL.count("C") < 10 && @stud_secs_CIVIL.count("B") >= 10 && @stud_secs_CIVIL.count("A") >= 10
        @sec_count = @stud_secs_CIVIL.count("C")
        @stud_secs_CIVIL.insert(@sec_count,"C")
        @stud_deps_CIVIL.insert(@sec_count,"CIVIL")
        @stud_names_CIVIL.insert(@sec_count,student_name)
        @update_sec = "C"
        @stud_rollnos_CIVIL.insert(@sec_count,("CIV" +  "C" + "%.2i" %@stud_secs_CIVIL.count("C")))
        @update_rollno = @stud_rollnos_CIVIL[@sec_count]
      end
    end

    
    "You have been enrolled to #{student_department.upcase}" \
    "\nYou have been allotted section #{@update_sec}" \
    "\nYour roll number is #{@update_rollno}"
  end

  def change_section(student_name, section)
    ## write some logic to frame the string below
    if student_name.match(/[?<>',?\[\]}{=)(*&^%$#`~{}@-]/)
      return "Error: Please enter the student name without special characters"
    end

    if @stud_names.index(student_name) == nil 
      return "Error: Please check the name that you entered"
    end

    if @stud_secs[@stud_names.index(student_name)] == section.upcase
      return "Error: Please enter other than #{section.upcase} section"
    end

    if (section.upcase != "A" && section.upcase != "B" && section.upcase != "C")
      return "Error: Please enter the valid section from above 3 sections"
    end

    if @stud_secs.count(section.upcase) == 10
      return "Error: No seats available in the #{section.upcase} section "
    end

    case @stud_deps[@stud_names.index(student_name)]
     when "EEE"
      @k = @stud_names_EEE.index(student_name)
      @sec = @stud_secs_EEE[@k]
      @m = @k
      @stud_names_EEE.delete_at(@k)
      @stud_secs_EEE.delete_at(@k)
      @stud_rollnos_EEE.delete_at(@k)
      while @m < @stud_secs_EEE.count(@sec)
        @stud_rollnos_EEE[@m-1] = "EEE" +  @sec + "%.2i" %(@m+1)
        @m = @m + 1
      end
     when "MECH"
      @k = @stud_names_MECH.index(student_name)
      @sec = @stud_secs_MECH[@k]
      @m = @k
      @stud_names_MECH.delete_at(@k)
      @stud_secs_MECH.delete_at(@k)
      @stud_rollnos_MECH.delete_at(@k)
      while @m < @stud_secs_MECH.count(@sec)
        @stud_rollnos_MECH[@m] = "MEC" +  @sec + "%.2i" %(@m+1)
        @m = @m + 1
      end
     when "CSE"
      @k = @stud_names_CSE.index(student_name)
      @sec = @stud_secs_CSE[@k]
      @m = @k
      @stud_names_CSE.delete_at(@k)
      @stud_secs_CSE.delete_at(@k)
      @stud_rollnos_CSE.delete_at(@k)
      while @m < @stud_secs_CSE.count(@sec)
        @stud_rollnos_MECH[@m] = "CSE" +  @sec + "%.2i" %(@m+1)
        @m = @m + 1
      end
     when "CIVIL"
      @k = @stud_names_CIVIL.index(student_name)
      @sec = @stud_secs_CIVIL[@k]
      @m = @k
      @stud_names_CIVIL.delete_at(@k)
      @stud_secs_CIVIL.delete_at(@k)
      @stud_rollnos_CIVIL.delete_at(@k)
      while @m < @stud_secs_CIVIL.count(@sec)
        @stud_rollnos_CIVIL[@m+1] = "CIV" + @sec +"%.2i" %(@m+1)
        @m = @m + 1
      end
    end



    case @stud_deps[@stud_names.index(student_name)]
     when "EEE"
      if @stud_secs_EEE.count(section.upcase) == 0
        case section.upcase
         when "A"
          @stud_names_EEE.insert(0,student_name)
          @stud_secs_EEE.insert(0,"A")
          @stud_rollnos_EEE.insert(0,"EEEA01")
          @update_rollno = "EEEA01"
         when "B"
          @stud_names_EEE.insert(@stud_secs_EEE.count("A"),student_name)
          @stud_secs_EEE.insert(@stud_secs_EEE.count("A"),"B")
          @stud_rollnos_EEE.insert(@stud_secs_EEE.count("A"),"EEEB01")
          @update_rollno = "EEEB01"
         when "C"
          @stud_names_EEE.insert(@stud_secs_EEE.count("A")+@stud_secs_EEE.count("B"),student_name)
          @stud_secs_EEE.insert(@stud_secs_EEE.count("A")+@stud_secs_EEE.count("B"),"C")
          @stud_rollnos_EEE.insert(@stud_secs_EEE.count("A")+@stud_secs_EEE.count("B"),"EEEC01")
          @update_rollno = "EEEC01"
        end
      else
        @list_sec_index = @stud_secs_EEE.each_index.select { |i| @stud_secs_EEE[i]== section.upcase }
        @stud_names_EEE.insert(@list_sec_index[-1].to_i+1,student_name)
        @stud_secs_EEE.insert(@list_sec_index[-1].to_i+1,section.upcase)
        @stud_rollnos_EEE.insert(@list_sec_index[-1].to_i+1,"EEE"+ section.upcase+ "%.2i" %@stud_secs_EEE.count(section.upcase))
        @update_rollno = @stud_rollnos_EEE[@list_sec_index[-1].to_i+1]
      end
     when "MECH"
      if @stud_secs_MECH.count(section.upcase) == 0
        case section.upcase
         when "A"
          @stud_names_MECH.insert(0,student_name)
          @stud_secs_MECH.insert(0,"A")
          @stud_rollnos_MECH.insert(0,"MECA01")
          @update_rollno = "MECA01"
         when "B"
          @stud_names_MECH.insert(@stud_secs_MECH.count("A"),student_name)
          @stud_secs_MECH.insert(@stud_secs_MECH.count("A"),"B")
          @stud_rollnos_MECH.insert(@stud_secs_MECH.count("A"),"MECB01")
          @update_rollno = "MECB01"
         when "C"
          @stud_names_MECH.insert(@stud_secs_MECH.count("A")+@stud_secs_MECH.count("B"),student_name)
          @stud_secs_MECH.insert(@stud_secs_MECH.count("A")+@stud_secs_MECH.count("B"),"C")
          @stud_rollnos_MECH.insert(@stud_secs_MECH.count("A")+@stud_secs_MECH.count("B"),"MECC01")
          @update_rollno = "MECC01"
        end
      else
        @list_sec_index = @stud_secs_MECH.each_index.select { |i| @stud_secs_MECH[i]== section.upcase }
        @stud_names_MECH.insert(@list_sec_index[-1].to_i+1,student_name)
        @stud_secs_MECH.insert(@list_sec_index[-1].to_i+1,section.upcase)
        @stud_rollnos_MECH.insert(@list_sec_index[-1].to_i+1,"MEC"+section.upcase+"%.2i" %@stud_secs_MECH.count(section.upcase))
        @update_rollno = @stud_rollnos_MECH[@list_sec_index[-1].to_i+1]
      end
     when "CSE"
      if @stud_secs_CSE.count(section.upcase) == 0
        case section.upcase
         when "A"
          @stud_names_CSE.insert(0,student_name)
          @stud_secs_CSE.insert(0,"A")
          @stud_rollnos_CSE.insert(0,"CSEA01")
          @update_rollno = "CSEA01"
         when "B"
          @stud_names_CSE.insert(@stud_secs_CSE.count("A"),student_name)
          @stud_secs_CSE.insert(@stud_secs_CSE.count("A"),"B")
          @stud_rollnos_CSE.insert(@stud_secs_CSE.count("A"),"CSEB01")
          @update_rollno = "CSEB01"
         when "C"
          @stud_names_CSE.insert(@stud_secs_CSE.count("A")+@stud_secs_CSE.count("B"),student_name)
          @stud_secs_CSE.insert(@stud_secs_CSE.count("A")+@stud_secs_CSE.count("B"),"C")
          @stud_rollnos_CSE.insert(@stud_secs_CSE.count("A")+@stud_secs_CSE.count("B"),"CSEC01")
          @update_rollno = "CSEC01"
        end
      else
        @list_sec_index = @stud_secs_CSE.each_index.select { |i| @stud_secs_CSE[i]== section.upcase }
        @stud_names_CSE.insert(@list_sec_index[-1].to_i+1,student_name)
        @stud_secs_CSE.insert(@list_sec_index[-1].to_i+1,section.upcase)
        @stud_rollnos_CSE.insert(@list_sec_index[-1].to_i+1,"EEE"+section.upcase+"%.2i" %@stud_secs_CSE.count(section.upcase))
        @update_rollno = @stud_rollnos_CSE[@list_sec_index[-1].to_i+1]
      end
     when "CIVIL"
      if @stud_secs_CIVIL.count(section.upcase) == 0
        case section.upcase
         when "A"
          @stud_names_CIVIL.insert(0,student_name)
          @stud_secs_CIVIL.insert(0,"A")
          @stud_rollnos_CIVIL.insert(0,"CIVA01")
          @update_rollno = "CIVA01"
         when "B"
          @stud_names_CIVIL.insert(@stud_secs_CIVIL.count("A"),student_name)
          @stud_secs_CIVIL.insert(@stud_secs_CIVIL.count("A"),"B")
          @stud_rollnos_CIVIL.insert(@stud_secs_CIVIL.count("A"),"CIVB01")
          @update_rollno = "CIVB01"
         when "C"
          @stud_names_CIVIL.insert(@stud_secs_CIVIL.count("A")+@stud_secs_CIVIL.count("B"),student_name)
          @stud_secs_CIVIL.insert(@stud_secs_CIVIL.count("A")+@stud_secs_CIVIL.count("B"),"C")
          @stud_rollnos_CIVIL.insert(@stud_secs_CIVIL.count("A")+@stud_secs_CIVIL.count("B"),"CIVC01")
          @update_rollno = "CIVC01"
        end
      else
        @list_sec_index = @stud_secs_CIVIL.each_index.select { |i| @stud_secs_CIVIL[i]== section.upcase }
        @stud_names_CIVIL.insert(@list_sec_index[-1].to_i+1,student_name)
        @stud_secs_CIVIL.insert(@list_sec_index[-1].to_i+1,section.upcase)
        @stud_rollnos_CIVIL.insert(@list_sec_index[-1].to_i+1,"CIV"+section.upcase+"%.2i" %@stud_secs_EEE.count(section.upcase))
        @update_rollno = @stud_rollnos_CIVIL[@list_sec_index[-1].to_i+1]
      end
    end

    
    "You have been allotted section #{section.upcase}" \
    "\nYour roll number is #{@update_rollno}"
  end

  def department_view(student_dept)
    ## write some logic to frame the string below
    if (student_dept.upcase !="EEE"&&student_dept.upcase !="MECH"&&student_dept.upcase !="CSE"&&student_dept.upcase !="CIVIL")
      return "Error: Enter a valid Department name from the above choices"
    end
    
    case (student_dept.upcase)
     when "EEE"

      @list_sec_index = @stud_secs_EEE.each_index.select { |i| @stud_secs_EEE[i]== "A" }
      @p =[]
      @i =0
      if @list_sec_index != nil
        while @i < @list_sec_index.length
          @p << @stud_names_EEE[@list_sec_index[@i]]
          @i+=1
        end
      end
      @list_sec_index = @stud_secs_EEE.each_index.select { |i| @stud_secs_EEE[i]== "B" }
      @o = []
      @i =0
      if @list_sec_index != nil
        while @i < @list_sec_index.length
          @o << @stud_names_EEE[@list_sec_index[@i]]
          @i+=1
        end
      end
      @list_sec_index = @stud_secs_EEE.each_index.select { |i| @stud_secs_EEE[i]== "C" }
      @x =[]
      @i =0
      if @list_sec_index != nil
        while @i < @list_sec_index.length
          @x << @stud_names_EEE[@list_sec_index[@i]]
          @i+=1
        end
      end
      @stud_names_EEE = @p.sort + @o.sort + @x.sort
      @stud_secs_EEE = @stud_secs_EEE.sort
      @stud_rollnos_EEE = @stud_rollnos_EEE.sort

      if @stud_deps_EEE.index(student_dept.upcase) == nil
        return "Error: No student is present in #{student_dept.upcase} Department"
      end
      
      @stud_s =[]
      @stud_s << "List of students:"\

      @q = 0
      
      while @q< @stud_names_EEE.length
        @stud_s <<  "#{@stud_names_EEE[@q]} - #{@stud_rollnos_EEE[@q]}"
        @q =@q+1
      end
      @stud = @stud_s.join("\n")

     when "MECH"

      @list_sec_index = @stud_secs_MECH.each_index.select { |i| @stud_secs_MECH[i]== "A" }
      @p = []
      @i =0
      if @list_sec_index != nil
        while @i < @list_sec_index.length
          @p << @stud_names_MECH[@list_sec_index[@i]]
          @i+=1
        end
      end
      @list_sec_index = @stud_secs_MECH.each_index.select { |i| @stud_secs_MECH[i]== "B" }
      @o =[]
      @i =0
      if @list_sec_index != nil
        while @i < @list_sec_index.length
          @o << @stud_names_MECH[@list_sec_index[@i]]
          @i+=1
        end
      end
      @list_sec_index = @stud_secs_MECH.each_index.select { |i| @stud_secs_MECH[i]== "C" }
      @x =[]
      @i =0
      if @list_sec_index != nil
        while @i < @list_sec_index.length
          @x << @stud_names_MECH[@list_sec_index[@i]]
          @i+=1
        end
      end
      @stud_names_MECH = @p.sort + @o.sort + @x.sort
      @stud_secs_MECH = @stud_secs_MECH.sort
      @stud_rollnos_MECH = @stud_rollnos_MECH.sort

      if @stud_deps_MECH.index(student_dept.upcase) == nil
        return "Error: No student is present in #{student_dept.upcase} Department"
      end
      @stud_s =[]
      @stud_s <<  "List of students:"\

      @q1 = 0

      while @q1< @stud_names_MECH.length
        @stud_s <<  "#{@stud_names_MECH[@q1]} - #{@stud_rollnos_MECH[@q1]}"
        @q1 =@q1+1
      end
      @stud = @stud_s.join("\n")
     when "CSE"

      @list_sec_index = @stud_secs_CSE.each_index.select { |i| @stud_secs_CSE[i]== "A" }
      @p =[]
      @i =0
      if @list_sec_index != nil
        while @i < @list_sec_index.length
          @p << @stud_names_CSE[@list_sec_index[@i]]
          @i+=1
        end
      end
      @list_sec_index = @stud_secs_CSE.each_index.select { |i| @stud_secs_CSE[i]== "B" }
      @o =[]
      @i =0
      if @list_sec_index != nil
        while @i < @list_sec_index.length
          @o << @stud_names_CSE[@list_sec_index[@i]]
          @i+=1
        end
      end
      @list_sec_index = @stud_secs_CSE.each_index.select { |i| @stud_secs_CSE[i]== "C" }
      @x =[]
      @i =0
      if @list_sec_index != nil
        while @i < @list_sec_index.length
          @x << @stud_names_CSE[@list_sec_index[@i]]
          @i+=1
        end
      end
      @stud_names_CSE = @p.sort + @o.sort + @x.sort
      @stud_secs_CSE = @stud_secs_CSE.sort
      @stud_rollnos_CSE = @stud_rollnos_CSE.sort

      if @stud_deps_CSE.index(student_dept.upcase) == nil
        return "Error: No student is present in #{student_dept.upcase} Department"
      end
      @stud_s =[]
      @stud_s <<  "List of students:"\

      @q2 = 0

      while @q2< @stud_names_CSE.length
        @stud_s <<  "#{@stud_names_CSE[@q2]} - #{@stud_rollnos_CSE[@q2]}"
        @q2 =@q2+1
      end
      @stud = @stud_s.join("\n")
     when "CIVIL"

      @list_sec_index = @stud_secs_CIVIL.each_index.select { |i| @stud_secs_CIVIL[i]== "A" }
      @p =[]
      @i =0
      if @list_sec_index != nil
        while @i < @list_sec_index.length
          @p << @stud_names_CIVIL[@list_sec_index[@i]]
          @i+=1
        end
      end
      @list_sec_index = @stud_secs_CIVIL.each_index.select { |i| @stud_secs_CIVIL[i]== "B" }
      @o = []
      @i =0
      if @list_sec_index != nil
        while @i < @list_sec_index.length
          @o << @stud_names_CIVIL[@list_sec_index[@i]]
          @i+=1
        end
      end
      @list_sec_index = @stud_secs_CIVIL.each_index.select { |i| @stud_secs_CIVIL[i]== "C" }
      @x =[]
      @i =0
      if @list_sec_index != nil
        while @i < @list_sec_index.length
          @x << @stud_names_CIVIL[@list_sec_index[@i]]
          @i+=1
        end
      end
      @stud_names_CIVIL = @p.sort + @o.sort + @x.sort
      @stud_secs_CIVIL = @stud_secs_CIVIL.sort
      @stud_rollnos_CIVIL = @stud_rollnos_CIVIL.sort

      if @stud_deps_CIVIL.index(student_dept.upcase) == nil
        return "Error: No student is present in #{student_dept.upcase} Department"
      end
      @stud_s =[]
      @stud_s <<  "List of students:"\

      @q3 = 0

      while @q3< @stud_names_CIVIL.length
        @stud_s << "#{@stud_names_CIVIL[@q3]} - #{@stud_rollnos_CIVIL[@q3]}"
        @q3 =@q3+1
      end
      @stud = @stud_s.join("\n")
    end
    return @stud
  end

  def section_view(student_dept, section)
    ## write some logic to frame the string below
    if (student_dept.upcase !="EEE"&&student_dept.upcase !="MECH"&&student_dept.upcase !="CSE"&&student_dept.upcase !="CIVIL")
      return "Error: Enter a valid Department name from the above choices"
    end

    if (section.upcase != "A" && section.upcase != "B" && section.upcase != "C")
      return "Error: Please enter the valid section from above 3 sections"
    end

    

    case (student_dept.upcase)
     when "EEE"
      if @stud_secs_EEE.index(section.upcase) == nil
        return "Error: No student is present in #{section.upcase} section"
      end
      @w = @stud_names_EEE.sort
      @stud_s =[]
      @stud_s <<"List of students:" 
      
      @q4 = @stud_secs_EEE.index(section.upcase)

      while @q4 < @stud_secs_EEE.index(section.upcase) + @stud_secs_EEE.count(section.upcase)
        @stud_s << "#{@w[@q4]} - #{@stud_rollnos_EEE[@q4]}"
        @q4 = @q4 +1
      end
      @stud = @stud_s.join("\n")
      
     when "MECH"
      if @stud_secs_MECH.index(section.upcase) == nil
        return "Error: No student is present in #{section.upcase} section"
      end
      @w = @stud_names_MECH.sort
      @stud_s =[]
      @stud_s <<"List of students:" 

      @q5 = @stud_secs_MECH.index(section.upcase)

      while @q5 < @stud_secs_MECH.index(section.upcase) + @stud_secs_MECH.count(section.upcase)
        @stud_s << "#{@w[@q5]} - #{@stud_rollnos_MECH[@q5]}"
        @q5 = @q5 +1
      end
      @stud = @stud_s.join("\n")
     when "CSE"
      if @stud_secs_CSE.index(section.upcase) == nil
        return "Error: No student is present in #{section.upcase} section"
      end
      @stud_s =[]
      @stud_s <<"List of students:" 
      @w = @stud_names_CSE.sort
      @q6 = @stud_secs_CSE.index(section.upcase)

      while @q6 < @stud_secs_CSE.index(section.upcase) + @stud_secs_CSE.count(section.upcase)
        @stud_s << "#{@w[@q6]} - #{@stud_rollnos_CSE[@q6]}"
        @q6 = @q6 +1
      end
      @stud = @stud_s.join("\n")
     when "CIVIL"
      if @stud_secs_CIVIL.index(section.upcase) == nil
        return "Error: No student is present in #{section.upcase} section"
      end
      @w = @stud_names_CIVIL.sort
      @stud_s =[]
      @stud_s <<"List of students:" 

      @q7 = @stud_secs_CIVIL.index(section.upcase)

      while @q7 < @stud_secs_CIVIL.index(section.upcase) + @stud_secs_CIVIL.count(section.upcase)
        @stud_s << "#{@w[@q7]} - #{@stud_rollnos_CIVIL[@q7]}"
        @q7 = @q7 +1
      end
      @stud = @stud_s.join("\n")
    end
    return @stud
  end

  def student_details(student_name)
    ## write some logic to frame the string below
    if student_name.match(/[?<>',?\[\]}{=)(*&^%$#`~{}@-]/)
      return "Error: Please enter the student name without special characters"
    end

    if @stud_names.index(student_name) == nil 
      return "Error: Please check the name that you entered"
    end
    case @stud_deps[@stud_names.index(student_name)]
     when "EEE"
      @list_sec_index = @stud_secs_EEE.each_index.select { |i| @stud_secs_EEE[i]== "A" }
      @p =[]
      @i =0
      if @list_sec_index != nil
        while @i < @list_sec_index.length
          @p << @stud_names_EEE[@list_sec_index[@i]]
          @i+=1
        end
      end
      @list_sec_index = @stud_secs_EEE.each_index.select { |i| @stud_secs_EEE[i]== "B" }
      @o =[]
      @i =0
      if @list_sec_index != nil
        while @i < @list_sec_index.length
          @o << @stud_names_EEE[@list_sec_index[@i]]
          @i+=1
        end
      end
      @list_sec_index = @stud_secs_EEE.each_index.select { |i| @stud_secs_EEE[i]== "C" }
      @x =[]
      @i =0
      if @list_sec_index != nil
        while @i < @list_sec_index.length
          @x << @stud_names_EEE[@list_sec_index[@i]]
          @i+=1
        end
      end
      @stud_names_EEE = @p.sort + @o.sort + @x.sort
      @stud_secs_EEE = @stud_secs_EEE.sort
      @stud_rollnos_EEE = @stud_rollnos_EEE.sort

    when "MECH"

      @list_sec_index = @stud_secs_MECH.each_index.select { |i| @stud_secs_MECH[i]== "A" }
      @p =[]
      @i =0
      if @list_sec_index != nil
        while @i < @list_sec_index.length
          @p << @stud_names_MECH[@list_sec_index[@i]]
          @i+=1
        end
      end
      @list_sec_index = @stud_secs_MECH.each_index.select { |i| @stud_secs_MECH[i]== "B" }
      @o =[]
      @i =0
      if @list_sec_index != nil
        while @i < @list_sec_index.length
          @o << @stud_names_MECH[@list_sec_index[@i]]
          @i+=1
        end
      end
      @list_sec_index = @stud_secs_MECH.each_index.select { |i| @stud_secs_MECH[i]== "C" }
      @x =[]
      @i =0
      if @list_sec_index != nil
        while @i < @list_sec_index.length
          @x << @stud_names_MECH[@list_sec_index[@i]]
          @i+=1
        end
      end
      @stud_names_MECH = @p.sort + @o.sort + @x.sort
      @stud_secs_MECH = @stud_secs_MECH.sort
      @stud_rollnos_MECH = @stud_rollnos_MECH.sort

    when "CSE"

      @list_sec_index = @stud_secs_CSE.each_index.select { |i| @stud_secs_CSE[i]== "A" }
      @p =[]
      @i =0
      if @list_sec_index != nil
        while @i < @list_sec_index.length
          @p << @stud_names_CSE[@list_sec_index[@i]]
          @i+=1
        end
      end
      @list_sec_index = @stud_secs_CSE.each_index.select { |i| @stud_secs_CSE[i]== "B" }
      @o =[]
      @i =0
      if @list_sec_index != nil
        while @i < @list_sec_index.length
          @o << @stud_names_CSE[@list_sec_index[@i]]
          @i+=1
        end
      end
      @list_sec_index = @stud_secs_CSE.each_index.select { |i| @stud_secs_CSE[i]== "C" }
      @x =[]
      @i =0
      if @list_sec_index != nil
        while @i < @list_sec_index.length
          @x << @stud_names_CSE[@list_sec_index[@i]]
          @i+=1
        end
      end
      @stud_names_CSE = @p.sort + @o.sort + @x.sort
      @stud_secs_CSE = @stud_secs_CSE.sort
      @stud_rollnos_CSE = @stud_rollnos_CSE.sort

    when "CIVIL"

      @list_sec_index = @stud_secs_CIVIL.each_index.select { |i| @stud_secs_CIVIL[i]== "A" }
      @p =[]
      @i =0
      if @list_sec_index != nil
        while @i < @list_sec_index.length
          @p << @stud_names_CIVIL[@list_sec_index[@i]]
          @i+=1
        end
      end
      @list_sec_index = @stud_secs_CIVIL.each_index.select { |i| @stud_secs_CIVIL[i]== "B" }
      @o =[]
      @i =0
      if @list_sec_index != nil
        while @i < @list_sec_index.length
          @o << @stud_names_CIVIL[@list_sec_index[@i]]
          @i+=1
        end
      end
      @list_sec_index = @stud_secs_CIVIL.each_index.select { |i| @stud_secs_CIVIL[i]== "C" }
      @x =[]
      @i =0
      if @list_sec_index != nil
        while @i < @list_sec_index.length
          @x << @stud_names_CIVIL[@list_sec_index[@i]]
          @i+=1
        end
      end
      @stud_names_CIVIL = @p.sort + @o.sort + @x.sort
      @stud_secs_CIVIL = @stud_secs_CIVIL.sort
      @stud_rollnos_CIVIL = @stud_rollnos_CIVIL.sort
    end


    if @stud_names_EEE.index(student_name) != nil
      @stud_d = "#{student_name} - #{@stud_deps_EEE[@stud_names_EEE.index(student_name)]} - Section #{@stud_secs_EEE[@stud_names_EEE.index(student_name)]} - #{@stud_rollnos_EEE[@stud_names_EEE.index(student_name)]}"
    elsif @stud_names_MECH.index(student_name) != nil
      @stud_d = "#{student_name} - #{@stud_deps_MECH[@stud_names_MECH.index(student_name)]} - Section #{@stud_secs_MECH[@stud_names_MECH.index(student_name)]} - #{@stud_rollnos_MECH[@stud_names_MECH.index(student_name)]}"
    elsif @stud_names_CSE.index(student_name) != nil
      @stud_d = "#{student_name} - #{@stud_deps_CSE[@stud_names_CSE.index(student_name)]} - Section #{@stud_secs_CSE[@stud_names_CSE.index(student_name)]} - #{@stud_rollnos_CSE[@stud_names_CSE.index(student_name)]}"
    elsif @stud_names_CIVIL.index(student_name) != nil
      @stud_d = "#{student_name} - #{@stud_deps_CIVIL[@stud_names_CIVIL.index(student_name)]} - Section #{@stud_secs_CIVIL[@stud_names_CIVIL.index(student_name)]} - #{@stud_rollnos_CIVIL[@stud_names_CIVIL.index(student_name)]}"
    end

    @stud_d
  end
end