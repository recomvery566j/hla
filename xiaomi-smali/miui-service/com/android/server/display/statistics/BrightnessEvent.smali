# classes.dex

.class public Lcom/android/server/display/statistics/BrightnessEvent;
.super Ljava/lang/Object;
.source "BrightnessEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;
    }
.end annotation


# static fields
.field public static final EVENT_AUTO_CHANGED_BRIGHTNESS:I = 0x1

.field public static final EVENT_AUTO_MANUAL_CHANGED_BRIGHTNESS:I = 0x2

.field public static final EVENT_BRIGHTNESS_UNDEFINED:I = -0x1

.field public static final EVENT_DISABLE_AUTO_BRIGHTNESS:I = 0x8

.field public static final EVENT_MANUAL_CHANGED_BRIGHTNESS:I = 0x0

.field public static final EVENT_SUNLIGHT_CHANGED_BRIGHTNESS:I = 0x4

.field public static final EVENT_WINDOW_CHANGED_BRIGHTNESS:I = 0x3


# instance fields
.field private acc_values:[F

.field private actual_nit:F

.field private affect_factor_flag:I

.field private all_stats_entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;",
            ">;"
        }
    .end annotation
.end field

.field private ambient_lux:F

.field private ambient_lux_span:I

.field private assist_ambient_lux:F

.field private brightness_restricted_enable:Z

.field private brightness_usage_map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private current_user_id:I

.field private display_gray_scale:F

.field private expId:I

.field private extra:Ljava/lang/String;

.field private hdr_layer_enable:Z

.field private is_default_config:Z

.field private is_use_light_fov_optimization:Z

.field private last_assist_ambient_lux:F

.field private last_main_ambient_lux:F

.field private low_power_mode_flag:Z

.field private main_ambient_lux:F

.field private orientation:I

.field private original_nit:F

.field private previous_brightness:F

.field private previous_brightness_span:I

.field private resetModel:Ljava/lang/String;

.field private screen_brightness:F

.field private screen_brightness_span:I

.field private time_stamp:J

.field private top_package:Ljava/lang/String;

.field private type:I

