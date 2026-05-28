# classes.dex

.class final Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;
.super Ljava/lang/Object;
.source "BrightnessDataProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/statistics/BrightnessDataProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BrightnessChangeItem"
.end annotation


# instance fields
.field accValues:[F

.field actualBrightness:F

.field actualNit:F

.field ambientLux:F

.field assistLux:F

.field brightnessOverrideFromWindow:F

.field defaultConfig:Z

.field isUseLightFovOptimization:Z

.field lowPowerMode:Z

.field mainLux:F

.field orientation:I

.field originalBrightness:F

.field originalNit:F

.field packageName:Ljava/lang/String;

.field sceneState:I

.field sunlightActive:Z

.field type:I

.field useAutoBrightness:Z

.field userDataPoint:F

.field userInitiatedChange:Z


# direct methods
.method public constructor <init>(FFZZFZZFFZILjava/lang/String;FFFFII)V
    .registers 35
    .param p1, "originalBrightness"  # F
    .param p2, "actualBrightness"  # F
    .param p3, "userInitiatedChange"  # Z
    .param p4, "useAutoBrightness"  # Z
    .param p5, "brightnessOverrideFromWindow"  # F
    .param p6, "lowPowerMode"  # Z
    .param p7, "sunlightActive"  # Z
    .param p8, "ambientLux"  # F
    .param p9, "userDataPoint"  # F
    .param p10, "defaultConfig"  # Z
    .param p11, "type"  # I
    .param p12, "packageName"  # Ljava/lang/String;
    .param p13, "mainFastAmbientLux"  # F
    .param p14, "assistFastAmbientLux"  # F
    .param p15, "originalNit"  # F
    .param p16, "actualNit"  # F
    .param p17, "orientation"  # I
    .param p18, "sceneState"  # I

    .line 1672
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 1662
    const/4 v1, 0x3

    new-array v1, v1, [F

    iput-object v1, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->accValues:[F

    .line 1673
    move/from16 v1, p1

    iput v1, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->originalBrightness:F

    .line 1674
    move/from16 v2, p2

    iput v2, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->actualBrightness:F

    .line 1675
    move/from16 v3, p5

    iput v3, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->brightnessOverrideFromWindow:F

    .line 1676
    move/from16 v4, p3

    iput-boolean v4, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->userInitiatedChange:Z

    .line 1677
    move/from16 v5, p4

    iput-boolean v5, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->useAutoBrightness:Z

    .line 1678
    move/from16 v6, p6

    iput-boolean v6, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->lowPowerMode:Z

    .line 1679
    move/from16 v7, p7

    iput-boolean v7, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->sunlightActive:Z

    .line 1680
    move/from16 v8, p8

    iput v8, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->ambientLux:F

    .line 1681
    move/from16 v9, p9

    iput v9, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->userDataPoint:F

    .line 1682
    move/from16 v10, p10

    iput-boolean v10, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->defaultConfig:Z

    .line 1683
    move/from16 v11, p11

    iput v11, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->type:I

    .line 1684
    move-object/from16 v12, p12

    iput-object v12, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->packageName:Ljava/lang/String;

    .line 1685
    move/from16 v13, p13

    iput v13, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->mainLux:F

    .line 1686
    move/from16 v14, p14

    iput v14, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->assistLux:F

    .line 1687
    move/from16 v15, p15

    iput v15, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->originalNit:F

    .line 1688
    move/from16 v1, p16

    iput v1, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->actualNit:F

    .line 1689
    move/from16 v1, p17

    iput v1, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->orientation:I

    .line 1690
    move/from16 v1, p18

    iput v1, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->sceneState:I

    .line 1691
    return-void
.end method

.method private typeToString(I)Ljava/lang/String;
    .registers 3
    .param p1, "type"  # I

    .line 1744
    packed-switch p1, :pswitch_data_18

    .line 1756
    const/4 v0, 0x0

    return-object v0

    .line 1754
    :pswitch_5  #0x4
    const-string/jumbo v0, "sunlight_brightness"

    return-object v0

    .line 1746
    :pswitch_9  #0x3
    const-string/jumbo v0, "window_override_brightness"

    return-object v0

    .line 1750
    :pswitch_d  #0x2
    const-string v0, "auto_manual_brightness"

    return-object v0

    .line 1748
    :pswitch_10  #0x1
    const-string v0, "auto_brightness"

    return-object v0

    .line 1752
    :pswitch_13  #0x0
    const-string/jumbo v0, "manual_brightness"

    return-object v0

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_13  #00000000
        :pswitch_10  #00000001
        :pswitch_d  #00000002
        :pswitch_9  #00000003
        :pswitch_5  #00000004
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"  # Ljava/lang/Object;

    .line 1695
    instance-of v0, p1, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1696
    return v1

    .line 1698
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;

    .line 1700
    .local v0, "value":Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;
    iget v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->originalBrightness:F

    iget v3, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->originalBrightness:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_83

    iget v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->type:I

    iget v3, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->type:I

    if-ne v2, v3, :cond_83

    iget-boolean v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->userInitiatedChange:Z

    iget-boolean v3, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->userInitiatedChange:Z

    if-ne v2, v3, :cond_83

    iget-boolean v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->useAutoBrightness:Z

    iget-boolean v3, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->useAutoBrightness:Z

    if-ne v2, v3, :cond_83

    iget v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->brightnessOverrideFromWindow:F

    iget v3, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->brightnessOverrideFromWindow:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_83

    iget-boolean v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->lowPowerMode:Z

    iget-boolean v3, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->lowPowerMode:Z

    if-ne v2, v3, :cond_83

    iget v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->ambientLux:F

    iget v3, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->ambientLux:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_83

    iget v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->userDataPoint:F

    iget v3, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->userDataPoint:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_83

    iget-object v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->packageName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->packageName:Ljava/lang/String;

    .line 1708
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_83

    iget v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->mainLux:F

    iget v3, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->mainLux:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_83

    iget v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->assistLux:F

    iget v3, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->assistLux:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_83

    iget-object v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->accValues:[F

    iget-object v3, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->accValues:[F

    .line 1711
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v2

    if-eqz v2, :cond_83

    iget v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->originalNit:F

    iget v3, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->originalNit:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_83

    iget v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->actualNit:F

    iget v3, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->actualNit:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_83

    iget v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->orientation:I

    iget v3, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->orientation:I

    if-ne v2, v3, :cond_83

    iget v2, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->sceneState:I

    iget v3, v0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->sceneState:I

    if-ne v2, v3, :cond_83

    const/4 v1, 0x1

    goto :goto_84

    :cond_83
    nop

    .line 1700
    :goto_84
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1720
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BrightnessChangeItem{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->type:I

    .line 1721
    invoke-direct {p0, v1}, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->typeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", originalBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->originalBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", actualBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->actualBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", originalNit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->originalNit:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", actualNit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->actualNit:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", brightnessOverrideFromWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->brightnessOverrideFromWindow:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userInitiatedChange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->userInitiatedChange:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", useAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->useAutoBrightness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lowPowerMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->lowPowerMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sunlightActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->sunlightActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ambientLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->ambientLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userDataPoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->userDataPoint:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", defaultConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->defaultConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mainLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->mainLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", assistLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->assistLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", accValues="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->accValues:[F

    .line 1737
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", orientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sceneState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/statistics/BrightnessDataProcessor$BrightnessChangeItem;->sceneState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1720
    return-object v0
.end method
