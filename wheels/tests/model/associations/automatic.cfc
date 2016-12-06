component extends="wheels.tests.Test" {

	function test_gallery_has_many_photos() {
		gallery = model("GalleryNoAssociation").findOne();
		photos = gallery.photoNoAssociations();
		assert("IsQuery(photos)");
	}

	function test_photo_belongs_to_gallery() {
		photo = model("PhotoNoAssociation").findOne();
		gallery = photo.galleryNoAssociation();
		assert("IsObject(gallery)");
	}

}