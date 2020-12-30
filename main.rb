require 'aasm'

def show_state 
  "em análise"
end

class Job
  include AASM

  aasm do
    state :stage1, initial: true, display: show_state()
    state :stage2
    state :stage3
  end
end



job = Job.new
puts job.aasm.human_state