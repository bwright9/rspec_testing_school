require 'rails_helper'

RSpec.describe School, type: :model do
 	describe 'validations' do 
 		it { should validate_presence_of :name }
 		it { should validate_presence_of :size}
 		it { should validate_presence_of :established}
	end

	describe '#name_established' do
		it "returns name and established year" do 
			school = School.create(name: 'West High', size: '5A', established: '1940')
			expect(school.name_established).to eq("#{school.name} was established in: #{school.established}")
		end 
	end 

	describe 'school_size' do 
		it "returns 5A if school size is == 10000" do
			school = School.create(name: 'West High', size: '10000', established: '1940')
			expect(school.school_size).to eq('5A')
		end 

		it "returns 5A if school size is > 10000" do
			school = School.create(name: 'West High', size: '20000', established: '1940')
			expect(school.school_size).to eq('5A')
		end

		it "returns 4A if school size is > 5000" do
			school = School.create(name: 'West High', size: '6000', established: '1940')
			expect(school.school_size).to eq('4A')
		end 

		it "returns 3A if school size is < 5000" do
			school = School.create(name: 'West High', size: '3000', established: '1940')
			expect(school.school_size).to eq('3A')
		end  
	end 
end 
