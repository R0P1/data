from moviepy.editor import VideoFileClip
from moviepy.video.io.ffmpeg_tools import ffmpeg_extract_subclip
from moviepy.video.tools.subtitles import SubtitlesClip

file_video = input("Masukkan nama file video: ")
file_subtitle = input("Masukkan nama file subtitle: ")
file_keluaran = input("Masukkan nama file keluaran: ")
video_klip = VideoFileClip(file_video)
subtitle = SubtitlesClip(file_subtitle)
penggabungan = video_klip.set_subtitles(subtitle)
penggabungan.write_videofile(f"{file_keluarana}", codec="libx264")
