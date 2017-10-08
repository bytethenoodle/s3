// THIS FILE IS AUTOMATICALLY GENERATED. DO NOT EDIT.
/**
The MIT License (MIT)

Copyright (c) 2017 Yuki Takei(noppoMan)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

*/

import AWSSDKSwiftCore

/// Error enum for S3
public enum S3Error: AWSErrorType {
    case noSuchUpload(message: String?)
    case objectAlreadyInActiveTierError(message: String?)
    case noSuchKey(message: String?)
    case noSuchBucket(message: String?)
    case bucketAlreadyExists(message: String?)
    case bucketAlreadyOwnedByYou(message: String?)
    case objectNotInActiveTierError(message: String?)
}

extension S3Error {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "NoSuchUpload":
            self = .noSuchUpload(message: message)
        case "ObjectAlreadyInActiveTierError":
            self = .objectAlreadyInActiveTierError(message: message)
        case "NoSuchKey":
            self = .noSuchKey(message: message)
        case "NoSuchBucket":
            self = .noSuchBucket(message: message)
        case "BucketAlreadyExists":
            self = .bucketAlreadyExists(message: message)
        case "BucketAlreadyOwnedByYou":
            self = .bucketAlreadyOwnedByYou(message: message)
        case "ObjectNotInActiveTierError":
            self = .objectNotInActiveTierError(message: message)
        default:
            return nil
        }
    }
}
