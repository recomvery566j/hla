# classes.dex

.class public Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;
.super Ljava/lang/Object;
.source "CustomPersistentDataStore.java"


# static fields
.field private static final ATTRIBUTE_ENABLED_TAG:Ljava/lang/String; = "enabled"

.field private static final ATTRIBUTE_NITS_TAG:Ljava/lang/String; = "nit"

.field public static final CUSTOM_BACKUP_DIR_NAME:Ljava/lang/String; = "displayconfig"

.field public static final CUSTOM_BACKUP_FILE_NAME:Ljava/lang/String; = "custom_brightness_backup.xml"

.field private static final CUSTOM_BACKUP_FILE_ROOT_ELEMENT:Ljava/lang/String; = "custom-config"

.field private static final CUSTOM_CURVE_ENABLED_TAG:Ljava/lang/String; = "custom_curve_enabled"

.field private static final CUSTOM_CURVE_TAG:Ljava/lang/String; = "custom_curve"

.field private static final INDIVIDUAL_DEFAULT_POINT_TAG:Ljava/lang/String; = "default_point"

.field private static final INDIVIDUAL_DEFAULT_SPLINE_TAG:Ljava/lang/String; = "individual_default_spline"

.field private static final INDIVIDUAL_GAME_POINT_TAG:Ljava/lang/String; = "game_point"

.field private static final INDIVIDUAL_GAME_SPLINE_TAG:Ljava/lang/String; = "individual_game_spline"

.field private static final INDIVIDUAL_MODEL_ENABLED_TAG:Ljava/lang/String; = "individual_model_enabled"

.field private static final INDIVIDUAL_MODEL_TAG:Ljava/lang/String; = "individual_model"

.field private static final INDIVIDUAL_VIDEO_POINT_TAG:Ljava/lang/String; = "video_point"

.field private static final INDIVIDUAL_VIDEO_SPLINE_TAG:Ljava/lang/String; = "individual_video_spline"

.field private static final TAG:Ljava/lang/String; = "CbmController-CustomPersistentDataStore"


# instance fields
.field private final mBgHandler:Landroid/os/Handler;

.field private final mCbmController:Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;

.field private mCustomCurveEnabled:Z

