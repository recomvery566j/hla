# classes.dex

.class public Lcom/android/server/display/ThermalObserver;
.super Ljava/lang/Object;
.source "ThermalObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/ThermalObserver$TemperatureControllerHandler;,
        Lcom/android/server/display/ThermalObserver$TemperatureObserver;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final DISABLE_GALLERY_HDR_TEMPERATURE:F = 37000.0f

.field private static final ENABLE_GALLERY_TEMPERATURE:F = 35000.0f

.field private static final MSG_UPDATE_TEMP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ThermalObserver"

.field private static final TEMPERATURE_PATH:Ljava/lang/String; = "/sys/class/thermal/thermal_message/board_sensor_temp"

.field private static final mSupportGalleryHDR:Z


# instance fields
.field private mCurrentTemperature:F

.field private mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

.field private mHandler:Lcom/android/server/display/ThermalObserver$TemperatureControllerHandler;

.field private mTemperatureObserver:Lcom/android/server/display/ThermalObserver$TemperatureObserver;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/display/ThermalObserver;)Lcom/android/server/display/ThermalObserver$TemperatureControllerHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/ThermalObserver;->mHandler:Lcom/android/server/display/ThermalObserver$TemperatureControllerHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateTemperature(Lcom/android/server/display/ThermalObserver;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/ThermalObserver;->updateTemperature()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 28
    const-string/jumbo v0, "support_gallery_hdr"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/ThermalObserver;->mSupportGalleryHDR:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Lcom/android/server/display/DisplayPowerControllerImpl;)V
    .registers 6
    .param p1, "looper"  # Landroid/os/Looper;
    .param p2, "impl"  # Lcom/android/server/display/DisplayPowerControllerImpl;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/high16 v0, -0x40800000  # -1.0f

    iput v0, p0, Lcom/android/server/display/ThermalObserver;->mCurrentTemperature:F

    .line 39
    new-instance v0, Lcom/android/server/display/ThermalObserver$TemperatureControllerHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/server/display/ThermalObserver$TemperatureControllerHandler;-><init>(Lcom/android/server/display/ThermalObserver;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/ThermalObserver;->mHandler:Lcom/android/server/display/ThermalObserver$TemperatureControllerHandler;

    .line 40
    iput-object p2, p0, Lcom/android/server/display/ThermalObserver;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    .line 41
    new-instance v0, Lcom/android/server/display/ThermalObserver$TemperatureObserver;

    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/thermal/thermal_message/board_sensor_temp"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/ThermalObserver$TemperatureObserver;-><init>(Lcom/android/server/display/ThermalObserver;Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/display/ThermalObserver;->mTemperatureObserver:Lcom/android/server/display/ThermalObserver$TemperatureObserver;

    .line 42
    sget-boolean v0, Lcom/android/server/display/ThermalObserver;->mSupportGalleryHDR:Z

    if-eqz v0, :cond_27

    .line 43
    iget-object v0, p0, Lcom/android/server/display/ThermalObserver;->mTemperatureObserver:Lcom/android/server/display/ThermalObserver$TemperatureObserver;

    invoke-virtual {v0}, Lcom/android/server/display/ThermalObserver$TemperatureObserver;->startWatching()V

    .line 45
    :cond_27
    return-void
.end method

.method private getBoardTemperature()F
    .registers 6

    .line 118
    const-string v0, "ThermalObserver"

    const-string v1, "/sys/class/thermal/thermal_message/board_sensor_temp"

    invoke-static {v1}, Lcom/android/server/display/ThermalObserver;->readSysNodeInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "node":Ljava/lang/String;
    if-eqz v1, :cond_47

    .line 121
    :try_start_a
    sget-boolean v2, Lcom/android/server/display/ThermalObserver;->DEBUG:Z

    if-eqz v2, :cond_29

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "read BoardTemp node: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_29
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_2d} :catch_2e

    return v0

    .line 126
    :catch_2e
    move-exception v2

    .line 127
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "read BoardTemp error node: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    .line 128
    .end local v2  # "e":Ljava/lang/NumberFormatException;
    :cond_47
    nop

    .line 129
    :goto_48
    const/high16 v0, -0x40800000  # -1.0f

    return v0
.end method

.method private static readSysNodeInfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "nodePath"  # Ljava/lang/String;

    .line 92
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 93
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_16

    goto :goto_4f

    .line 97
    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .local v1, "info":Ljava/lang/StringBuilder;
    :try_start_1b
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_25} :catch_49

    .line 100
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_25
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 101
    .local v3, "temp":Ljava/lang/String;
    :goto_29
    if-eqz v3, :cond_3b

    .line 102
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 104
    if-eqz v3, :cond_3b

    .line 105
    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3a
    .catchall {:try_start_25 .. :try_end_3a} :catchall_3f

    goto :goto_29

    .line 110
    :cond_3b
    :try_start_3b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_49

    .line 112
    .end local v2  # "reader":Ljava/io/BufferedReader;
    goto :goto_4a

    .line 99
    .end local v3  # "temp":Ljava/lang/String;
    .restart local v2  # "reader":Ljava/io/BufferedReader;
    :catchall_3f
    move-exception v3

    :try_start_40
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_44

    goto :goto_48

    :catchall_44
    move-exception v4

    :try_start_45
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0  # "file":Ljava/io/File;
    .end local v1  # "info":Ljava/lang/StringBuilder;
    .end local p0  # "nodePath":Ljava/lang/String;
    :goto_48
    throw v3
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_49} :catch_49

    .line 110
    .end local v2  # "reader":Ljava/io/BufferedReader;
    .restart local v0  # "file":Ljava/io/File;
    .restart local v1  # "info":Ljava/lang/StringBuilder;
    .restart local p0  # "nodePath":Ljava/lang/String;
    :catch_49
    move-exception v2

    .line 113
    :goto_4a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 94
    .end local v1  # "info":Ljava/lang/StringBuilder;
    :cond_4f
    :goto_4f
    const/4 v1, 0x0

    return-object v1
.end method

.method private updateTemperature()V
    .registers 4

    .line 80
    invoke-direct {p0}, Lcom/android/server/display/ThermalObserver;->getBoardTemperature()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/ThermalObserver;->mCurrentTemperature:F

    .line 81
    iget v0, p0, Lcom/android/server/display/ThermalObserver;->mCurrentTemperature:F

    const v1, 0x47108800  # 37000.0f

    cmpl-float v0, v0, v1

    const-string v1, "ThermalObserver"

    if-ltz v0, :cond_1d

    .line 82
    const-string v0, "Gallery hdr is disable by thermal."

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lcom/android/server/display/ThermalObserver;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerControllerImpl;->updateGalleryHdrThermalThrottler(Z)V

    goto :goto_31

    .line 84
    :cond_1d
    iget v0, p0, Lcom/android/server/display/ThermalObserver;->mCurrentTemperature:F

    const v2, 0x4708b800  # 35000.0f

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_31

    .line 85
    const-string v0, "Temperature control has been released."

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/android/server/display/ThermalObserver;->mDisplayPowerControllerImpl:Lcom/android/server/display/DisplayPowerControllerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerControllerImpl;->updateGalleryHdrThermalThrottler(Z)V

    .line 88
    :cond_31
    :goto_31
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 133
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 134
    const-string v0, "Thermal Observer State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurrentTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/ThermalObserver;->mCurrentTemperature:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 136
    sget-boolean v0, Lcom/android/server/display/DisplayDebugConfig;->DEBUG_DMS:Z

    sput-boolean v0, Lcom/android/server/display/ThermalObserver;->DEBUG:Z

    .line 137
    return-void
.end method
