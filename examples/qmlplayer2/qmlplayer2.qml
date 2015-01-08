/*
	Copyright (C) 2012-2013 Collabora Ltd. <info@collabora.com>
	  @author George Kiagiadakis <george.kiagiadakis@collabora.com>
	Copyright (C) 2013 basysKom GmbH <info@basyskom.com>
	  @author Benjamin Federau <benjamin.federau@basyskom.com>

	This library is free software; you can redistribute it and/or modify
	it under the terms of the GNU Lesser General Public License as published
	by the Free Software Foundation; either version 2.1 of the License, or
	(at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU Lesser General Public License for more details.

	You should have received a copy of the GNU Lesser General Public License
	along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/
import QtQuick 2.0
import QtGStreamer 1.0

Rectangle {
	id: window
	width: 1024
	height: 768

	property int video_width: 320
	property int video_height: 240
	property int grids: videomanager.getGridSlots()
	property int videos: videomanager.getVideoCount()

	Grid {
		columns: grids
		anchors.fill: parent
		anchors.margins: 10
		spacing: 10

		Repeater {
			model: videos
			Rectangle {
				width: video_width + 4
				height: video_height + 4
				color: "blue"
			}
		}

		VideoPlayer {
			objectName: "vp1"
		}
	}
}
