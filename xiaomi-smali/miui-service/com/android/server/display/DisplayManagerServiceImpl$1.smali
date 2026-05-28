# classes.dex

.class Lcom/android/server/display/DisplayManagerServiceImpl$1;
.super Lcom/miui/whetstone/IVideoFpsCallBack$Stub;
.source "DisplayManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayManagerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayManagerServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayManagerServiceImpl;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/display/DisplayManagerServiceImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 157
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerServiceImpl$1;->this$0:Lcom/android/server/display/DisplayManagerServiceImpl;

    invoke-direct {p0}, Lcom/miui/whetstone/IVideoFpsCallBack$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoFpsChange(II)V
    .registers 13
    .param p1, "uid"  # I
    .param p2, "fps"  # I

    .line 160
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerServiceImpl$1;->this$0:Lcom/android/server/display/DisplayManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerServiceImpl;->-$$Nest$fgetmVideoFpsCallBack(Lcom/android/server/display/DisplayManagerServiceImpl;)Lcom/miui/whetstone/IVideoFpsCallBack;

    move-result-object v0

    monitor-enter v0

    .line 162
    :try_start_7
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerServiceImpl$1;->this$0:Lcom/android/server/display/DisplayManagerServiceImpl;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerServiceImpl;->-$$Nest$fgetmContext(Lcom/android/server/display/DisplayManagerServiceImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "packages":[Ljava/lang/String;
    if-eqz v1, :cond_1ca

    array-length v2, v1

    if-nez v2, :cond_1c

    goto/16 :goto_1ca

    .line 166
    :cond_1c
    const/4 v2, 0x0

    aget-object v3, v1, v2

    .line 167
    .local v3, "currentPackage":Ljava/lang/String;
    const-string v4, "DisplayManagerServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removed decoder info for package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    if-nez p2, :cond_77

    .line 169
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerServiceImpl$1;->this$0:Lcom/android/server/display/DisplayManagerServiceImpl;

    invoke-static {v4}, Lcom/android/server/display/DisplayManagerServiceImpl;->-$$Nest$fgetmVideoDecoderFps(Lcom/android/server/display/DisplayManagerServiceImpl;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 170
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/display/DisplayManagerServiceImpl$VideoDecoderInfo;>;"
    :goto_43
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_76

    .line 171
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/DisplayManagerServiceImpl$VideoDecoderInfo;

    .line 172
    .local v5, "info":Lcom/android/server/display/DisplayManagerServiceImpl$VideoDecoderInfo;
    invoke-virtual {v5}, Lcom/android/server/display/DisplayManagerServiceImpl$VideoDecoderInfo;->getDecoderName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_75

    .line 173
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 174
    const-string v6, "DisplayManagerServiceImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removed decoder info for package: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    goto :goto_76

    .line 177
    .end local v5  # "info":Lcom/android/server/display/DisplayManagerServiceImpl$VideoDecoderInfo;
    :cond_75
    goto :goto_43

    .line 178
    .end local v4  # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/display/DisplayManagerServiceImpl$VideoDecoderInfo;>;"
    :cond_76
    :goto_76
    goto :goto_c8

    .line 179
    :cond_77
    const/4 v4, 0x0

    .line 180
    .local v4, "packageExists":Z
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerServiceImpl$1;->this$0:Lcom/android/server/display/DisplayManagerServiceImpl;

    invoke-static {v5}, Lcom/android/server/display/DisplayManagerServiceImpl;->-$$Nest$fgetmVideoDecoderFps(Lcom/android/server/display/DisplayManagerServiceImpl;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_82
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/DisplayManagerServiceImpl$VideoDecoderInfo;

    .line 181
    .local v6, "info":Lcom/android/server/display/DisplayManagerServiceImpl$VideoDecoderInfo;
    invoke-virtual {v6}, Lcom/android/server/display/DisplayManagerServiceImpl$VideoDecoderInfo;->getDecoderName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9d

    .line 182
    invoke-virtual {v6, p2}, Lcom/android/server/display/DisplayManagerServiceImpl$VideoDecoderInfo;->setFps(I)V

    .line 183
    const/4 v4, 0x1

    .line 184
    goto :goto_9e

    .line 186
    .end local v6  # "info":Lcom/android/server/display/DisplayManagerServiceImpl$VideoDecoderInfo;
    :cond_9d
    goto :goto_82

    .line 188
    :cond_9e
    :goto_9e
    if-nez v4, :cond_c8

    .line 189
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerServiceImpl$1;->this$0:Lcom/android/server/display/DisplayManagerServiceImpl;

    invoke-static {v5}, Lcom/android/server/display/DisplayManagerServiceImpl;->-$$Nest$fgetmVideoDecoderFps(Lcom/android/server/display/DisplayManagerServiceImpl;)Ljava/util/List;

    move-result-object v5

    new-instance v6, Lcom/android/server/display/DisplayManagerServiceImpl$VideoDecoderInfo;

    iget-object v7, p0, Lcom/android/server/display/DisplayManagerServiceImpl$1;->this$0:Lcom/android/server/display/DisplayManagerServiceImpl;

    invoke-direct {v6, v7, v3, p2}, Lcom/android/server/display/DisplayManagerServiceImpl$VideoDecoderInfo;-><init>(Lcom/android/server/display/DisplayManagerServiceImpl;Ljava/lang/String;I)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    const-string v5, "DisplayManagerServiceImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Added new decoder info for package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .end local v4  # "packageExists":Z
    :cond_c8
    :goto_c8
    const/4 v4, 0x0

    .line 194
    .local v4, "maxFps":I
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerServiceImpl$1;->this$0:Lcom/android/server/display/DisplayManagerServiceImpl;

    invoke-static {v5}, Lcom/android/server/display/DisplayManagerServiceImpl;->-$$Nest$fgetmVideoDecoderFps(Lcom/android/server/display/DisplayManagerServiceImpl;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_d3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/DisplayManagerServiceImpl$VideoDecoderInfo;

    .line 195
    .restart local v6  # "info":Lcom/android/server/display/DisplayManagerServiceImpl$VideoDecoderInfo;
    if-eqz v6, :cond_e8

    .line 196
    invoke-virtual {v6}, Lcom/android/server/display/DisplayManagerServiceImpl$VideoDecoderInfo;->getFps()I

    move-result v7

    .line 197
    .local v7, "currentFps":I
    if-le v7, v4, :cond_e8

    .line 198
    move v4, v7

    .line 201
    .end local v6  # "info":Lcom/android/server/display/DisplayManagerServiceImpl$VideoDecoderInfo;
    .end local v7  # "currentFps":I
    :cond_e8
    goto :goto_d3

    .line 202
    :cond_e9
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerServiceImpl$1;->this$0:Lcom/android/server/display/DisplayManagerServiceImpl;

    invoke-static {v5, v4}, Lcom/android/server/display/DisplayManagerServiceImpl;->-$$Nest$fputmLastVideoFps(Lcom/android/server/display/DisplayManagerServiceImpl;I)V

    .line 204
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerServiceImpl$1;->this$0:Lcom/android/server/display/DisplayManagerServiceImpl;

    invoke-static {v5}, Lcom/android/server/display/DisplayManagerServiceImpl;->-$$Nest$fgetmTouchHintTimer(Lcom/android/server/display/DisplayManagerServiceImpl;)Lcom/android/server/display/DisplayManagerServiceImpl$TouchHintTimer;

    move-result-object v5

    if-eqz v5, :cond_106

    iget-object v5, p0, Lcom/android/server/display/DisplayManagerServiceImpl$1;->this$0:Lcom/android/server/display/DisplayManagerServiceImpl;

    invoke-static {v5}, Lcom/android/server/display/DisplayManagerServiceImpl;->-$$Nest$fgetmTouchHintTimer(Lcom/android/server/display/DisplayManagerServiceImpl;)Lcom/android/server/display/DisplayManagerServiceImpl$TouchHintTimer;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/display/DisplayManagerServiceImpl$TouchHintTimer;->isTiming:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_106

    const/4 v5, 0x1

    goto :goto_107

    :cond_106
    move v5, v2

    .line 205
    .local v5, "isTouchHintTiming":Z
    :goto_107
    if-lez p2, :cond_191

    iget-object v6, p0, Lcom/android/server/display/DisplayManagerServiceImpl$1;->this$0:Lcom/android/server/display/DisplayManagerServiceImpl;

    invoke-static {v6}, Lcom/android/server/display/DisplayManagerServiceImpl;->-$$Nest$fgetmIsVideoScene(Lcom/android/server/display/DisplayManagerServiceImpl;)Z

    move-result v6

    if-nez v6, :cond_119

    iget-object v6, p0, Lcom/android/server/display/DisplayManagerServiceImpl$1;->this$0:Lcom/android/server/display/DisplayManagerServiceImpl;

    invoke-static {v6}, Lcom/android/server/display/DisplayManagerServiceImpl;->-$$Nest$fgetmVideoHighFpsScene(Lcom/android/server/display/DisplayManagerServiceImpl;)Z

    move-result v6

    if-eqz v6, :cond_191

    :cond_119
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerServiceImpl$1;->this$0:Lcom/android/server/display/DisplayManagerServiceImpl;

    invoke-static {v6}, Lcom/android/server/display/DisplayManagerServiceImpl;->-$$Nest$fgetmCurrnetVideoPackages(Lcom/android/server/display/DisplayManagerServiceImpl;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_191

    .line 206
    const/4 v2, 0x0

    .line 207
    .local v2, "scenesPackageExists":Z
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerServiceImpl$1;->this$0:Lcom/android/server/display/DisplayManagerServiceImpl;

    invoke-static {v6}, Lcom/android/server/display/DisplayManagerServiceImpl;->-$$Nest$fgetmVideoDecoderFps(Lcom/android/server/display/DisplayManagerServiceImpl;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_130
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_14f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/display/DisplayManagerServiceImpl$VideoDecoderInfo;

    .line 208
    .local v7, "info":Lcom/android/server/display/DisplayManagerServiceImpl$VideoDecoderInfo;
    iget-object v8, p0, Lcom/android/server/display/DisplayManagerServiceImpl$1;->this$0:Lcom/android/server/display/DisplayManagerServiceImpl;

    invoke-static {v8}, Lcom/android/server/display/DisplayManagerServiceImpl;->-$$Nest$fgetmCurrnetVideoPackages(Lcom/android/server/display/DisplayManagerServiceImpl;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/server/display/DisplayManagerServiceImpl$VideoDecoderInfo;->getDecoderName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14e

    .line 209
    const/4 v2, 0x1

    .line 210
    goto :goto_14f

    .line 212
    .end local v7  # "info":Lcom/android/server/display/DisplayManagerServiceImpl$VideoDecoderInfo;
    :cond_14e
    goto :goto_130

    .line 213
    :cond_14f
    :goto_14f
    if-eqz v2, :cond_167

    iget-object v6, p0, Lcom/android/server/display/DisplayManagerServiceImpl$1;->this$0:Lcom/android/server/display/DisplayManagerServiceImpl;

    invoke-static {v6}, Lcom/android/server/display/DisplayManagerServiceImpl;->-$$Nest$fgetmVideoHighFpsScene(Lcom/android/server/display/DisplayManagerServiceImpl;)Z

    move-result v6

    if-eqz v6, :cond_167

    const/16 v6, 0x6e

    if-lt p2, v6, :cond_167

    .line 214
    invoke-static {}, Lcom/android/server/display/mode/DisplayModeDirectorStub;->getInstance()Lcom/android/server/display/mode/DisplayModeDirectorStub;

    move-result-object v6

    const/high16 v7, 0x42f00000  # 120.0f

    invoke-interface {v6, v7}, Lcom/android/server/display/mode/DisplayModeDirectorStub;->setVideoMaxRefreshRate(F)V

    goto :goto_1c8

    .line 215
    :cond_167
    const/high16 v6, 0x42700000  # 60.0f

    if-eqz v2, :cond_17d

    iget-object v7, p0, Lcom/android/server/display/DisplayManagerServiceImpl$1;->this$0:Lcom/android/server/display/DisplayManagerServiceImpl;

    invoke-static {v7}, Lcom/android/server/display/DisplayManagerServiceImpl;->-$$Nest$fgetmVideoHighFpsScene(Lcom/android/server/display/DisplayManagerServiceImpl;)Z

    move-result v7

    if-eqz v7, :cond_17d

    if-nez v5, :cond_17d

    .line 216
    invoke-static {}, Lcom/android/server/display/mode/DisplayModeDirectorStub;->getInstance()Lcom/android/server/display/mode/DisplayModeDirectorStub;

    move-result-object v7

    invoke-interface {v7, v6}, Lcom/android/server/display/mode/DisplayModeDirectorStub;->setVideoMaxRefreshRate(F)V

    goto :goto_1c8

    .line 217
    :cond_17d
    if-eqz v2, :cond_1c8

    if-nez v5, :cond_1c8

    iget-object v7, p0, Lcom/android/server/display/DisplayManagerServiceImpl$1;->this$0:Lcom/android/server/display/DisplayManagerServiceImpl;

    invoke-static {v7}, Lcom/android/server/display/DisplayManagerServiceImpl;->-$$Nest$fgetmIsVideoScene(Lcom/android/server/display/DisplayManagerServiceImpl;)Z

    move-result v7

    if-eqz v7, :cond_1c8

    .line 218
    invoke-static {}, Lcom/android/server/display/mode/DisplayModeDirectorStub;->getInstance()Lcom/android/server/display/mode/DisplayModeDirectorStub;

    move-result-object v7

    invoke-interface {v7, v6}, Lcom/android/server/display/mode/DisplayModeDirectorStub;->setVideoMaxRefreshRate(F)V

    goto :goto_1c8

    .line 220
    .end local v2  # "scenesPackageExists":Z
    :cond_191
    if-nez p2, :cond_1c8

    if-nez v5, :cond_1c8

    iget-object v6, p0, Lcom/android/server/display/DisplayManagerServiceImpl$1;->this$0:Lcom/android/server/display/DisplayManagerServiceImpl;

    invoke-static {v6}, Lcom/android/server/display/DisplayManagerServiceImpl;->-$$Nest$fgetmIsVideoScene(Lcom/android/server/display/DisplayManagerServiceImpl;)Z

    move-result v6

    if-nez v6, :cond_1a5

    iget-object v6, p0, Lcom/android/server/display/DisplayManagerServiceImpl$1;->this$0:Lcom/android/server/display/DisplayManagerServiceImpl;

    invoke-static {v6}, Lcom/android/server/display/DisplayManagerServiceImpl;->-$$Nest$fgetmVideoHighFpsScene(Lcom/android/server/display/DisplayManagerServiceImpl;)Z

    move-result v6

    if-eqz v6, :cond_1c8

    :cond_1a5
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerServiceImpl$1;->this$0:Lcom/android/server/display/DisplayManagerServiceImpl;

    invoke-static {v6}, Lcom/android/server/display/DisplayManagerServiceImpl;->-$$Nest$fgetmCurrnetVideoPackages(Lcom/android/server/display/DisplayManagerServiceImpl;)Ljava/lang/String;

    move-result-object v6

    .line 221
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1c9

    iget-object v6, p0, Lcom/android/server/display/DisplayManagerServiceImpl$1;->this$0:Lcom/android/server/display/DisplayManagerServiceImpl;

    invoke-static {v6}, Lcom/android/server/display/DisplayManagerServiceImpl;->-$$Nest$fgetmCurrnetVideoPackages(Lcom/android/server/display/DisplayManagerServiceImpl;)Ljava/lang/String;

    move-result-object v6

    aget-object v2, v1, v2

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c9

    .line 222
    invoke-static {}, Lcom/android/server/display/mode/DisplayModeDirectorStub;->getInstance()Lcom/android/server/display/mode/DisplayModeDirectorStub;

    move-result-object v2

    const/4 v6, 0x0

    invoke-interface {v2, v6}, Lcom/android/server/display/mode/DisplayModeDirectorStub;->setVideoMaxRefreshRate(F)V
    :try_end_1c7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1c7} :catch_1ce
    .catchall {:try_start_7 .. :try_end_1c7} :catchall_1cc

    goto :goto_1c9

    .line 220
    :cond_1c8
    :goto_1c8
    nop

    .line 226
    .end local v1  # "packages":[Ljava/lang/String;
    .end local v3  # "currentPackage":Ljava/lang/String;
    .end local v4  # "maxFps":I
    .end local v5  # "isTouchHintTiming":Z
    :cond_1c9
    :goto_1c9
    goto :goto_1d2

    .line 164
    .restart local v1  # "packages":[Ljava/lang/String;
    :cond_1ca
    :goto_1ca
    :try_start_1ca
    monitor-exit v0

    return-void

    .line 227
    .end local v1  # "packages":[Ljava/lang/String;
    :catchall_1cc
    move-exception v1

    goto :goto_1d4

    .line 224
    :catch_1ce
    move-exception v1

    .line 225
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 227
    .end local v1  # "e":Ljava/lang/Exception;
    :goto_1d2
    monitor-exit v0

    .line 228
    return-void

    .line 227
    :goto_1d4
    monitor-exit v0
    :try_end_1d5
    .catchall {:try_start_1ca .. :try_end_1d5} :catchall_1cc

    throw v1
.end method
