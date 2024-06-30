# Details

Date : 2024-06-28 21:53:33

Directory h:\\HUST\\Thesis\\GioiMon-Backend\\gm-post

Total : 63 files,  2031 codes, 63 comments, 331 blanks, all 2425 lines

[Summary](results.md) / Details / [Diff Summary](diff.md) / [Diff Details](diff-details.md)

## Files
| filename | language | code | comment | blank | total |
| :--- | :--- | ---: | ---: | ---: | ---: |
| [gm-post/.mvn/wrapper/maven-wrapper.properties](/gm-post/.mvn/wrapper/maven-wrapper.properties) | Properties | 2 | 0 | 1 | 3 |
| [gm-post/Dockerfile](/gm-post/Dockerfile) | Docker | 10 | 0 | 1 | 11 |
| [gm-post/mvnw.cmd](/gm-post/mvnw.cmd) | Batch | 118 | 51 | 37 | 206 |
| [gm-post/pom.xml](/gm-post/pom.xml) | XML | 136 | 4 | 6 | 146 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/GmPostApplication.java](/gm-post/src/main/java/hust/project/gioimon/gm_post/GmPostApplication.java) | Java | 16 | 0 | 4 | 20 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/client/check_permission/CheckPermissionAnno.java](/gm-post/src/main/java/hust/project/gioimon/gm_post/client/check_permission/CheckPermissionAnno.java) | Java | 11 | 0 | 3 | 14 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/client/check_permission/CheckPermissionAspect.java](/gm-post/src/main/java/hust/project/gioimon/gm_post/client/check_permission/CheckPermissionAspect.java) | Java | 61 | 1 | 8 | 70 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/client/check_permission/CheckPermissionResponseDTO.java](/gm-post/src/main/java/hust/project/gioimon/gm_post/client/check_permission/CheckPermissionResponseDTO.java) | Java | 13 | 0 | 4 | 17 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/client/exceptions/ErrorsDefinition.java](/gm-post/src/main/java/hust/project/gioimon/gm_post/client/exceptions/ErrorsDefinition.java) | Java | 80 | 0 | 16 | 96 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/client/exceptions/TypeError.java](/gm-post/src/main/java/hust/project/gioimon/gm_post/client/exceptions/TypeError.java) | Java | 7 | 0 | 5 | 12 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/client/feign_client/UserClient.java](/gm-post/src/main/java/hust/project/gioimon/gm_post/client/feign_client/UserClient.java) | Java | 19 | 0 | 3 | 22 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/client/model/GetPostStoryRequest.java](/gm-post/src/main/java/hust/project/gioimon/gm_post/client/model/GetPostStoryRequest.java) | Java | 8 | 0 | 3 | 11 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/client/model/ResponseData.java](/gm-post/src/main/java/hust/project/gioimon/gm_post/client/model/ResponseData.java) | Java | 32 | 0 | 10 | 42 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/client/model/TopPostStoryResponse.java](/gm-post/src/main/java/hust/project/gioimon/gm_post/client/model/TopPostStoryResponse.java) | Java | 9 | 0 | 3 | 12 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/client/utils/Scope.java](/gm-post/src/main/java/hust/project/gioimon/gm_post/client/utils/Scope.java) | Java | 7 | 0 | 3 | 10 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/cache/ListPostCache.java](/gm-post/src/main/java/hust/project/gioimon/gm_post/service/cache/ListPostCache.java) | Java | 37 | 0 | 5 | 42 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/constants/PostConstant.java](/gm-post/src/main/java/hust/project/gioimon/gm_post/service/constants/PostConstant.java) | Java | 5 | 0 | 3 | 8 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/controllers/CommentController.java](/gm-post/src/main/java/hust/project/gioimon/gm_post/service/controllers/CommentController.java) | Java | 34 | 0 | 4 | 38 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/controllers/ListPostController.java](/gm-post/src/main/java/hust/project/gioimon/gm_post/service/controllers/ListPostController.java) | Java | 39 | 0 | 6 | 45 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/controllers/PostController.java](/gm-post/src/main/java/hust/project/gioimon/gm_post/service/controllers/PostController.java) | Java | 51 | 0 | 5 | 56 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/converter/CommentConverter.java](/gm-post/src/main/java/hust/project/gioimon/gm_post/service/converter/CommentConverter.java) | Java | 25 | 0 | 3 | 28 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/converter/PostConverter.java](/gm-post/src/main/java/hust/project/gioimon/gm_post/service/converter/PostConverter.java) | Java | 33 | 0 | 4 | 37 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/converter/StringListConverter.java](/gm-post/src/main/java/hust/project/gioimon/gm_post/service/converter/StringListConverter.java) | Java | 18 | 0 | 7 | 25 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/exceptions/GlobalExceptionHandler.java](/gm-post/src/main/java/hust/project/gioimon/gm_post/service/exceptions/GlobalExceptionHandler.java) | Java | 27 | 1 | 3 | 31 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/exceptions/custom/ApplicationException.java](/gm-post/src/main/java/hust/project/gioimon/gm_post/service/exceptions/custom/ApplicationException.java) | Java | 6 | 0 | 2 | 8 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/exceptions/custom/UserDoesNotExistException.java](/gm-post/src/main/java/hust/project/gioimon/gm_post/service/exceptions/custom/UserDoesNotExistException.java) | Java | 6 | 0 | 2 | 8 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/exceptions/custom/UsernameExistedException.java](/gm-post/src/main/java/hust/project/gioimon/gm_post/service/exceptions/custom/UsernameExistedException.java) | Java | 6 | 0 | 3 | 9 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/model/dto/request/AddCoinReqDTO.java](/gm-post/src/main/java/hust/project/gioimon/gm_post/service/model/dto/request/AddCoinReqDTO.java) | Java | 14 | 0 | 3 | 17 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/model/dto/request/CreatePostDTO.java](/gm-post/src/main/java/hust/project/gioimon/gm_post/service/model/dto/request/CreatePostDTO.java) | Java | 17 | 0 | 4 | 21 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/model/dto/request/GetDetailPostDTO.java](/gm-post/src/main/java/hust/project/gioimon/gm_post/service/model/dto/request/GetDetailPostDTO.java) | Java | 8 | 0 | 3 | 11 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/model/dto/request/LoginRequestDTO.java](/gm-post/src/main/java/hust/project/gioimon/gm_post/service/model/dto/request/LoginRequestDTO.java) | Java | 13 | 0 | 3 | 16 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/model/dto/request/PostCommentDTO.java](/gm-post/src/main/java/hust/project/gioimon/gm_post/service/model/dto/request/PostCommentDTO.java) | Java | 16 | 0 | 4 | 20 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/model/dto/response/CommentResponseDTO.java](/gm-post/src/main/java/hust/project/gioimon/gm_post/service/model/dto/response/CommentResponseDTO.java) | Java | 21 | 0 | 3 | 24 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/model/dto/response/LoginResponseDTO.java](/gm-post/src/main/java/hust/project/gioimon/gm_post/service/model/dto/response/LoginResponseDTO.java) | Java | 14 | 0 | 3 | 17 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/model/dto/response/PostResponseDTO.java](/gm-post/src/main/java/hust/project/gioimon/gm_post/service/model/dto/response/PostResponseDTO.java) | Java | 16 | 0 | 3 | 19 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/model/entity/CommentCompositeKey.java](/gm-post/src/main/java/hust/project/gioimon/gm_post/service/model/entity/CommentCompositeKey.java) | Java | 21 | 0 | 4 | 25 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/model/entity/Post.java](/gm-post/src/main/java/hust/project/gioimon/gm_post/service/model/entity/Post.java) | Java | 44 | 0 | 4 | 48 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/model/entity/PostComment.java](/gm-post/src/main/java/hust/project/gioimon/gm_post/service/model/entity/PostComment.java) | Java | 29 | 0 | 5 | 34 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/model/entity/PostFavCompositeKey.java](/gm-post/src/main/java/hust/project/gioimon/gm_post/service/model/entity/PostFavCompositeKey.java) | Java | 18 | 0 | 3 | 21 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/model/entity/PostFavourite.java](/gm-post/src/main/java/hust/project/gioimon/gm_post/service/model/entity/PostFavourite.java) | Java | 25 | 0 | 3 | 28 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/model/entity/Profile.java](/gm-post/src/main/java/hust/project/gioimon/gm_post/service/model/entity/Profile.java) | Java | 31 | 0 | 4 | 35 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/repository/jdbc/BaseRepository.java](/gm-post/src/main/java/hust/project/gioimon/gm_post/service/repository/jdbc/BaseRepository.java) | Java | 52 | 0 | 3 | 55 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/repository/jdbc/PostJDBCRepository.java](/gm-post/src/main/java/hust/project/gioimon/gm_post/service/repository/jdbc/PostJDBCRepository.java) | Java | 17 | 0 | 3 | 20 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/repository/jpa/ListPostRepository.java](/gm-post/src/main/java/hust/project/gioimon/gm_post/service/repository/jpa/ListPostRepository.java) | Java | 11 | 0 | 3 | 14 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/repository/jpa/PostCommentRepository.java](/gm-post/src/main/java/hust/project/gioimon/gm_post/service/repository/jpa/PostCommentRepository.java) | Java | 14 | 0 | 4 | 18 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/repository/jpa/PostFavRepository.java](/gm-post/src/main/java/hust/project/gioimon/gm_post/service/repository/jpa/PostFavRepository.java) | Java | 23 | 0 | 3 | 26 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/repository/jpa/PostRepository.java](/gm-post/src/main/java/hust/project/gioimon/gm_post/service/repository/jpa/PostRepository.java) | Java | 17 | 0 | 4 | 21 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/service/ListPostService.java](/gm-post/src/main/java/hust/project/gioimon/gm_post/service/service/ListPostService.java) | Java | 128 | 0 | 12 | 140 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/service/PostCommentService.java](/gm-post/src/main/java/hust/project/gioimon/gm_post/service/service/PostCommentService.java) | Java | 54 | 0 | 4 | 58 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/service/PostFavouriteService.java](/gm-post/src/main/java/hust/project/gioimon/gm_post/service/service/PostFavouriteService.java) | Java | 51 | 1 | 8 | 60 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/service/PostService.java](/gm-post/src/main/java/hust/project/gioimon/gm_post/service/service/PostService.java) | Java | 41 | 0 | 6 | 47 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/utils/BaseResponse.java](/gm-post/src/main/java/hust/project/gioimon/gm_post/service/utils/BaseResponse.java) | Java | 18 | 0 | 2 | 20 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/utils/GsonUtil.java](/gm-post/src/main/java/hust/project/gioimon/gm_post/service/utils/GsonUtil.java) | Java | 118 | 0 | 16 | 134 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/utils/StringUtil.java](/gm-post/src/main/java/hust/project/gioimon/gm_post/service/utils/StringUtil.java) | Java | 21 | 1 | 3 | 25 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/utils/TimeUtil.java](/gm-post/src/main/java/hust/project/gioimon/gm_post/service/utils/TimeUtil.java) | Java | 6 | 0 | 2 | 8 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/utils/Validator.java](/gm-post/src/main/java/hust/project/gioimon/gm_post/service/utils/Validator.java) | Java | 8 | 0 | 3 | 11 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/utils/network/OkHttpUtil.java](/gm-post/src/main/java/hust/project/gioimon/gm_post/service/utils/network/OkHttpUtil.java) | Java | 141 | 0 | 15 | 156 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/utils/token/JWTCreator.java](/gm-post/src/main/java/hust/project/gioimon/gm_post/service/utils/token/JWTCreator.java) | Java | 37 | 0 | 8 | 45 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/utils/token/TokenElements.java](/gm-post/src/main/java/hust/project/gioimon/gm_post/service/utils/token/TokenElements.java) | Java | 31 | 0 | 7 | 38 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/utils/token/TokenUtil.java](/gm-post/src/main/java/hust/project/gioimon/gm_post/service/utils/token/TokenUtil.java) | Java | 16 | 0 | 3 | 19 |
| [gm-post/src/main/resources/application.properties](/gm-post/src/main/resources/application.properties) | Properties | 9 | 4 | 2 | 15 |
| [gm-post/src/test/java/hust/project/gioimon/gm_post/GmPostApplicationTests.java](/gm-post/src/test/java/hust/project/gioimon/gm_post/GmPostApplicationTests.java) | Java | 9 | 0 | 5 | 14 |
| [gm-post/src/test/java/hust/project/gioimon/gm_post/service/controller/ListPostTests.java](/gm-post/src/test/java/hust/project/gioimon/gm_post/service/controller/ListPostTests.java) | Java | 106 | 0 | 12 | 118 |

[Summary](results.md) / Details / [Diff Summary](diff.md) / [Diff Details](diff-details.md)