.field private final mDefaultLux:[F

.field private mDefaultNits:[F

.field private final mFile:Landroid/util/AtomicFile;

.field private mGameNits:[F

.field private mIndividualModelEnabled:Z

.field private final mLock:Ljava/lang/Object;

.field private mVideoNits:[F


# direct methods
.method public static synthetic $r8$lambda$1pZXttrMDJcOdGqAxmoRmLsXS2E(Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->lambda$storeIndividualModelEnabled$1(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$CHRiuwiGTYZMfTqB3CsWm-gjWn4(Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;I[F)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->lambda$storeIndividualSpline$2(I[F)V

    return-void
.end method

.method public static synthetic $r8$lambda$gsII2vJwNwlzxNXqdytHNGXTnXI(Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->lambda$storeCustomCurveEnabled$0(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;[F)V
    .registers 5
    .param p1, "controller"  # Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;
    .param p2, "defaultLux"  # [F

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->mLock:Ljava/lang/Object;

    .line 83
    iput-object p1, p0, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->mCbmController:Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;

    .line 84
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->mBgHandler:Landroid/os/Handler;

    .line 85
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->mDefaultLux:[F

    .line 86
    array-length v0, p2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->mDefaultNits:[F

    .line 87
    array-length v0, p2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->mGameNits:[F

    .line 88
    array-length v0, p2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->mVideoNits:[F

    .line 89
    invoke-direct {p0}, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->getFile()Landroid/util/AtomicFile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->mFile:Landroid/util/AtomicFile;

    .line 90
    invoke-direct {p0}, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->loadFromXml()V

    .line 91
    return-void
.end method

.method private getFile()Landroid/util/AtomicFile;
    .registers 5

    .line 259
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "displayconfig"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, "custom_brightness_backup.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method private isNonZeroArray([F)Z
    .registers 7
    .param p1, "array"  # [F

    .line 264
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_11

    aget v3, p1, v2

    .line 265
    .local v3, "v":F
    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_e

    .line 266
    const/4 v0, 0x1

    return v0

    .line 264
    .end local v3  # "v":F
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 269
    :cond_11
    return v1
.end method

.method private synthetic lambda$storeCustomCurveEnabled$0(Z)V
    .registers 2
    .param p1, "enabled"  # Z

    .line 140
    iput-boolean p1, p0, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->mCustomCurveEnabled:Z

    return-void
.end method

.method private synthetic lambda$storeIndividualModelEnabled$1(Z)V
    .registers 2
    .param p1, "enabled"  # Z

    .line 144
    iput-boolean p1, p0, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->mIndividualModelEnabled:Z

    return-void
.end method

.method private synthetic lambda$storeIndividualSpline$2(I[F)V
    .registers 4
    .param p1, "category"  # I
    .param p2, "nits"  # [F

    .line 153
    if-nez p1, :cond_a

    .line 154
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->mDefaultNits:[F

    goto :goto_1f

    .line 155
    :cond_a
    const/4 v0, 0x1

    if-ne p1, v0, :cond_15

    .line 156
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->mGameNits:[F

    goto :goto_1f

    .line 157
    :cond_15
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1f

    .line 158
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->mVideoNits:[F

    .line 160
    :cond_1f
    :goto_1f
    return-void
.end method

.method private listToArray([FLjava/util/List;)V
    .registers 5
    .param p1, "array"  # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 250
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    array-length v0, p1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_8

    .line 251
    return-void

    .line 253
    :cond_8
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 254
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    aput v1, p1, v0

    .line 253
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 256
    .end local v0  # "i":I
    :cond_1e
    return-void
.end method

.method private loadCustomBrightnessConfig(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 239
    .local p1, "defaultNitsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local p2, "gameNitsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local p3, "videoNitsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->mDefaultNits:[F

    invoke-direct {p0, v0, p1}, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->listToArray([FLjava/util/List;)V

    .line 240
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->mGameNits:[F

    invoke-direct {p0, v0, p2}, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->listToArray([FLjava/util/List;)V

    .line 241
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->mVideoNits:[F

    invoke-direct {p0, v0, p3}, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->listToArray([FLjava/util/List;)V

    .line 242
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->mCbmController:Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;

    iget-boolean v1, p0, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->mCustomCurveEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->setCustomCurveEnabledFromXml(Z)V

    .line 243
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->mCbmController:Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;

    iget-boolean v1, p0, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->mIndividualModelEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->setIndividualModelEnabledFromXml(Z)V

    .line 244
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->mCbmController:Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->mDefaultNits:[F

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->buildConfigurationFromXml(I[F)V

    .line 245
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->mCbmController:Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->mGameNits:[F

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->buildConfigurationFromXml(I[F)V

    .line 246
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->mCbmController:Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->mVideoNits:[F

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/aiautobrt/CustomBrightnessModeController;->buildConfigurationFromXml(I[F)V

    .line 247
    return-void
.end method

.method private loadFromXml()V
    .registers 14

    .line 190
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 191
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->mFile:Landroid/util/AtomicFile;

    if-eqz v1, :cond_f9

    iget-object v1, p0, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->exists()Z

    move-result v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_fb

    if-eqz v1, :cond_f9

    .line 192
    const/4 v1, 0x0

    .line 194
    .local v1, "inputStream":Ljava/io/FileInputStream;
    :try_start_10
    iget-object v2, p0, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    move-object v1, v2

    .line 195
    const-string v2, "CbmController-CustomPersistentDataStore"

    const-string v3, "Start reading custom brightness config from xml."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-static {v1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v2

    .line 198
    .local v2, "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v3, "defaultNitsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v4, "gameNitsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .local v5, "videoNitsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    :cond_31
    :goto_31
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v6

    move v7, v6

    .local v7, "type":I
    const/4 v8, 0x1

    if-eq v6, v8, :cond_c9

    .line 202
    const/4 v6, 0x3

    if-eq v7, v6, :cond_31

    const/4 v9, 0x4

    if-ne v7, v9, :cond_40

    .line 203
    goto :goto_31

    .line 205
    :cond_40
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 206
    .local v10, "tag":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v11

    const/4 v12, 0x0

    sparse-switch v11, :sswitch_data_fe

    :cond_4c
    goto :goto_81

    :sswitch_4d
    const-string/jumbo v6, "video_point"

    invoke-virtual {v10, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4c

    move v8, v9

    goto :goto_82

    :sswitch_58
    const-string v6, "default_point"

    invoke-virtual {v10, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4c

    const/4 v8, 0x2

    goto :goto_82

    :sswitch_62
    const-string/jumbo v8, "game_point"

    invoke-virtual {v10, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4c

    move v8, v6

    goto :goto_82

    :sswitch_6d
    const-string/jumbo v6, "individual_model_enabled"

    invoke-virtual {v10, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4c

    goto :goto_82

    :sswitch_77
    const-string v6, "custom_curve_enabled"

    invoke-virtual {v10, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4c

    move v8, v12

    goto :goto_82

    :goto_81
    const/4 v8, -0x1

    :goto_82
    const/4 v6, 0x0

    const/4 v9, 0x0

    packed-switch v8, :pswitch_data_114

    goto :goto_c7

    .line 220
    :pswitch_88  #0x4
    const-string/jumbo v8, "nit"

    invoke-interface {v2, v9, v8, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    goto :goto_c7

    .line 217
    :pswitch_97  #0x3
    const-string/jumbo v8, "nit"

    invoke-interface {v2, v9, v8, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    goto :goto_c7

    .line 214
    :pswitch_a6  #0x2
    const-string/jumbo v8, "nit"

    invoke-interface {v2, v9, v8, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    goto :goto_c7

    .line 211
    :pswitch_b5  #0x1
    const-string v6, "enabled"

    invoke-interface {v2, v9, v6, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->mIndividualModelEnabled:Z

    .line 212
    goto :goto_c7

    .line 208
    :pswitch_be  #0x0
    const-string v6, "enabled"

    invoke-interface {v2, v9, v6, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->mCustomCurveEnabled:Z

    .line 209
    nop

    .line 225
    .end local v10  # "tag":Ljava/lang/String;
    :goto_c7
    goto/16 :goto_31

    .line 226
    :cond_c9
    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->loadCustomBrightnessConfig(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_cc} :catch_d2
    .catchall {:try_start_10 .. :try_end_cc} :catchall_d0

    .line 231
    .end local v2  # "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    .end local v3  # "defaultNitsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v4  # "gameNitsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v5  # "videoNitsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v7  # "type":I
    :try_start_cc
    invoke-static {v1}, Lmiui/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_cf
    .catchall {:try_start_cc .. :try_end_cf} :catchall_fb

    goto :goto_f3

    :catchall_d0
    move-exception v2

    goto :goto_f4

    .line 227
    :catch_d2
    move-exception v2

    .line 228
    .local v2, "e":Ljava/lang/Exception;
    :try_start_d3
    iget-object v3, p0, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->delete()V

    .line 229
    const-string v3, "CbmController-CustomPersistentDataStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read custom brightness backup"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f0
    .catchall {:try_start_d3 .. :try_end_f0} :catchall_d0

    .line 231
    .end local v2  # "e":Ljava/lang/Exception;
    :try_start_f0
    invoke-static {v1}, Lmiui/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 232
    :goto_f3
    goto :goto_f9

    .line 231
    :goto_f4
    invoke-static {v1}, Lmiui/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 232
    nop

    .end local p0  # "this":Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;
    throw v2

    .line 234
    .end local v1  # "inputStream":Ljava/io/FileInputStream;
    .restart local p0  # "this":Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;
    :cond_f9
    :goto_f9
    monitor-exit v0

    .line 235
    return-void

    .line 234
    :catchall_fb
    move-exception v1

    monitor-exit v0
    :try_end_fd
    .catchall {:try_start_f0 .. :try_end_fd} :catchall_fb

    throw v1

    :sswitch_data_fe
    .sparse-switch
        -0x5ce4285d -> :sswitch_77
        0x14c86905 -> :sswitch_6d
        0x39aac703 -> :sswitch_62
        0x4e4b1a12 -> :sswitch_58
        0x526a44cc -> :sswitch_4d
    .end sparse-switch

    :pswitch_data_114
    .packed-switch 0x0
        :pswitch_be  #00000000
        :pswitch_b5  #00000001
        :pswitch_a6  #00000002
        :pswitch_97  #00000003
        :pswitch_88  #00000004
    .end packed-switch
.end method

.method private writeArrayToXml(Landroid/util/AtomicFile;Ljava/io/FileOutputStream;Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;[F)V
    .registers 10
    .param p1, "writeFile"  # Landroid/util/AtomicFile;
    .param p2, "outStream"  # Ljava/io/FileOutputStream;
    .param p3, "out"  # Lcom/android/modules/utils/TypedXmlSerializer;
    .param p4, "tag"  # Ljava/lang/String;
    .param p5, "nits"  # [F

    .line 178
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->mDefaultLux:[F

    array-length v1, v1

    if-ge v0, v1, :cond_18

    .line 179
    const/4 v1, 0x0

    invoke-interface {p3, v1, p4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 180
    const-string/jumbo v2, "nit"

    aget v3, p5, v0

    invoke-interface {p3, v1, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    .line 181
    invoke-interface {p3, v1, p4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_15} :catch_19

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 186
    .end local v0  # "i":I
    :cond_18
    goto :goto_35

    .line 183
    :catch_19
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p1, p2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to write backup of nits"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CbmController-CustomPersistentDataStore"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_35
    return-void
.end method

.method private writeFeatureEnabledToXml(Landroid/util/AtomicFile;Ljava/io/FileOutputStream;Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 10
    .param p1, "writeFile"  # Landroid/util/AtomicFile;
    .param p2, "outStream"  # Ljava/io/FileOutputStream;
    .param p3, "out"  # Lcom/android/modules/utils/TypedXmlSerializer;
    .param p4, "attribute"  # Ljava/lang/String;
    .param p5, "tag"  # Ljava/lang/String;
    .param p6, "enabled"  # Z

    .line 166
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p3, v0, p5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 167
    invoke-interface {p3, v0, p4, p6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 168
    invoke-interface {p3, v0, p5}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_b

    .line 172
    goto :goto_27

    .line 169
    :catch_b
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p1, p2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to write backup of feature enabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CbmController-CustomPersistentDataStore"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_27
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 273
    const-string v0, " CustomPersistentDataStore:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCustomCurveEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->mCustomCurveEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIndividualModelEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->mIndividualModelEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->mDefaultNits:[F

    invoke-direct {p0, v0}, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->isNonZeroArray([F)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDefaultNits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->mDefaultNits:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 279
    :cond_59
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->mGameNits:[F

    invoke-direct {p0, v0}, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->isNonZeroArray([F)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mGameNits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->mGameNits:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 282
    :cond_7d
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->mVideoNits:[F

    invoke-direct {p0, v0}, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->isNonZeroArray([F)Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mVideoNits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->mVideoNits:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 285
    :cond_a1
    return-void
.end method

.method public saveToXml()V
    .registers 12

    .line 94
    iget-object v1, p0, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 95
    const/4 v2, 0x0

    .line 97
    .local v2, "outputStream":Ljava/io/FileOutputStream;
    :try_start_4
    const-string v0, "CbmController-CustomPersistentDataStore"

    const-string v3, "Save custom brightness config to xml."

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_11} :catch_b7
    .catchall {:try_start_4 .. :try_end_11} :catchall_b4

    move-object v5, v0

    .line 99
    .end local v2  # "outputStream":Ljava/io/FileOutputStream;
    .local v5, "outputStream":Ljava/io/FileOutputStream;
    :try_start_12
    invoke-static {v5}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v6

    .line 100
    .local v6, "out":Lcom/android/modules/utils/TypedXmlSerializer;
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v10, 0x0

    invoke-interface {v6, v10, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 101
    const-string/jumbo v2, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v6, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 102
    const-string v0, "custom-config"

    invoke-interface {v6, v10, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 104
    const-string v0, "custom_curve"

    invoke-interface {v6, v10, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 105
    iget-object v4, p0, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->mFile:Landroid/util/AtomicFile;

    const-string v7, "enabled"

    const-string v8, "custom_curve_enabled"

    iget-boolean v9, p0, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->mCustomCurveEnabled:Z
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_37} :catch_b0
    .catchall {:try_start_12 .. :try_end_37} :catchall_b4

    move-object v3, p0

    :try_start_38
    invoke-direct/range {v3 .. v9}, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->writeFeatureEnabledToXml(Landroid/util/AtomicFile;Ljava/io/FileOutputStream;Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 107
    const-string v0, "custom_curve"

    invoke-interface {v6, v10, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 109
    const-string/jumbo v0, "individual_model"

    invoke-interface {v6, v10, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 110
    iget-object v4, v3, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->mFile:Landroid/util/AtomicFile;

    const-string v7, "enabled"

    const-string/jumbo v8, "individual_model_enabled"

    iget-boolean v9, v3, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->mIndividualModelEnabled:Z

    invoke-direct/range {v3 .. v9}, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->writeFeatureEnabledToXml(Landroid/util/AtomicFile;Ljava/io/FileOutputStream;Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 112
    const-string/jumbo v0, "individual_model"

    invoke-interface {v6, v10, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 114
    iget-boolean v0, v3, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->mIndividualModelEnabled:Z

    if-eqz v0, :cond_9d

    .line 115
    const-string/jumbo v0, "individual_default_spline"

    invoke-interface {v6, v10, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 116
    iget-object v4, v3, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->mFile:Landroid/util/AtomicFile;

    const-string v7, "default_point"

    iget-object v8, v3, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->mDefaultNits:[F

    invoke-direct/range {v3 .. v8}, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->writeArrayToXml(Landroid/util/AtomicFile;Ljava/io/FileOutputStream;Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;[F)V

    .line 117
    const-string/jumbo v0, "individual_default_spline"

    invoke-interface {v6, v10, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 119
    const-string/jumbo v0, "individual_game_spline"

    invoke-interface {v6, v10, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 120
    iget-object v4, v3, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->mFile:Landroid/util/AtomicFile;

    const-string/jumbo v7, "game_point"

    iget-object v8, v3, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->mGameNits:[F

    invoke-direct/range {v3 .. v8}, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->writeArrayToXml(Landroid/util/AtomicFile;Ljava/io/FileOutputStream;Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;[F)V

    .line 121
    const-string/jumbo v0, "individual_game_spline"

    invoke-interface {v6, v10, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 123
    const-string/jumbo v0, "individual_video_spline"

    invoke-interface {v6, v10, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 124
    iget-object v4, v3, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->mFile:Landroid/util/AtomicFile;

    const-string/jumbo v7, "video_point"

    iget-object v8, v3, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->mVideoNits:[F

    invoke-direct/range {v3 .. v8}, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->writeArrayToXml(Landroid/util/AtomicFile;Ljava/io/FileOutputStream;Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;[F)V

    .line 125
    const-string/jumbo v0, "individual_video_spline"

    invoke-interface {v6, v10, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 128
    :cond_9d
    const-string v0, "custom-config"

    invoke-interface {v6, v10, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 129
    invoke-interface {v6}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 130
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 131
    iget-object v0, v3, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v5}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_ad} :catch_ae
    .catchall {:try_start_38 .. :try_end_ad} :catchall_d8

    .line 135
    .end local v6  # "out":Lcom/android/modules/utils/TypedXmlSerializer;
    goto :goto_d6

    .line 132
    :catch_ae
    move-exception v0

    goto :goto_b2

    :catch_b0
    move-exception v0

    move-object v3, p0

    :goto_b2
    move-object v2, v5

    goto :goto_b9

    .line 136
    .end local v5  # "outputStream":Ljava/io/FileOutputStream;
    :catchall_b4
    move-exception v0

    move-object v3, p0

    goto :goto_d9

    .line 132
    .restart local v2  # "outputStream":Ljava/io/FileOutputStream;
    :catch_b7
    move-exception v0

    move-object v3, p0

    .line 133
    .local v0, "e":Ljava/lang/Exception;
    :goto_b9
    :try_start_b9
    iget-object v4, v3, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 134
    const-string v4, "CbmController-CustomPersistentDataStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to write custom brightness config"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .end local v0  # "e":Ljava/lang/Exception;
    .end local v2  # "outputStream":Ljava/io/FileOutputStream;
    :goto_d6
    monitor-exit v1

    .line 137
    return-void

    .line 136
    :catchall_d8
    move-exception v0

    :goto_d9
    monitor-exit v1
    :try_end_da
    .catchall {:try_start_b9 .. :try_end_da} :catchall_d8

    throw v0
.end method

.method public startWrite()V
    .registers 3

    .line 148
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 149
    return-void
.end method

.method public storeCustomCurveEnabled(Z)V
    .registers 4
    .param p1, "enabled"  # Z

    .line 140
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 141
    return-void
.end method

.method public storeIndividualModelEnabled(Z)V
    .registers 4
    .param p1, "enabled"  # Z

    .line 144
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 145
    return-void
.end method

.method public storeIndividualSpline(I[F)V
    .registers 5
    .param p1, "category"  # I
    .param p2, "nits"  # [F

    .line 152
    iget-object v0, p0, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/display/aiautobrt/CustomPersistentDataStore$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/display/aiautobrt/CustomPersistentDataStore;I[F)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 161
    return-void
.end method
