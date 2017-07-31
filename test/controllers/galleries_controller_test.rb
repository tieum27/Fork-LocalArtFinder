require 'test_helper'

class GalleriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gallery = galleries(:one)
  end

  test "should get index" do
    get galleries_url
    assert_response :success
  end

  test "should get new" do
    get new_gallery_url
    assert_response :success
  end

  test "should create gallery" do
    assert_difference('Gallery.count') do
      post galleries_url, params: { gallery: { art_id: @gallery.art_id, artist_id: @gallery.artist_id, city: @gallery.city, closing: @gallery.closing, name: @gallery.name, opening: @gallery.opening, phone: @gallery.phone, state: @gallery.state, street: @gallery.street, website: @gallery.website, zipcode: @gallery.zipcode } }
    end

    assert_redirected_to gallery_url(Gallery.last)
  end

  test "should show gallery" do
    get gallery_url(@gallery)
    assert_response :success
  end

  test "should get edit" do
    get edit_gallery_url(@gallery)
    assert_response :success
  end

  test "should update gallery" do
    patch gallery_url(@gallery), params: { gallery: { art_id: @gallery.art_id, artist_id: @gallery.artist_id, city: @gallery.city, closing: @gallery.closing, name: @gallery.name, opening: @gallery.opening, phone: @gallery.phone, state: @gallery.state, street: @gallery.street, website: @gallery.website, zipcode: @gallery.zipcode } }
    assert_redirected_to gallery_url(@gallery)
  end

  test "should destroy gallery" do
    assert_difference('Gallery.count', -1) do
      delete gallery_url(@gallery)
    end

    assert_redirected_to galleries_url
  end
end
