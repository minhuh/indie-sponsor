package com.ync.project.util;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import lombok.extern.log4j.Log4j;
import net.coobird.thumbnailator.Thumbnailator;

@Controller
@Log4j
public class UploadUtils {

	private static String getFolder() {

		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

		Date date = new Date();

		String str = sdf.format(date);

		//return str.replace("-", File.separator);
		
		return str.replace("-", "/");
	}

	private static boolean checkImageType(File file) {

		try {
			String contentType = Files.probeContentType(file.toPath());

			return contentType.startsWith("image");

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return false;
	}
	
	public static String uploadFormPost(MultipartFile uploadFile, String realUploadPath) {

		String uploadFolder = realUploadPath;
		String saveFileName = null; // 서버에 저장되는 file 명
		String fullSaveName = null; // uploadFolder + saveFileName
		
		log.info("uploadFolder: " + uploadFolder);

		// make folder --------
		File uploadPath = new File(uploadFolder, getFolder());
		log.info("upload path: " + uploadPath);

		if (uploadPath.exists() == false) {
			uploadPath.mkdirs();
			log.info("mkdirs done.....");
		}

		// 다중 upload에서 모두 upload시키지 않고 몇개만 upload 된다면 빠지는 multipartFile 은 제외시킨다.
		if (uploadFile.getSize() > 0) {

			String uploadFileName = uploadFile.getOriginalFilename();

			// IE has file path
			uploadFileName = uploadFileName.substring(uploadFileName.lastIndexOf(File.separator) + 1);
			log.info("only file name: " + uploadFileName);

			UUID uuid = UUID.randomUUID();

			saveFileName = uuid.toString() + "_" + uploadFileName;

			try {
				File saveFile = new File(uploadPath, saveFileName);
				uploadFile.transferTo(saveFile);
				
				log.info("file transfer done.......");
				
				// upload 된 파일이 이미지일 경우 썸네일을 제작
				if (checkImageType(saveFile)) {
					
					log.info("thumbnail: " + saveFile);
					
					FileOutputStream thumbnail = new FileOutputStream(new File(uploadPath, "s_" + saveFileName));

					// 썸네일 사이즈를 지정해준다. 프로젝트에 따라 썸네일의 크기를 조절해서 사용
					Thumbnailator.createThumbnail(uploadFile.getInputStream(), thumbnail, 100, 100);
					thumbnail.close();
				}

				//fullSaveName = getFolder() + File.separator + saveFileName;
				fullSaveName = getFolder() + "/" + saveFileName;

			} catch (Exception e) {
				e.printStackTrace();
			} // end catch
		}
		return fullSaveName;
	}
	
//	@PostMapping("/uploadFormAction")
//	public static String uploadFormPost(MultipartFile uploadFile) {
//
//		String uploadFolder = "D:\\TeamAProject\\upload";
//		String saveFileName = null; // 서버에 저장되는 file 명
//		String fullSaveName = null; // uploadFolder + saveFileName 
//		
//		// make folder --------
//		File uploadPath = new File(uploadFolder, getFolder());
//		log.info("upload path: " + uploadPath);
//
//		if (uploadPath.exists() == false) {
//			uploadPath.mkdirs();
//		}
//
//		// 다중 upload에서 모두 upload시키지 않고 몇개만 upload 된다면 빠지는 multipartFile 은 제외시킨다.
//		if (uploadFile.getSize() > 0) {
//
//			String uploadFileName = uploadFile.getOriginalFilename();
//
//			// IE has file path
//			uploadFileName = uploadFileName.substring(uploadFileName.lastIndexOf("\\") + 1);
//			log.info("only file name: " + uploadFileName);
//
//			UUID uuid = UUID.randomUUID();
//
//			saveFileName = uuid.toString() + "_" + uploadFileName;
//
//			try {
//				File saveFile = new File(uploadPath, saveFileName);
//				uploadFile.transferTo(saveFile);
//
//				// upload 된 파일이 이미지일 경우 썸네일을 제작
//				if (checkImageType(saveFile)) {
//
//					FileOutputStream thumbnail = new FileOutputStream(new File(uploadPath, "s_" + uploadFileName));
//
//					// 썸네일 사이즈를 지정해준다. 프로젝트에 따라 썸네일의 크기를 조절해서 사용
//					Thumbnailator.createThumbnail(uploadFile.getInputStream(), thumbnail, 100, 100);
//					thumbnail.close();
//				}
//				
//				fullSaveName = uploadPath + "\\" + saveFileName;
//				
//			} catch (Exception e) {
//				e.printStackTrace();
//			} // end catch
//		}
//		return fullSaveName;
//	}

}
