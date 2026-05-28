# classes.dex

.class public Lcom/android/server/display/aiautobrt/AppClassifier;
.super Ljava/lang/Object;
.source "AppClassifier.java"


# static fields
.field private static final APP_CATEGORY_CONFIG_DIR:Ljava/lang/String; = "displayconfig"

.field public static final CATEGORY_FINANCE_LEARN:I = 0x4

.field public static final CATEGORY_GAME:I = 0x1

.field public static final CATEGORY_MAX:I = 0x9

.field public static final CATEGORY_MUSIC_READ:I = 0x3

.field public static final CATEGORY_NEWS:I = 0x5

.field public static final CATEGORY_PHOTO:I = 0x7

.field public static final CATEGORY_SHOPPING:I = 0x6

.field public static final CATEGORY_SOCIAL:I = 0x9

.field public static final CATEGORY_TRAVEL:I = 0x8

.field public static final CATEGORY_UNDEFINED:I = 0x0

.field public static final CATEGORY_VIDEO:I = 0x2

.field private static final CLOUD_BACKUP_CONFIG_FILE:Ljava/lang/String; = "cloud_app_brightness_category.xml"

.field private static final DEFAULT_CONFIG_FILE:Ljava/lang/String; = "app_brightness_category.xml"

.field private static final ETC_DIR:Ljava/lang/String; = "etc"

.field private static final TAG:Ljava/lang/String; = "CbmController-AppClassifier"

.field private static final sInstance:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/android/server/display/aiautobrt/AppClassifier;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAppCategoryInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/display/aiautobrt/config/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mCachedAppCategoryInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 69
    new-instance v0, Lcom/android/server/display/aiautobrt/AppClassifier$1;

    invoke-direct {v0}, Lcom/android/server/display/aiautobrt/AppClassifier$1;-><init>()V

    sput-object v0, Lcom/android/server/display/aiautobrt/AppClassifier;->sInstance:Landroid/util/Singleton;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/aiautobrt/AppClassifier;->mAppCategoryInfo:Ljava/util/List;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/aiautobrt/AppClassifier;->mCachedAppCategoryInfo:Ljava/util/HashMap;

    .line 81
    invoke-virtual {p0}, Lcom/android/server/display/aiautobrt/AppClassifier;->loadAppCategoryConfig()V

    .line 82
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/aiautobrt/AppClassifier-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/display/aiautobrt/AppClassifier;-><init>()V

    return-void
.end method

.method public static categoryToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "category"  # I

    .line 158
    packed-switch p0, :pswitch_data_2a

    .line 179
    const-string v0, "default"

    return-object v0

    .line 160
    :pswitch_6  #0x9
    const-string/jumbo v0, "social"

    return-object v0

    .line 170
    :pswitch_a  #0x8
    const-string/jumbo v0, "travel"

    return-object v0

    .line 168
    :pswitch_e  #0x7
    const-string/jumbo v0, "photo"

    return-object v0

    .line 172
    :pswitch_12  #0x6
    const-string/jumbo v0, "shopping"

    return-object v0

    .line 176
    :pswitch_16  #0x5
    const-string/jumbo v0, "news"

    return-object v0

    .line 174
    :pswitch_1a  #0x4
    const-string v0, "finance_learn"

    return-object v0

    .line 166
    :pswitch_1d  #0x3
    const-string/jumbo v0, "music_read"

    return-object v0

    .line 162
    :pswitch_21  #0x2
    const-string/jumbo v0, "video"

    return-object v0

    .line 164
    :pswitch_25  #0x1
    const-string/jumbo v0, "game"

    return-object v0

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_25  #00000001
        :pswitch_21  #00000002
        :pswitch_1d  #00000003
        :pswitch_1a  #00000004
        :pswitch_16  #00000005
        :pswitch_12  #00000006
        :pswitch_e  #00000007
        :pswitch_a  #00000008
        :pswitch_6  #00000009
    .end packed-switch
.end method

.method public static getInstance()Lcom/android/server/display/aiautobrt/AppClassifier;
    .registers 1

    .line 77
    sget-object v0, Lcom/android/server/display/aiautobrt/AppClassifier;->sInstance:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/aiautobrt/AppClassifier;

    return-object v0
.end method

