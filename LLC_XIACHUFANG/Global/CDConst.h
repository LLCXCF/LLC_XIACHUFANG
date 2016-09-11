
#import <UIKit/UIKit.h>

typedef enum {
    CDTopicTypeAll = 1,
    CDTopicTypePicture = 10,
    CDTopicTypeWord = 29,
    CDTopicTypeVoice = 31,
    CDTopicTypeVideo = 41,
} CDTopicType;



/** 精华-顶部标题的高度 */
UIKIT_EXTERN CGFloat const CDTitilesViewH;
/** 精华-顶部标题的Y */
UIKIT_EXTERN CGFloat const CDTitilesViewY;


/** 精华-cell-间距 */
UIKIT_EXTERN CGFloat const CDTopicCellMargin;
/** 精华-cell-文字内容的Y值 */
UIKIT_EXTERN CGFloat const CDTopicCellTextY;
/** 精华-cell-底部工具条的高度 */
UIKIT_EXTERN CGFloat const CDTopicCellBottomBarH;
/** 精华-cell-图片帖子的最大高度 */
UIKIT_EXTERN CGFloat const CDTopicCellPictureMaxH;
/** 精华-cell-图片帖子一旦超过最大高度,就是用Break */
UIKIT_EXTERN CGFloat const CDTopicCellPictureBreakH;

/** CDUser模型-性别属性值 */
UIKIT_EXTERN NSString * const CDUserSexMale;
UIKIT_EXTERN NSString * const CDUserSexFemale;

/** 精华-cell-最热评论标题的高度 */
UIKIT_EXTERN CGFloat const CDTopicCellTopCmtTitleH;

/** tabBar被选中的通知名字 */
UIKIT_EXTERN NSString * const CDTabBarDidSelectNotification;
/** tabBar被选中的通知 - 被选中的控制器的index key */
UIKIT_EXTERN NSString * const CDSelectedControllerIndexKey;
/** tabBar被选中的通知 - 被选中的控制器 key */
UIKIT_EXTERN NSString * const CDSelectedControllerKey;

/** 标签-间距 */
UIKIT_EXTERN CGFloat const CDTagMargin;
/** 标签-高度 */
UIKIT_EXTERN CGFloat const CDTagH;







