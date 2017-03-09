//
//  Volumes.swift
//  TryApi
//
//  Created by konomi_ban on 2017/03/08.
//  Copyright © 2017年 jote. All rights reserved.
//

import Foundation

class Volumes: NSObject {
    
    func get(query:String) {
        let sessionConfig = URLSessionConfiguration.background(withIdentifier: "RequestVolumes")
        let str = "https://www.googleapis.com/books/v1/volumes?q=quilting"
        let url = URL(string: str)
        let urlRequet = URLRequest(url: url!)
        let session = URLSession(configuration: sessionConfig, delegate: self, delegateQueue: nil)
        let task = session.downloadTask(with: urlRequet)
        task.resume()
    }
}
extension Volumes: URLSessionDownloadDelegate {
    func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didResumeAtOffset fileOffset: Int64, expectedTotalBytes: Int64) {
     print("didResumeAtOffset")
    }
    
    func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didWriteData bytesWritten: Int64, totalBytesWritten: Int64, totalBytesExpectedToWrite: Int64) {
        print("didWriteData bytesWritten")
    }

    func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didFinishDownloadingTo location: URL) {
        print("didFinishDownloadingTo")
    }
}
