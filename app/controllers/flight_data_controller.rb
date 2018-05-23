class FlightDataController < ApplicationController
  def index
  end

  def save
    puts params[:xl]
    file = params[:xl]
    sj_sheet = Roo::CSV.new(file.path)
    6.upto(sj_sheet.last_row) do |line|
      f = Flight.new
      f.flight_name = 'SPICEJET'
      f.origin = sj_sheet.cell(line,'A')
      f.destination = sj_sheet.cell(line,'B')
      f.frequency = sj_sheet.cell(line,'C')
      f.flight_num = sj_sheet.cell(line,'D')
      f.dept_time = sj_sheet.cell(line,'E')
      f.arrival_time = sj_sheet.cell(line,'F')
      f.via = sj_sheet.cell(line,'G')
      f.effective_from = sj_sheet.cell(line,'H')
      f.effective_till = sj_sheet.cell(line,'I')
      f.remarks = sj_sheet.cell(line,'J')
      f.save
    end
    
  end
end
