require 'date'
require 'csv'

file = IO.read('iBP_Readings.csv').split(/\n\n/m).first

CSV.open('data.csv', 'wb',
  :write_headers => true,
  :headers => ['Date', 'Systolic', 'Diastolic', 'Pulse', 'Mean Arterial Pressure', 'Pulse Pressure']) do |csv|
  CSV.parse(file, :headers => true) do |row|
    date =                   row['Date']
    date = DateTime.strptime(date, '%D %R%p').to_time.to_i unless date.eql? 'Date'
    systolic =               row['Systolic']
    diastolic =              row['Diastolic']
    pulse =                  row['Pulse']
    mean_arterial_pressure = row['Mean Arterial Pressure']
    pulse_pressure =         row['Pulse Pressure']
    csv << [date, systolic, diastolic, pulse, mean_arterial_pressure, pulse_pressure]
  end
end

system('R < charts.R --no-save')
system('open Rplots.pdf')