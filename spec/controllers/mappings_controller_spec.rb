require 'spec_helper'
require 'controllers/authentication_helper'
# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe MappingsController do
  describe 'index' do
    
    it 'should populate survey' do
      sign_on
      survey = EpiSurveyor::Survey.new
      EpiSurveyor::Survey.should_receive(:find).with("1").and_return(survey)
      get :index, :survey_id => "1"
      response.should be_success
      assigns[:survey].should == survey
    end
  end
  
end
