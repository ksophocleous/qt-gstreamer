import QtQuick 2.0
import QtGStreamer 1.0
import com.mycompany.qmlcomponents 1.0

Rectangle {
	color: "black"
	radius: 2
	width: video_width + 4
	height: video_height + 4
	clip: true

	DozeoVideo {
		id: videosrc
	}

	VideoItem {
		property int video_spacing: 2
		property var video_surface
		id: video

		x: video_spacing; y: video_spacing; width: parent.width - video_spacing*2; height: parent.height - video_spacing*2
		surface: video_surface
	}
}
