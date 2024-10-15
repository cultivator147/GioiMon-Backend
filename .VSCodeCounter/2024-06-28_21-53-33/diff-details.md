# Diff Details

Date : 2024-06-28 21:53:33

Directory h:\\HUST\\Thesis\\GioiMon-Backend\\gm-post

Total : 72 files,  1683 codes, -19 comments, 261 blanks, all 1925 lines

[Summary](results.md) / [Details](details.md) / [Diff Summary](diff.md) / Diff Details

## Files
| filename | language | code | comment | blank | total |
| :--- | :--- | ---: | ---: | ---: | ---: |
| [gm-gateway/.mvn/wrapper/maven-wrapper.properties](/sb-gateway/.mvn/wrapper/maven-wrapper.properties) | Properties | -2 | 0 | -1 | -3 |
| [gm-gateway/Dockerfile](/sb-gateway/Dockerfile) | Docker | -10 | -1 | -1 | -12 |
| [gm-gateway/mvnw.cmd](/sb-gateway/mvnw.cmd) | Batch | -118 | -51 | -37 | -206 |
| [gm-gateway/pom.xml](/sb-gateway/pom.xml) | XML | -82 | 0 | -8 | -90 |
| [gm-gateway/src/main/java/hust/project/gioimon/gm_gateway/GmGatewayApplication.java](/sb-gateway/src/main/java/hust/project/gioimon/gm_gateway/GmGatewayApplication.java) | Java | -14 | 0 | -3 | -17 |
| [gm-gateway/src/main/java/hust/project/gioimon/gm_gateway/config/GatewayConfig.java](/sb-gateway/src/main/java/hust/project/gioimon/gm_gateway/config/GatewayConfig.java) | Java | 0 | -23 | -1 | -24 |
| [gm-gateway/src/main/resources/application-dev.yml](/sb-gateway/src/main/resources/application-dev.yml) | YAML | -51 | 0 | -5 | -56 |
| [gm-gateway/src/main/resources/application.yml](/sb-gateway/src/main/resources/application.yml) | YAML | -56 | -1 | -6 | -63 |
| [gm-gateway/src/main/resources/application2.properties](/sb-gateway/src/main/resources/application2.properties) | Properties | -15 | -6 | -8 | -29 |
| [gm-post/.mvn/wrapper/maven-wrapper.properties](/sb-ms-1/.mvn/wrapper/maven-wrapper.properties) | Properties | 2 | 0 | 1 | 3 |
| [gm-post/Dockerfile](/sb-ms-1/Dockerfile) | Docker | 10 | 0 | 1 | 11 |
| [gm-post/mvnw.cmd](/sb-ms-1/mvnw.cmd) | Batch | 118 | 51 | 37 | 206 |
| [gm-post/pom.xml](/sb-ms-1/pom.xml) | XML | 136 | 4 | 6 | 146 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/GmPostApplication.java](/sb-ms-1/src/main/java/hust/project/gioimon/gm_post/GmPostApplication.java) | Java | 16 | 0 | 4 | 20 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/client/check_permission/CheckPermissionAnno.java](/sb-ms-1/src/main/java/hust/project/gioimon/gm_post/client/check_permission/CheckPermissionAnno.java) | Java | 11 | 0 | 3 | 14 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/client/check_permission/CheckPermissionAspect.java](/sb-ms-1/src/main/java/hust/project/gioimon/gm_post/client/check_permission/CheckPermissionAspect.java) | Java | 61 | 1 | 8 | 70 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/client/check_permission/CheckPermissionResponseDTO.java](/sb-ms-1/src/main/java/hust/project/gioimon/gm_post/client/check_permission/CheckPermissionResponseDTO.java) | Java | 13 | 0 | 4 | 17 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/client/exceptions/ErrorsDefinition.java](/sb-ms-1/src/main/java/hust/project/gioimon/gm_post/client/exceptions/ErrorsDefinition.java) | Java | 80 | 0 | 16 | 96 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/client/exceptions/TypeError.java](/sb-ms-1/src/main/java/hust/project/gioimon/gm_post/client/exceptions/TypeError.java) | Java | 7 | 0 | 5 | 12 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/client/feign_client/UserClient.java](/sb-ms-1/src/main/java/hust/project/gioimon/gm_post/client/feign_client/UserClient.java) | Java | 19 | 0 | 3 | 22 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/client/model/GetPostStoryRequest.java](/sb-ms-1/src/main/java/hust/project/gioimon/gm_post/client/model/GetPostStoryRequest.java) | Java | 8 | 0 | 3 | 11 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/client/model/ResponseData.java](/sb-ms-1/src/main/java/hust/project/gioimon/gm_post/client/model/ResponseData.java) | Java | 32 | 0 | 10 | 42 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/client/model/TopPostStoryResponse.java](/sb-ms-1/src/main/java/hust/project/gioimon/gm_post/client/model/TopPostStoryResponse.java) | Java | 9 | 0 | 3 | 12 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/client/utils/Scope.java](/sb-ms-1/src/main/java/hust/project/gioimon/gm_post/client/utils/Scope.java) | Java | 7 | 0 | 3 | 10 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/cache/ListPostCache.java](/sb-ms-1/src/main/java/hust/project/gioimon/gm_post/service/cache/ListPostCache.java) | Java | 37 | 0 | 5 | 42 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/constants/PostConstant.java](/sb-ms-1/src/main/java/hust/project/gioimon/gm_post/service/constants/PostConstant.java) | Java | 5 | 0 | 3 | 8 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/controllers/CommentController.java](/sb-ms-1/src/main/java/hust/project/gioimon/gm_post/service/controllers/CommentController.java) | Java | 34 | 0 | 4 | 38 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/controllers/ListPostController.java](/sb-ms-1/src/main/java/hust/project/gioimon/gm_post/service/controllers/ListPostController.java) | Java | 39 | 0 | 6 | 45 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/controllers/PostController.java](/sb-ms-1/src/main/java/hust/project/gioimon/gm_post/service/controllers/PostController.java) | Java | 51 | 0 | 5 | 56 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/converter/CommentConverter.java](/sb-ms-1/src/main/java/hust/project/gioimon/gm_post/service/converter/CommentConverter.java) | Java | 25 | 0 | 3 | 28 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/converter/PostConverter.java](/sb-ms-1/src/main/java/hust/project/gioimon/gm_post/service/converter/PostConverter.java) | Java | 33 | 0 | 4 | 37 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/converter/StringListConverter.java](/sb-ms-1/src/main/java/hust/project/gioimon/gm_post/service/converter/StringListConverter.java) | Java | 18 | 0 | 7 | 25 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/exceptions/GlobalExceptionHandler.java](/sb-ms-1/src/main/java/hust/project/gioimon/gm_post/service/exceptions/GlobalExceptionHandler.java) | Java | 27 | 1 | 3 | 31 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/exceptions/custom/ApplicationException.java](/sb-ms-1/src/main/java/hust/project/gioimon/gm_post/service/exceptions/custom/ApplicationException.java) | Java | 6 | 0 | 2 | 8 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/exceptions/custom/UserDoesNotExistException.java](/sb-ms-1/src/main/java/hust/project/gioimon/gm_post/service/exceptions/custom/UserDoesNotExistException.java) | Java | 6 | 0 | 2 | 8 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/exceptions/custom/UsernameExistedException.java](/sb-ms-1/src/main/java/hust/project/gioimon/gm_post/service/exceptions/custom/UsernameExistedException.java) | Java | 6 | 0 | 3 | 9 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/model/dto/request/AddCoinReqDTO.java](/sb-ms-1/src/main/java/hust/project/gioimon/gm_post/service/model/dto/request/AddCoinReqDTO.java) | Java | 14 | 0 | 3 | 17 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/model/dto/request/CreatePostDTO.java](/sb-ms-1/src/main/java/hust/project/gioimon/gm_post/service/model/dto/request/CreatePostDTO.java) | Java | 17 | 0 | 4 | 21 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/model/dto/request/GetDetailPostDTO.java](/sb-ms-1/src/main/java/hust/project/gioimon/gm_post/service/model/dto/request/GetDetailPostDTO.java) | Java | 8 | 0 | 3 | 11 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/model/dto/request/LoginRequestDTO.java](/sb-ms-1/src/main/java/hust/project/gioimon/gm_post/service/model/dto/request/LoginRequestDTO.java) | Java | 13 | 0 | 3 | 16 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/model/dto/request/PostCommentDTO.java](/sb-ms-1/src/main/java/hust/project/gioimon/gm_post/service/model/dto/request/PostCommentDTO.java) | Java | 16 | 0 | 4 | 20 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/model/dto/response/CommentResponseDTO.java](/sb-ms-1/src/main/java/hust/project/gioimon/gm_post/service/model/dto/response/CommentResponseDTO.java) | Java | 21 | 0 | 3 | 24 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/model/dto/response/LoginResponseDTO.java](/sb-ms-1/src/main/java/hust/project/gioimon/gm_post/service/model/dto/response/LoginResponseDTO.java) | Java | 14 | 0 | 3 | 17 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/model/dto/response/PostResponseDTO.java](/sb-ms-1/src/main/java/hust/project/gioimon/gm_post/service/model/dto/response/PostResponseDTO.java) | Java | 16 | 0 | 3 | 19 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/model/entity/CommentCompositeKey.java](/sb-ms-1/src/main/java/hust/project/gioimon/gm_post/service/model/entity/CommentCompositeKey.java) | Java | 21 | 0 | 4 | 25 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/model/entity/Post.java](/sb-ms-1/src/main/java/hust/project/gioimon/gm_post/service/model/entity/Post.java) | Java | 44 | 0 | 4 | 48 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/model/entity/PostComment.java](/sb-ms-1/src/main/java/hust/project/gioimon/gm_post/service/model/entity/PostComment.java) | Java | 29 | 0 | 5 | 34 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/model/entity/PostFavCompositeKey.java](/sb-ms-1/src/main/java/hust/project/gioimon/gm_post/service/model/entity/PostFavCompositeKey.java) | Java | 18 | 0 | 3 | 21 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/model/entity/PostFavourite.java](/sb-ms-1/src/main/java/hust/project/gioimon/gm_post/service/model/entity/PostFavourite.java) | Java | 25 | 0 | 3 | 28 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/model/entity/Profile.java](/sb-ms-1/src/main/java/hust/project/gioimon/gm_post/service/model/entity/Profile.java) | Java | 31 | 0 | 4 | 35 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/repository/jdbc/BaseRepository.java](/sb-ms-1/src/main/java/hust/project/gioimon/gm_post/service/repository/jdbc/BaseRepository.java) | Java | 52 | 0 | 3 | 55 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/repository/jdbc/PostJDBCRepository.java](/sb-ms-1/src/main/java/hust/project/gioimon/gm_post/service/repository/jdbc/PostJDBCRepository.java) | Java | 17 | 0 | 3 | 20 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/repository/jpa/ListPostRepository.java](/sb-ms-1/src/main/java/hust/project/gioimon/gm_post/service/repository/jpa/ListPostRepository.java) | Java | 11 | 0 | 3 | 14 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/repository/jpa/PostCommentRepository.java](/sb-ms-1/src/main/java/hust/project/gioimon/gm_post/service/repository/jpa/PostCommentRepository.java) | Java | 14 | 0 | 4 | 18 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/repository/jpa/PostFavRepository.java](/sb-ms-1/src/main/java/hust/project/gioimon/gm_post/service/repository/jpa/PostFavRepository.java) | Java | 23 | 0 | 3 | 26 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/repository/jpa/PostRepository.java](/sb-ms-1/src/main/java/hust/project/gioimon/gm_post/service/repository/jpa/PostRepository.java) | Java | 17 | 0 | 4 | 21 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/service/ListPostService.java](/sb-ms-1/src/main/java/hust/project/gioimon/gm_post/service/service/ListPostService.java) | Java | 128 | 0 | 12 | 140 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/service/PostCommentService.java](/sb-ms-1/src/main/java/hust/project/gioimon/gm_post/service/service/PostCommentService.java) | Java | 54 | 0 | 4 | 58 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/service/PostFavouriteService.java](/sb-ms-1/src/main/java/hust/project/gioimon/gm_post/service/service/PostFavouriteService.java) | Java | 51 | 1 | 8 | 60 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/service/PostService.java](/sb-ms-1/src/main/java/hust/project/gioimon/gm_post/service/service/PostService.java) | Java | 41 | 0 | 6 | 47 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/utils/BaseResponse.java](/sb-ms-1/src/main/java/hust/project/gioimon/gm_post/service/utils/BaseResponse.java) | Java | 18 | 0 | 2 | 20 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/utils/GsonUtil.java](/sb-ms-1/src/main/java/hust/project/gioimon/gm_post/service/utils/GsonUtil.java) | Java | 118 | 0 | 16 | 134 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/utils/StringUtil.java](/sb-ms-1/src/main/java/hust/project/gioimon/gm_post/service/utils/StringUtil.java) | Java | 21 | 1 | 3 | 25 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/utils/TimeUtil.java](/sb-ms-1/src/main/java/hust/project/gioimon/gm_post/service/utils/TimeUtil.java) | Java | 6 | 0 | 2 | 8 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/utils/Validator.java](/sb-ms-1/src/main/java/hust/project/gioimon/gm_post/service/utils/Validator.java) | Java | 8 | 0 | 3 | 11 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/utils/network/OkHttpUtil.java](/sb-ms-1/src/main/java/hust/project/gioimon/gm_post/service/utils/network/OkHttpUtil.java) | Java | 141 | 0 | 15 | 156 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/utils/token/JWTCreator.java](/sb-ms-1/src/main/java/hust/project/gioimon/gm_post/service/utils/token/JWTCreator.java) | Java | 37 | 0 | 8 | 45 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/utils/token/TokenElements.java](/sb-ms-1/src/main/java/hust/project/gioimon/gm_post/service/utils/token/TokenElements.java) | Java | 31 | 0 | 7 | 38 |
| [gm-post/src/main/java/hust/project/gioimon/gm_post/service/utils/token/TokenUtil.java](/sb-ms-1/src/main/java/hust/project/gioimon/gm_post/service/utils/token/TokenUtil.java) | Java | 16 | 0 | 3 | 19 |
| [gm-post/src/main/resources/application.properties](/sb-ms-1/src/main/resources/application.properties) | Properties | 9 | 4 | 2 | 15 |
| [gm-post/src/test/java/hust/project/gioimon/gm_post/GmPostApplicationTests.java](/sb-ms-1/src/test/java/hust/project/gioimon/gm_post/GmPostApplicationTests.java) | Java | 9 | 0 | 5 | 14 |
| [gm-post/src/test/java/hust/project/gioimon/gm_post/service/controller/ListPostTests.java](/sb-ms-1/src/test/java/hust/project/gioimon/gm_post/service/controller/ListPostTests.java) | Java | 106 | 0 | 12 | 118 |

[Summary](results.md) / [Details](details.md) / [Diff Summary](diff.md) / Diff Details