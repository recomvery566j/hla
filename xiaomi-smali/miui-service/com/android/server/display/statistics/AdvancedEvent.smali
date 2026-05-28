# classes.dex

.class public Lcom/android/server/display/statistics/AdvancedEvent;
.super Ljava/lang/Object;
.source "AdvancedEvent.java"


# static fields
.field public static final BRIGHTNESS_CHANGE_STATE_DECREASE:I = 0x1

.field public static final BRIGHTNESS_CHANGE_STATE_EQUAL:I = 0x2

.field public static final BRIGHTNESS_CHANGE_STATE_INCREASE:I = 0x0

.field public static final BRIGHTNESS_CHANGE_STATE_RESET:I = 0x3

.field public static final EVENT_AUTO_BRIGHTNESS_ANIMATION_INFO:I = 0x1

.field public static final EVENT_SCHEDULE_ADVANCED_EVENT:I = 0x2


# instance fields
.field private auto_brightness_animation_duration:F

.field private brightness_changed_state:I

.field private brightness_restricted_enable:Z

.field private current_animate_value:I

.field private default_spline_error:F

.field private extra:Ljava/lang/String;

.field private interrupt_brightness_animation_times:I

.field private long_term_model_spline_error:F

.field private target_animate_value:I

.field private time_stamp:J

.field private type:I

.field private user_brightness:I

.field private user_reset_brightness_mode_times:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/statistics/AdvancedEvent;->current_animate_value:I

    .line 20
    iput v0, p0, Lcom/android/server/display/statistics/AdvancedEvent;->target_animate_value:I

    .line 21
    iput v0, p0, Lcom/android/server/display/statistics/AdvancedEvent;->user_brightness:I

    .line 22
    const/high16 v1, -0x40800000  # -1.0f

    iput v1, p0, Lcom/android/server/display/statistics/AdvancedEvent;->auto_brightness_animation_duration:F

    .line 23
    iput v1, p0, Lcom/android/server/display/statistics/AdvancedEvent;->long_term_model_spline_error:F

    .line 24
    iput v1, p0, Lcom/android/server/display/statistics/AdvancedEvent;->default_spline_error:F

    .line 25
    iput v0, p0, Lcom/android/server/display/statistics/AdvancedEvent;->brightness_changed_state:I

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/display/statistics/AdvancedEvent;->extra:Ljava/lang/String;

    .line 31
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"  # Landroid/os/Parcel;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/statistics/AdvancedEvent;->current_animate_value:I

    .line 20
    iput v0, p0, Lcom/android/server/display/statistics/AdvancedEvent;->target_animate_value:I

    .line 21
    iput v0, p0, Lcom/android/server/display/statistics/AdvancedEvent;->user_brightness:I

    .line 22
    const/high16 v1, -0x40800000  # -1.0f

    iput v1, p0, Lcom/android/server/display/statistics/AdvancedEvent;->auto_brightness_animation_duration:F

    .line 23
    iput v1, p0, Lcom/android/server/display/statistics/AdvancedEvent;->long_term_model_spline_error:F

    .line 24
    iput v1, p0, Lcom/android/server/display/statistics/AdvancedEvent;->default_spline_error:F

    .line 25
    iput v0, p0, Lcom/android/server/display/statistics/AdvancedEvent;->brightness_changed_state:I

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/display/statistics/AdvancedEvent;->extra:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/statistics/AdvancedEvent;->type:I

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/statistics/AdvancedEvent;->interrupt_brightness_animation_times:I

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/statistics/AdvancedEvent;->user_reset_brightness_mode_times:I

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/statistics/AdvancedEvent;->current_animate_value:I

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/statistics/AdvancedEvent;->target_animate_value:I

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/statistics/AdvancedEvent;->user_brightness:I

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/statistics/AdvancedEvent;->auto_brightness_animation_duration:F

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/statistics/AdvancedEvent;->long_term_model_spline_error:F

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/statistics/AdvancedEvent;->default_spline_error:F

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/statistics/AdvancedEvent;->brightness_changed_state:I

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/statistics/AdvancedEvent;->extra:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/statistics/AdvancedEvent;->time_stamp:J

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/statistics/AdvancedEvent;->brightness_restricted_enable:Z

    .line 47
    return-void
.end method

