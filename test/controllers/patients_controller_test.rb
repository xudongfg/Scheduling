require 'test_helper'

class PatientsControllerTest < ActionController::TestCase
  setup do
    @patient = patients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:patients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create patient" do
    assert_difference('Patient.count') do
      post :create, patient: { cellphone_number: @patient.cellphone_number, city: @patient.city, date_of_birth: @patient.date_of_birth, first_name: @patient.first_name, home_number: @patient.home_number, last_name: @patient.last_name, middle_initial: @patient.middle_initial, patient_type: @patient.patient_type, sex: @patient.sex, state: @patient.state, street: @patient.street, zip: @patient.zip }
    end

    assert_redirected_to patient_path(assigns(:patient))
  end

  test "should show patient" do
    get :show, id: @patient
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @patient
    assert_response :success
  end

  test "should update patient" do
    patch :update, id: @patient, patient: { cellphone_number: @patient.cellphone_number, city: @patient.city, date_of_birth: @patient.date_of_birth, first_name: @patient.first_name, home_number: @patient.home_number, last_name: @patient.last_name, middle_initial: @patient.middle_initial, patient_type: @patient.patient_type, sex: @patient.sex, state: @patient.state, street: @patient.street, zip: @patient.zip }
    assert_redirected_to patient_path(assigns(:patient))
  end

  test "should destroy patient" do
    assert_difference('Patient.count', -1) do
      delete :destroy, id: @patient
    end

    assert_redirected_to patients_path
  end
end