.method private loadConfigFromFile()Lcom/android/server/display/aiautobrt/config/AppCategoryConfig;
    .registers 5

    .line 102
    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "app_brightness_category.xml"

    const-string v2, "etc"

    const-string v3, "displayconfig"

    filled-new-array {v2, v3, v1}, [Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 106
    .local v0, "defaultFile":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "cloud_app_brightness_category.xml"

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v2

    .line 105
    invoke-static {v1, v2}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 109
    .local v1, "cloudFile":Ljava/io/File;
    invoke-direct {p0, v1}, Lcom/android/server/display/aiautobrt/AppClassifier;->readFromConfig(Ljava/io/File;)Lcom/android/server/display/aiautobrt/config/AppCategoryConfig;

    move-result-object v2

    .line 110
    .local v2, "config":Lcom/android/server/display/aiautobrt/config/AppCategoryConfig;
    if-eqz v2, :cond_27

    .line 111
    return-object v2

    .line 114
    :cond_27
    invoke-direct {p0, v0}, Lcom/android/server/display/aiautobrt/AppClassifier;->readFromConfig(Ljava/io/File;)Lcom/android/server/display/aiautobrt/config/AppCategoryConfig;

    move-result-object v2

    .line 115
    return-object v2
.end method

.method private readFromConfig(Ljava/io/File;)Lcom/android/server/display/aiautobrt/config/AppCategoryConfig;
    .registers 6
    .param p1, "configFile"  # Ljava/io/File;

    .line 122
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 123
    return-object v1

    .line 126
    :cond_8
    :try_start_8
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/nio/file/OpenOption;

    invoke-static {v2, v3}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_18} :catch_2a
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_8 .. :try_end_18} :catch_2a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_18} :catch_2a

    .line 127
    .local v0, "in":Ljava/io/InputStream;
    :try_start_18
    invoke-static {v0}, Lcom/android/server/display/aiautobrt/config/XmlParser;->read(Ljava/io/InputStream;)Lcom/android/server/display/aiautobrt/config/AppCategoryConfig;

    move-result-object v2
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_20

    .line 128
    :try_start_1c
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_2a
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_1c .. :try_end_1f} :catch_2a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1c .. :try_end_1f} :catch_2a

    .line 127
    return-object v2

    .line 126
    :catchall_20
    move-exception v2

    :try_start_21
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_25

    goto :goto_29

    :catchall_25
    move-exception v3

    :try_start_26
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0  # "this":Lcom/android/server/display/aiautobrt/AppClassifier;
    .end local p1  # "configFile":Ljava/io/File;
    :goto_29
    throw v2
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2a} :catch_2a
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_26 .. :try_end_2a} :catch_2a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_26 .. :try_end_2a} :catch_2a

    .line 128
    .end local v0  # "in":Ljava/io/InputStream;
    .restart local p0  # "this":Lcom/android/server/display/aiautobrt/AppClassifier;
    .restart local p1  # "configFile":Ljava/io/File;
    :catch_2a
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 131
    .end local v0  # "e":Ljava/lang/Exception;
    return-object v1
.end method


# virtual methods
.method public getAppCategoryId(Ljava/lang/String;)I
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/AppClassifier;->mAppCategoryInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4d

    if-nez p1, :cond_b

    goto :goto_4d

    .line 142
    :cond_b
    const/4 v0, 0x0

    .line 143
    .local v0, "category":I
    iget-object v1, p0, Lcom/android/server/display/aiautobrt/AppClassifier;->mCachedAppCategoryInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 144
    iget-object v1, p0, Lcom/android/server/display/aiautobrt/AppClassifier;->mCachedAppCategoryInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 147
    :cond_21
    iget-object v1, p0, Lcom/android/server/display/aiautobrt/AppClassifier;->mAppCategoryInfo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/aiautobrt/config/PackageInfo;

    .line 148
    .local v2, "pkgInfo":Lcom/android/server/display/aiautobrt/config/PackageInfo;
    invoke-virtual {v2}, Lcom/android/server/display/aiautobrt/config/PackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 149
    invoke-virtual {v2}, Lcom/android/server/display/aiautobrt/config/PackageInfo;->getCateId()I

    move-result v0

    .line 150
    goto :goto_43

    .line 152
    .end local v2  # "pkgInfo":Lcom/android/server/display/aiautobrt/config/PackageInfo;
    :cond_42
    goto :goto_27

    .line 153
    :cond_43
    :goto_43
    iget-object v1, p0, Lcom/android/server/display/aiautobrt/AppClassifier;->mCachedAppCategoryInfo:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    return v0

    .line 140
    .end local v0  # "category":I
    :cond_4d
    :goto_4d
    const/4 v0, 0x0

    return v0
.end method

.method protected loadAppCategoryConfig()V
    .registers 6

    .line 85
    invoke-direct {p0}, Lcom/android/server/display/aiautobrt/AppClassifier;->loadConfigFromFile()Lcom/android/server/display/aiautobrt/config/AppCategoryConfig;

    move-result-object v0

    .line 86
    .local v0, "config":Lcom/android/server/display/aiautobrt/config/AppCategoryConfig;
    if-eqz v0, :cond_2b

    .line 87
    const-string v1, "CbmController-AppClassifier"

    const-string v2, "Update custom app category config."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {v0}, Lcom/android/server/display/aiautobrt/config/AppCategoryConfig;->getCategory()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/aiautobrt/config/AppCategory;

    .line 89
    .local v2, "category":Lcom/android/server/display/aiautobrt/config/AppCategory;
    iget-object v3, p0, Lcom/android/server/display/aiautobrt/AppClassifier;->mAppCategoryInfo:Ljava/util/List;

    invoke-virtual {v2}, Lcom/android/server/display/aiautobrt/config/AppCategory;->getPkg()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 90
    .end local v2  # "category":Lcom/android/server/display/aiautobrt/config/AppCategory;
    goto :goto_15

    .line 92
    :cond_2b
    return-void
.end method