.method private getBrightnessChangedState(I)Ljava/lang/String;
    .registers 3
    .param p1, "state"  # I

    .line 187
    packed-switch p1, :pswitch_data_10

    .line 195
    const-string v0, "brightness reset"

    return-object v0

    .line 193
    :pswitch_6  #0x2
    const-string v0, "brightness equal"

    return-object v0

    .line 191
    :pswitch_9  #0x1
    const-string v0, "brightness decrease"

    return-object v0

    .line 189
    :pswitch_c  #0x0
    const-string v0, "brightness increase"

    return-object v0

    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_c  #00000000
        :pswitch_9  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method

.method public static timestampToString(J)Ljava/lang/String;
    .registers 5
    .param p0, "time"  # J

    .line 167
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 168
    .local v0, "d":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss:sss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 169
    .local v1, "sf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public convertToString()Ljava/lang/String;
    .registers 4

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/statistics/AdvancedEvent;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", auto_brightness_animation_duration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/statistics/AdvancedEvent;->auto_brightness_animation_duration:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", current_animate_value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/statistics/AdvancedEvent;->current_animate_value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", target_animate_value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/statistics/AdvancedEvent;->target_animate_value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", user_brightness:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/statistics/AdvancedEvent;->user_brightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", long_term_model_spline_error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/statistics/AdvancedEvent;->long_term_model_spline_error:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", default_spline_error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/statistics/AdvancedEvent;->default_spline_error:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", brightness_changed_state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/statistics/AdvancedEvent;->brightness_changed_state:I

    .line 180
    invoke-direct {p0, v1}, Lcom/android/server/display/statistics/AdvancedEvent;->getBrightnessChangedState(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extra:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/statistics/AdvancedEvent;->extra:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", time_stamp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/display/statistics/AdvancedEvent;->time_stamp:J

    .line 182
    invoke-static {v1, v2}, Lcom/android/server/display/statistics/AdvancedEvent;->timestampToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", brightness_restricted_enable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/statistics/AdvancedEvent;->brightness_restricted_enable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    return-object v0
.end method

.method public getAutoBrightnessAnimationDuration()F
    .registers 2

    .line 109
    iget v0, p0, Lcom/android/server/display/statistics/AdvancedEvent;->auto_brightness_animation_duration:F

    return v0
.end method

.method public getBrightnessChangedState()I
    .registers 2

    .line 136
    iget v0, p0, Lcom/android/server/display/statistics/AdvancedEvent;->brightness_changed_state:I

    return v0
.end method

.method public getBrightnessRestrictedEnable()Z
    .registers 2

    .line 163
    iget-boolean v0, p0, Lcom/android/server/display/statistics/AdvancedEvent;->brightness_restricted_enable:Z

    return v0
.end method

.method public getCurrentAnimateValue()I
    .registers 2

    .line 82
    iget v0, p0, Lcom/android/server/display/statistics/AdvancedEvent;->current_animate_value:I

    return v0
.end method

.method public getDefaultSplineError()F
    .registers 2

    .line 127
    iget v0, p0, Lcom/android/server/display/statistics/AdvancedEvent;->default_spline_error:F

    return v0
.end method

.method public getEventType()I
    .registers 2

    .line 55
    iget v0, p0, Lcom/android/server/display/statistics/AdvancedEvent;->type:I

    return v0
.end method

.method public getExtra()Ljava/lang/String;
    .registers 2

    .line 145
    iget-object v0, p0, Lcom/android/server/display/statistics/AdvancedEvent;->extra:Ljava/lang/String;

    return-object v0
.end method

.method public getInterruptBrightnessAnimationTimes()I
    .registers 2

    .line 64
    iget v0, p0, Lcom/android/server/display/statistics/AdvancedEvent;->interrupt_brightness_animation_times:I

    return v0
.end method

.method public getLongTermModelSplineError()F
    .registers 2

    .line 118
    iget v0, p0, Lcom/android/server/display/statistics/AdvancedEvent;->long_term_model_spline_error:F

    return v0
.end method

.method public getTargetAnimateValue()I
    .registers 2

    .line 91
    iget v0, p0, Lcom/android/server/display/statistics/AdvancedEvent;->target_animate_value:I

    return v0
.end method

.method public getTimeStamp()J
    .registers 3

    .line 154
    iget-wide v0, p0, Lcom/android/server/display/statistics/AdvancedEvent;->time_stamp:J

    return-wide v0
.end method

.method public getUserBrightness()I
    .registers 2

    .line 100
    iget v0, p0, Lcom/android/server/display/statistics/AdvancedEvent;->user_brightness:I

    return v0
.end method

.method public getUserResetBrightnessModeTimes()I
    .registers 2

    .line 73
    iget v0, p0, Lcom/android/server/display/statistics/AdvancedEvent;->user_reset_brightness_mode_times:I

    return v0
.end method

.method public setAutoBrightnessAnimationDuration(F)Lcom/android/server/display/statistics/AdvancedEvent;
    .registers 2
    .param p1, "duration"  # F

    .line 104
    iput p1, p0, Lcom/android/server/display/statistics/AdvancedEvent;->auto_brightness_animation_duration:F

    .line 105
    return-object p0
.end method

.method public setBrightnessChangedState(I)Lcom/android/server/display/statistics/AdvancedEvent;
    .registers 2
    .param p1, "state"  # I

    .line 131
    iput p1, p0, Lcom/android/server/display/statistics/AdvancedEvent;->brightness_changed_state:I

    .line 132
    return-object p0
.end method

.method public setBrightnessRestrictedEnable(Z)Lcom/android/server/display/statistics/AdvancedEvent;
    .registers 2
    .param p1, "enable"  # Z

    .line 158
    iput-boolean p1, p0, Lcom/android/server/display/statistics/AdvancedEvent;->brightness_restricted_enable:Z

    .line 159
    return-object p0
.end method

.method public setCurrentAnimateValue(I)Lcom/android/server/display/statistics/AdvancedEvent;
    .registers 2
    .param p1, "value"  # I

    .line 77
    iput p1, p0, Lcom/android/server/display/statistics/AdvancedEvent;->current_animate_value:I

    .line 78
    return-object p0
.end method

.method public setDefaultSplineError(F)Lcom/android/server/display/statistics/AdvancedEvent;
    .registers 2
    .param p1, "error"  # F

    .line 122
    iput p1, p0, Lcom/android/server/display/statistics/AdvancedEvent;->default_spline_error:F

    .line 123
    return-object p0
.end method

.method public setEventType(I)Lcom/android/server/display/statistics/AdvancedEvent;
    .registers 2
    .param p1, "type"  # I

    .line 50
    iput p1, p0, Lcom/android/server/display/statistics/AdvancedEvent;->type:I

    .line 51
    return-object p0
.end method

.method public setExtra(Ljava/lang/String;)Lcom/android/server/display/statistics/AdvancedEvent;
    .registers 2
    .param p1, "extra"  # Ljava/lang/String;

    .line 140
    iput-object p1, p0, Lcom/android/server/display/statistics/AdvancedEvent;->extra:Ljava/lang/String;

    .line 141
    return-object p0
.end method

.method public setInterruptBrightnessAnimationTimes(I)Lcom/android/server/display/statistics/AdvancedEvent;
    .registers 2
    .param p1, "times"  # I

    .line 59
    iput p1, p0, Lcom/android/server/display/statistics/AdvancedEvent;->interrupt_brightness_animation_times:I

    .line 60
    return-object p0
.end method

.method public setLongTermModelSplineError(F)Lcom/android/server/display/statistics/AdvancedEvent;
    .registers 2
    .param p1, "error"  # F

    .line 113
    iput p1, p0, Lcom/android/server/display/statistics/AdvancedEvent;->long_term_model_spline_error:F

    .line 114
    return-object p0
.end method

.method public setTargetAnimateValue(I)Lcom/android/server/display/statistics/AdvancedEvent;
    .registers 2
    .param p1, "value"  # I

    .line 86
    iput p1, p0, Lcom/android/server/display/statistics/AdvancedEvent;->target_animate_value:I

    .line 87
    return-object p0
.end method

.method public setTimeStamp(J)Lcom/android/server/display/statistics/AdvancedEvent;
    .registers 3
    .param p1, "timeStamp"  # J

    .line 149
    iput-wide p1, p0, Lcom/android/server/display/statistics/AdvancedEvent;->time_stamp:J

    .line 150
    return-object p0
.end method

.method public setUserBrightness(I)Lcom/android/server/display/statistics/AdvancedEvent;
    .registers 2
    .param p1, "value"  # I

    .line 95
    iput p1, p0, Lcom/android/server/display/statistics/AdvancedEvent;->user_brightness:I

    .line 96
    return-object p0
.end method

.method public setUserResetBrightnessModeTimes(I)Lcom/android/server/display/statistics/AdvancedEvent;
    .registers 2
    .param p1, "times"  # I

    .line 68
    iput p1, p0, Lcom/android/server/display/statistics/AdvancedEvent;->user_reset_brightness_mode_times:I

    .line 69
    return-object p0
.end method