.field private user_data_point:F


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/high16 v0, -0x40800000  # -1.0f

    iput v0, p0, Lcom/android/server/display/statistics/BrightnessEvent;->ambient_lux:F

    .line 25
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/display/statistics/BrightnessEvent;->top_package:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lcom/android/server/display/statistics/BrightnessEvent;->extra:Ljava/lang/String;

    .line 30
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/statistics/BrightnessEvent;->is_default_config:Z

    .line 31
    iput v0, p0, Lcom/android/server/display/statistics/BrightnessEvent;->user_data_point:F

    .line 34
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/statistics/BrightnessEvent;->all_stats_entries:Ljava/util/List;

    .line 35
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/display/statistics/BrightnessEvent;->affect_factor_flag:I

    .line 36
    iput v1, p0, Lcom/android/server/display/statistics/BrightnessEvent;->screen_brightness_span:I

    .line 37
    iput v1, p0, Lcom/android/server/display/statistics/BrightnessEvent;->previous_brightness_span:I

    .line 38
    iput v1, p0, Lcom/android/server/display/statistics/BrightnessEvent;->ambient_lux_span:I

    .line 39
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/statistics/BrightnessEvent;->brightness_usage_map:Ljava/util/Map;

    .line 40
    iput v0, p0, Lcom/android/server/display/statistics/BrightnessEvent;->display_gray_scale:F

    .line 41
    iput v0, p0, Lcom/android/server/display/statistics/BrightnessEvent;->original_nit:F

    .line 42
    iput v0, p0, Lcom/android/server/display/statistics/BrightnessEvent;->actual_nit:F

    .line 45
    iput v0, p0, Lcom/android/server/display/statistics/BrightnessEvent;->main_ambient_lux:F

    .line 46
    iput v0, p0, Lcom/android/server/display/statistics/BrightnessEvent;->assist_ambient_lux:F

    .line 47
    iput v0, p0, Lcom/android/server/display/statistics/BrightnessEvent;->last_main_ambient_lux:F

    .line 48
    iput v0, p0, Lcom/android/server/display/statistics/BrightnessEvent;->last_assist_ambient_lux:F

    .line 49
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/display/statistics/BrightnessEvent;->acc_values:[F

    .line 56
    return-void
.end method

.method public static timestamp2String(J)Ljava/lang/String;
    .registers 5
    .param p0, "time"  # J

    .line 122
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 123
    .local v0, "d":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss:sss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 124
    .local v1, "sf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public getAccValues()[F
    .registers 2

    .line 304
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessEvent;->acc_values:[F

    return-object v0
.end method

.method public getActualNit()F
    .registers 2

    .line 241
    iget v0, p0, Lcom/android/server/display/statistics/BrightnessEvent;->actual_nit:F

    return v0
.end method

.method public getAffectFactorFlag()I
    .registers 2

    .line 187
    iget v0, p0, Lcom/android/server/display/statistics/BrightnessEvent;->affect_factor_flag:I

    return v0
.end method

.method public getAmbientLux()F
    .registers 2

    .line 73
    iget v0, p0, Lcom/android/server/display/statistics/BrightnessEvent;->ambient_lux:F

    return v0
.end method

.method public getAssistAmbientLux()F
    .registers 2

    .line 277
    iget v0, p0, Lcom/android/server/display/statistics/BrightnessEvent;->assist_ambient_lux:F

    return v0
.end method

.method public getBrightnessRestrictedEnable()Z
    .registers 2

    .line 259
    iget-boolean v0, p0, Lcom/android/server/display/statistics/BrightnessEvent;->brightness_restricted_enable:Z

    return v0
.end method

.method public getBrightnessUsageMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessEvent;->brightness_usage_map:Ljava/util/Map;

    return-object v0
.end method

.method public getCurBrightnessSpanIndex()I
    .registers 2

    .line 196
    iget v0, p0, Lcom/android/server/display/statistics/BrightnessEvent;->screen_brightness_span:I

    return v0
.end method

.method public getDisplayGrayScale()F
    .registers 2

    .line 232
    iget v0, p0, Lcom/android/server/display/statistics/BrightnessEvent;->display_gray_scale:F

    return v0
.end method

.method public getEventType()I
    .registers 2

    .line 64
    iget v0, p0, Lcom/android/server/display/statistics/BrightnessEvent;->type:I

    return v0
.end method

.method public getExpId()I
    .registers 2

    .line 331
    iget v0, p0, Lcom/android/server/display/statistics/BrightnessEvent;->expId:I

    return v0
.end method

.method public getExtra()Ljava/lang/String;
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessEvent;->extra:Ljava/lang/String;

    return-object v0
.end method

.method public getForegroundPackage()Ljava/lang/String;
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessEvent;->top_package:Ljava/lang/String;

    return-object v0
.end method

.method public getHdrLayerEnable()Z
    .registers 2

    .line 250
    iget-boolean v0, p0, Lcom/android/server/display/statistics/BrightnessEvent;->hdr_layer_enable:Z

    return v0
.end method

.method public getIsUseLightFovOptimization()Z
    .registers 2

    .line 313
    iget-boolean v0, p0, Lcom/android/server/display/statistics/BrightnessEvent;->is_use_light_fov_optimization:Z

    return v0
.end method

.method public getLastAssistAmbientLux()F
    .registers 2

    .line 295
    iget v0, p0, Lcom/android/server/display/statistics/BrightnessEvent;->last_assist_ambient_lux:F

    return v0
.end method

.method public getLastMainAmbientLux()F
    .registers 2

    .line 286
    iget v0, p0, Lcom/android/server/display/statistics/BrightnessEvent;->last_main_ambient_lux:F

    return v0
.end method

.method public getLowPowerModeFlag()Z
    .registers 2

    .line 160
    iget-boolean v0, p0, Lcom/android/server/display/statistics/BrightnessEvent;->low_power_mode_flag:Z

    return v0
.end method

.method public getLuxSpanIndex()I
    .registers 2

    .line 214
    iget v0, p0, Lcom/android/server/display/statistics/BrightnessEvent;->ambient_lux_span:I

    return v0
.end method

.method public getMainAmbientLux()F
    .registers 2

    .line 268
    iget v0, p0, Lcom/android/server/display/statistics/BrightnessEvent;->main_ambient_lux:F

    return v0
.end method

.method public getOrientation()I
    .registers 2

    .line 91
    iget v0, p0, Lcom/android/server/display/statistics/BrightnessEvent;->orientation:I

    return v0
.end method

.method public getOriginalNit()F
    .registers 2

    .line 327
    iget v0, p0, Lcom/android/server/display/statistics/BrightnessEvent;->original_nit:F

    return v0
.end method

.method public getPreBrightnessSpanIndex()I
    .registers 2

    .line 205
    iget v0, p0, Lcom/android/server/display/statistics/BrightnessEvent;->previous_brightness_span:I

    return v0
.end method

.method public getPreviousBrightness()F
    .registers 2

    .line 133
    iget v0, p0, Lcom/android/server/display/statistics/BrightnessEvent;->previous_brightness:F

    return v0
.end method

.method public getScreenBrightness()F
    .registers 2

    .line 82
    iget v0, p0, Lcom/android/server/display/statistics/BrightnessEvent;->screen_brightness:F

    return v0
.end method

.method public getSwitchStats()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;",
            ">;"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/android/server/display/statistics/BrightnessEvent;->all_stats_entries:Ljava/util/List;

    return-object v0
.end method

.method public getTimeStamp()J
    .registers 3

    .line 109
    iget-wide v0, p0, Lcom/android/server/display/statistics/BrightnessEvent;->time_stamp:J

    return-wide v0
.end method

.method public getUserDataPoint()F
    .registers 2

    .line 142
    iget v0, p0, Lcom/android/server/display/statistics/BrightnessEvent;->user_data_point:F

    return v0
.end method

.method public getUserId()I
    .registers 2

    .line 169
    iget v0, p0, Lcom/android/server/display/statistics/BrightnessEvent;->current_user_id:I

    return v0
.end method

.method public isDefaultConfig()Z
    .registers 2

    .line 151
    iget-boolean v0, p0, Lcom/android/server/display/statistics/BrightnessEvent;->is_default_config:Z

    return v0
.end method

.method public setAccValues([F)Lcom/android/server/display/statistics/BrightnessEvent;
    .registers 2
    .param p1, "accValues"  # [F

    .line 299
    iput-object p1, p0, Lcom/android/server/display/statistics/BrightnessEvent;->acc_values:[F

    .line 300
    return-object p0
.end method

.method public setActualNit(F)Lcom/android/server/display/statistics/BrightnessEvent;
    .registers 2
    .param p1, "nit"  # F

    .line 236
    iput p1, p0, Lcom/android/server/display/statistics/BrightnessEvent;->actual_nit:F

    .line 237
    return-object p0
.end method

.method public setAffectFactorFlag(I)Lcom/android/server/display/statistics/BrightnessEvent;
    .registers 2
    .param p1, "flag"  # I

    .line 182
    iput p1, p0, Lcom/android/server/display/statistics/BrightnessEvent;->affect_factor_flag:I

    .line 183
    return-object p0
.end method

.method public setAmbientLux(F)Lcom/android/server/display/statistics/BrightnessEvent;
    .registers 2
    .param p1, "ambientLux"  # F

    .line 68
    iput p1, p0, Lcom/android/server/display/statistics/BrightnessEvent;->ambient_lux:F

    .line 69
    return-object p0
.end method

.method public setAssistAmbientLux(F)Lcom/android/server/display/statistics/BrightnessEvent;
    .registers 2
    .param p1, "lux"  # F

    .line 272
    iput p1, p0, Lcom/android/server/display/statistics/BrightnessEvent;->assist_ambient_lux:F

    .line 273
    return-object p0
.end method

.method public setBrightnessRestrictedEnable(Z)Lcom/android/server/display/statistics/BrightnessEvent;
    .registers 2
    .param p1, "enable"  # Z

    .line 254
    iput-boolean p1, p0, Lcom/android/server/display/statistics/BrightnessEvent;->brightness_restricted_enable:Z

    .line 255
    return-object p0
.end method

.method public setBrightnessUsageMap(Ljava/util/Map;)Lcom/android/server/display/statistics/BrightnessEvent;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/android/server/display/statistics/BrightnessEvent;"
        }
    .end annotation

    .line 218
    .local p1, "brightness_usage_map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Long;>;"
    iput-object p1, p0, Lcom/android/server/display/statistics/BrightnessEvent;->brightness_usage_map:Ljava/util/Map;

    .line 219
    return-object p0
.end method

.method public setCurBrightnessSpanIndex(I)Lcom/android/server/display/statistics/BrightnessEvent;
    .registers 2
    .param p1, "span"  # I

    .line 191
    iput p1, p0, Lcom/android/server/display/statistics/BrightnessEvent;->screen_brightness_span:I

    .line 192
    return-object p0
.end method

.method public setDisplayGrayScale(F)Lcom/android/server/display/statistics/BrightnessEvent;
    .registers 2
    .param p1, "gray"  # F

    .line 227
    iput p1, p0, Lcom/android/server/display/statistics/BrightnessEvent;->display_gray_scale:F

    .line 228
    return-object p0
.end method

.method public setEventType(I)Lcom/android/server/display/statistics/BrightnessEvent;
    .registers 2
    .param p1, "type"  # I

    .line 59
    iput p1, p0, Lcom/android/server/display/statistics/BrightnessEvent;->type:I

    .line 60
    return-object p0
.end method

.method public setExtra(Ljava/lang/String;)Lcom/android/server/display/statistics/BrightnessEvent;
    .registers 2
    .param p1, "string"  # Ljava/lang/String;

    .line 113
    iput-object p1, p0, Lcom/android/server/display/statistics/BrightnessEvent;->extra:Ljava/lang/String;

    .line 114
    return-object p0
.end method

.method public setForegroundPackage(Ljava/lang/String;)Lcom/android/server/display/statistics/BrightnessEvent;
    .registers 2
    .param p1, "top_package"  # Ljava/lang/String;

    .line 95
    iput-object p1, p0, Lcom/android/server/display/statistics/BrightnessEvent;->top_package:Ljava/lang/String;

    .line 96
    return-object p0
.end method

.method public setHdrLayerEnable(Z)Lcom/android/server/display/statistics/BrightnessEvent;
    .registers 2
    .param p1, "enable"  # Z

    .line 245
    iput-boolean p1, p0, Lcom/android/server/display/statistics/BrightnessEvent;->hdr_layer_enable:Z

    .line 246
    return-object p0
.end method

.method public setIsDefaultConfig(Z)Lcom/android/server/display/statistics/BrightnessEvent;
    .registers 2
    .param p1, "defaultConfig"  # Z

    .line 146
    iput-boolean p1, p0, Lcom/android/server/display/statistics/BrightnessEvent;->is_default_config:Z

    .line 147
    return-object p0
.end method

.method public setIsUseLightFovOptimization(Z)Lcom/android/server/display/statistics/BrightnessEvent;
    .registers 2
    .param p1, "isUseLightFovOptimization"  # Z

    .line 308
    iput-boolean p1, p0, Lcom/android/server/display/statistics/BrightnessEvent;->is_use_light_fov_optimization:Z

    .line 309
    return-object p0
.end method

.method public setLastAssistAmbientLux(F)Lcom/android/server/display/statistics/BrightnessEvent;
    .registers 2
    .param p1, "lux"  # F

    .line 290
    iput p1, p0, Lcom/android/server/display/statistics/BrightnessEvent;->last_assist_ambient_lux:F

    .line 291
    return-object p0
.end method

.method public setLastMainAmbientLux(F)Lcom/android/server/display/statistics/BrightnessEvent;
    .registers 2
    .param p1, "lux"  # F

    .line 281
    iput p1, p0, Lcom/android/server/display/statistics/BrightnessEvent;->last_main_ambient_lux:F

    .line 282
    return-object p0
.end method

.method public setLowPowerModeFlag(Z)Lcom/android/server/display/statistics/BrightnessEvent;
    .registers 2
    .param p1, "enable"  # Z

    .line 155
    iput-boolean p1, p0, Lcom/android/server/display/statistics/BrightnessEvent;->low_power_mode_flag:Z

    .line 156
    return-object p0
.end method

.method public setLuxSpanIndex(I)Lcom/android/server/display/statistics/BrightnessEvent;
    .registers 2
    .param p1, "span"  # I

    .line 209
    iput p1, p0, Lcom/android/server/display/statistics/BrightnessEvent;->ambient_lux_span:I

    .line 210
    return-object p0
.end method

.method public setMainAmbientLux(F)Lcom/android/server/display/statistics/BrightnessEvent;
    .registers 2
    .param p1, "lux"  # F

    .line 263
    iput p1, p0, Lcom/android/server/display/statistics/BrightnessEvent;->main_ambient_lux:F

    .line 264
    return-object p0
.end method

.method public setOrientation(I)Lcom/android/server/display/statistics/BrightnessEvent;
    .registers 2
    .param p1, "orientation"  # I

    .line 86
    iput p1, p0, Lcom/android/server/display/statistics/BrightnessEvent;->orientation:I

    .line 87
    return-object p0
.end method

.method public setOriginalNit(F)Lcom/android/server/display/statistics/BrightnessEvent;
    .registers 2
    .param p1, "nit"  # F

    .line 317
    iput p1, p0, Lcom/android/server/display/statistics/BrightnessEvent;->original_nit:F

    .line 318
    return-object p0
.end method

.method public setPreBrightnessSpanIndex(I)Lcom/android/server/display/statistics/BrightnessEvent;
    .registers 2
    .param p1, "span"  # I

    .line 200
    iput p1, p0, Lcom/android/server/display/statistics/BrightnessEvent;->previous_brightness_span:I

    .line 201
    return-object p0
.end method

.method public setPreviousBrightness(F)Lcom/android/server/display/statistics/BrightnessEvent;
    .registers 2
    .param p1, "previousBrightness"  # F

    .line 128
    iput p1, p0, Lcom/android/server/display/statistics/BrightnessEvent;->previous_brightness:F

    .line 129
    return-object p0
.end method

.method public setResetModel(Ljava/lang/String;)Lcom/android/server/display/statistics/BrightnessEvent;
    .registers 2
    .param p1, "resetShortTermModelModel"  # Ljava/lang/String;

    .line 322
    iput-object p1, p0, Lcom/android/server/display/statistics/BrightnessEvent;->resetModel:Ljava/lang/String;

    .line 323
    return-object p0
.end method

.method public setScreenBrightness(F)Lcom/android/server/display/statistics/BrightnessEvent;
    .registers 2
    .param p1, "screenBrightness"  # F

    .line 77
    iput p1, p0, Lcom/android/server/display/statistics/BrightnessEvent;->screen_brightness:F

    .line 78
    return-object p0
.end method

.method public setSwitchStats(Ljava/util/List;)Lcom/android/server/display/statistics/BrightnessEvent;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;",
            ">;)",
            "Lcom/android/server/display/statistics/BrightnessEvent;"
        }
    .end annotation

    .line 173
    .local p1, "all_stats_events":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/statistics/BrightnessEvent$SwitchStatEntry;>;"
    iput-object p1, p0, Lcom/android/server/display/statistics/BrightnessEvent;->all_stats_entries:Ljava/util/List;

    .line 174
    return-object p0
.end method

.method public setTimeStamp(J)Lcom/android/server/display/statistics/BrightnessEvent;
    .registers 3
    .param p1, "timeStamp"  # J

    .line 104
    iput-wide p1, p0, Lcom/android/server/display/statistics/BrightnessEvent;->time_stamp:J

    .line 105
    return-object p0
.end method

.method public setUserDataPoint(F)Lcom/android/server/display/statistics/BrightnessEvent;
    .registers 2
    .param p1, "userDataPoint"  # F

    .line 137
    iput p1, p0, Lcom/android/server/display/statistics/BrightnessEvent;->user_data_point:F

    .line 138
    return-object p0
.end method

.method public setUserId(I)Lcom/android/server/display/statistics/BrightnessEvent;
    .registers 2
    .param p1, "userId"  # I

    .line 164
    iput p1, p0, Lcom/android/server/display/statistics/BrightnessEvent;->current_user_id:I

    .line 165
    return-object p0
.end method

.method public toSimpleString()Ljava/lang/String;
    .registers 4

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/statistics/BrightnessEvent;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/display/statistics/BrightnessEvent;->ambient_lux:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/display/statistics/BrightnessEvent;->screen_brightness:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/display/statistics/BrightnessEvent;->orientation:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/display/statistics/BrightnessEvent;->top_package:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/display/statistics/BrightnessEvent;->extra:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/display/statistics/BrightnessEvent;->previous_brightness:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/display/statistics/BrightnessEvent;->is_default_config:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/display/statistics/BrightnessEvent;->user_data_point:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/display/statistics/BrightnessEvent;->low_power_mode_flag:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/statistics/BrightnessEvent;->current_user_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/statistics/BrightnessEvent;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",orientation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/statistics/BrightnessEvent;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",top_package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessEvent;->top_package:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",screen_brightness:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/statistics/BrightnessEvent;->screen_brightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",previous_brightness:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/statistics/BrightnessEvent;->previous_brightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",ambient_lux:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/statistics/BrightnessEvent;->ambient_lux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",user_data_point:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/statistics/BrightnessEvent;->user_data_point:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",is_default_config:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/statistics/BrightnessEvent;->is_default_config:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",screen_brightness_span:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/statistics/BrightnessEvent;->screen_brightness_span:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",previous_brightness_span:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/statistics/BrightnessEvent;->previous_brightness_span:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",ambient_lux_span:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/statistics/BrightnessEvent;->ambient_lux_span:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",all_stats_entries:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessEvent;->all_stats_entries:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",affect_factor_flag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/statistics/BrightnessEvent;->affect_factor_flag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",display_gray_scale:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/statistics/BrightnessEvent;->display_gray_scale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",low_power_mode_flag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/statistics/BrightnessEvent;->low_power_mode_flag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",current_user_id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/statistics/BrightnessEvent;->current_user_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",original_nit:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/statistics/BrightnessEvent;->original_nit:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",actual_nit:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/statistics/BrightnessEvent;->actual_nit:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",hdr_layer_enable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/statistics/BrightnessEvent;->hdr_layer_enable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",brightness_restricted_enable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/statistics/BrightnessEvent;->brightness_restricted_enable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",extra:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessEvent;->extra:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",time_stamp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/display/statistics/BrightnessEvent;->time_stamp:J

    .line 364
    invoke-static {v1, v2}, Lcom/android/server/display/statistics/BrightnessEvent;->timestamp2String(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",main_ambient_lux:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/statistics/BrightnessEvent;->main_ambient_lux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",assist_ambient_lux:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/statistics/BrightnessEvent;->assist_ambient_lux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",last_main_ambient_lux:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/statistics/BrightnessEvent;->last_main_ambient_lux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",last_assist_ambient_lux:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/statistics/BrightnessEvent;->last_assist_ambient_lux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",acc_values:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessEvent;->acc_values:[F

    .line 369
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",expId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/statistics/BrightnessEvent;->expId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 345
    return-object v0
.end method
