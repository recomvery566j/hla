# classes.dex

.class public final Lcom/android/server/display/RampRateController$RateStateRecord;
.super Ljava/lang/Object;
.source "RampRateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/RampRateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RateStateRecord"
.end annotation


# static fields
.field public static final MODIFIER_RATE_ALL:I = 0x7f

.field public static final MODIFIER_RATE_BCBC:I = 0x1

.field public static final MODIFIER_RATE_DIM:I = 0x40

.field public static final MODIFIER_RATE_DOZE:I = 0x4

.field public static final MODIFIER_RATE_HDR:I = 0x8

.field public static final MODIFIER_RATE_OVERRIDE:I = 0x10

.field public static final MODIFIER_RATE_TEMPORARY:I = 0x20

.field public static final MODIFIER_RATE_THERMAL:I = 0x2


# instance fields
.field private final SCREEN_BRIGHTNESS_FLOAT_NAME:Ljava/lang/String;

.field private final SCREEN_SDR_BRIGHTNESS_FLOAT_NAME:Ljava/lang/String;

.field private mCurrentRateReason:I

.field private mCurrentSdrRateReason:I

.field private mPreviousRateReason:I

.field private mPreviousSdrRateReason:I

.field private mRateModifier:I

.field private mRateType:I

.field private mStartDozeDimmingTimeMills:J

.field private mStartTemporaryDimmingTimeMills:J

.field final synthetic this$0:Lcom/android/server/display/RampRateController;


# direct methods
.method static bridge synthetic -$$Nest$fgetSCREEN_BRIGHTNESS_FLOAT_NAME(Lcom/android/server/display/RampRateController$RateStateRecord;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/RampRateController$RateStateRecord;->SCREEN_BRIGHTNESS_FLOAT_NAME:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetSCREEN_SDR_BRIGHTNESS_FLOAT_NAME(Lcom/android/server/display/RampRateController$RateStateRecord;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/RampRateController$RateStateRecord;->SCREEN_SDR_BRIGHTNESS_FLOAT_NAME:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentRateReason(Lcom/android/server/display/RampRateController$RateStateRecord;)I
    .registers 1

    iget p0, p0, Lcom/android/server/display/RampRateController$RateStateRecord;->mCurrentRateReason:I

    return p0
.end method

.method static bridge synthetic -$$Nest$maddRateModifier(Lcom/android/server/display/RampRateController$RateStateRecord;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/RampRateController$RateStateRecord;->addRateModifier(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mappliedBcbcDimming(Lcom/android/server/display/RampRateController$RateStateRecord;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/RampRateController$RateStateRecord;->appliedBcbcDimming()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mappliedDimDimming(Lcom/android/server/display/RampRateController$RateStateRecord;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/RampRateController$RateStateRecord;->appliedDimDimming()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mappliedDozeDimming(Lcom/android/server/display/RampRateController$RateStateRecord;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/RampRateController$RateStateRecord;->appliedDozeDimming()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mappliedDozeDimming(Lcom/android/server/display/RampRateController$RateStateRecord;J)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/RampRateController$RateStateRecord;->appliedDozeDimming(J)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mappliedHdrDimming(Lcom/android/server/display/RampRateController$RateStateRecord;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/RampRateController$RateStateRecord;->appliedHdrDimming()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mappliedOverrideDimming(Lcom/android/server/display/RampRateController$RateStateRecord;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/RampRateController$RateStateRecord;->appliedOverrideDimming()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mappliedTemporaryDimming(Lcom/android/server/display/RampRateController$RateStateRecord;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/RampRateController$RateStateRecord;->appliedTemporaryDimming()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mappliedTemporaryDimming(Lcom/android/server/display/RampRateController$RateStateRecord;JFF)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/display/RampRateController$RateStateRecord;->appliedTemporaryDimming(JFF)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mappliedThermalDimming(Lcom/android/server/display/RampRateController$RateStateRecord;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/RampRateController$RateStateRecord;->appliedThermalDimming()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mclearRateModifier(Lcom/android/server/display/RampRateController$RateStateRecord;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/RampRateController$RateStateRecord;->clearRateModifier(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetCurrentRateReason(Lcom/android/server/display/RampRateController$RateStateRecord;Ljava/lang/String;)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/RampRateController$RateStateRecord;->getCurrentRateReason(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetPreviousRateReason(Lcom/android/server/display/RampRateController$RateStateRecord;Ljava/lang/String;)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/RampRateController$RateStateRecord;->getPreviousRateReason(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetRateModifier(Lcom/android/server/display/RampRateController$RateStateRecord;)I
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/RampRateController$RateStateRecord;->getRateModifier()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetRateType(Lcom/android/server/display/RampRateController$RateStateRecord;)I
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/RampRateController$RateStateRecord;->getRateType()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mresetRateType(Lcom/android/server/display/RampRateController$RateStateRecord;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/RampRateController$RateStateRecord;->resetRateType()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetCurrentRateReason(Lcom/android/server/display/RampRateController$RateStateRecord;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/RampRateController$RateStateRecord;->setCurrentRateReason(ILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetDozeDimmingTimeMills(Lcom/android/server/display/RampRateController$RateStateRecord;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/RampRateController$RateStateRecord;->setDozeDimmingTimeMills(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetPreviousRateReason(Lcom/android/server/display/RampRateController$RateStateRecord;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/RampRateController$RateStateRecord;->setPreviousRateReason(ILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetRateReasonIfNeeded(Lcom/android/server/display/RampRateController$RateStateRecord;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/RampRateController$RateStateRecord;->setRateReasonIfNeeded(ILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetRateType(Lcom/android/server/display/RampRateController$RateStateRecord;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/RampRateController$RateStateRecord;->setRateType(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetRateTypeIfNeeded(Lcom/android/server/display/RampRateController$RateStateRecord;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/RampRateController$RateStateRecord;->setRateTypeIfNeeded(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetStartTemporaryDimmingTimeMills(Lcom/android/server/display/RampRateController$RateStateRecord;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/RampRateController$RateStateRecord;->setStartTemporaryDimmingTimeMills(J)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/RampRateController;)V
    .registers 3
    .param p1, "this$0"  # Lcom/android/server/display/RampRateController;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 863
    iput-object p1, p0, Lcom/android/server/display/RampRateController$RateStateRecord;->this$0:Lcom/android/server/display/RampRateController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 875
    sget-object v0, Lcom/android/server/display/DisplayPowerState;->SCREEN_BRIGHTNESS_FLOAT:Landroid/util/FloatProperty;

    invoke-virtual {v0}, Landroid/util/FloatProperty;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/RampRateController$RateStateRecord;->SCREEN_BRIGHTNESS_FLOAT_NAME:Ljava/lang/String;

    .line 876
    sget-object v0, Lcom/android/server/display/DisplayPowerState;->SCREEN_SDR_BRIGHTNESS_FLOAT:Landroid/util/FloatProperty;

    invoke-virtual {v0}, Landroid/util/FloatProperty;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/RampRateController$RateStateRecord;->SCREEN_SDR_BRIGHTNESS_FLOAT_NAME:Ljava/lang/String;

    return-void
.end method

.method private addRateModifier(I)V
    .registers 3
    .param p1, "modifier"  # I

    .line 887
    iget v0, p0, Lcom/android/server/display/RampRateController$RateStateRecord;->mRateModifier:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/display/RampRateController$RateStateRecord;->mRateModifier:I

    .line 888
    return-void
.end method

.method private appliedBcbcDimming()Z
    .registers 3

    .line 990
    iget v0, p0, Lcom/android/server/display/RampRateController$RateStateRecord;->mRateModifier:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method private appliedDimDimming()Z
    .registers 2

    .line 998
    iget v0, p0, Lcom/android/server/display/RampRateController$RateStateRecord;->mRateModifier:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private appliedDozeDimming()Z
    .registers 2

    .line 1002
    iget v0, p0, Lcom/android/server/display/RampRateController$RateStateRecord;->mRateModifier:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private appliedDozeDimming(J)Z
    .registers 7
    .param p1, "timeMills"  # J

    .line 1006
    iget-wide v0, p0, Lcom/android/server/display/RampRateController$RateStateRecord;->mStartDozeDimmingTimeMills:J

    sub-long v0, p1, v0

    iget-object v2, p0, Lcom/android/server/display/RampRateController$RateStateRecord;->this$0:Lcom/android/server/display/RampRateController;

    invoke-static {v2}, Lcom/android/server/display/RampRateController;->-$$Nest$fgetmAnimationDurationDozeDimming(Lcom/android/server/display/RampRateController;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1c

    .line 1007
    iget-object v0, p0, Lcom/android/server/display/RampRateController$RateStateRecord;->this$0:Lcom/android/server/display/RampRateController;

    invoke-static {v0}, Lcom/android/server/display/RampRateController;->-$$Nest$fgetTAG(Lcom/android/server/display/RampRateController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Continue using rate of doze dimming."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    const/4 v0, 0x1

    return v0

    .line 1010
    :cond_1c
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/display/RampRateController$RateStateRecord;->mStartDozeDimmingTimeMills:J

    .line 1011
    const/4 v0, 0x0

    return v0
.end method

.method private appliedHdrDimming()Z
    .registers 2

    .line 982
    iget v0, p0, Lcom/android/server/display/RampRateController$RateStateRecord;->mRateModifier:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private appliedOverrideDimming()Z
    .registers 2

    .line 994
    iget v0, p0, Lcom/android/server/display/RampRateController$RateStateRecord;->mRateModifier:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private appliedTemporaryDimming()Z
    .registers 2

    .line 965
    iget v0, p0, Lcom/android/server/display/RampRateController$RateStateRecord;->mRateModifier:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private appliedTemporaryDimming(JFF)Z
    .registers 9
    .param p1, "timeMills"  # J
    .param p3, "targetBrightness"  # F
    .param p4, "targetSdrBrightness"  # F

    .line 970
    iget-object v0, p0, Lcom/android/server/display/RampRateController$RateStateRecord;->this$0:Lcom/android/server/display/RampRateController;

    invoke-static {v0}, Lcom/android/server/display/RampRateController;->-$$Nest$fgetmSupportManualDimming(Lcom/android/server/display/RampRateController;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-wide v0, p0, Lcom/android/server/display/RampRateController$RateStateRecord;->mStartTemporaryDimmingTimeMills:J

    sub-long v0, p1, v0

    iget-object v2, p0, Lcom/android/server/display/RampRateController$RateStateRecord;->this$0:Lcom/android/server/display/RampRateController;

    invoke-static {v2}, Lcom/android/server/display/RampRateController;->-$$Nest$fgetmAnimationDurationTemporaryDimming(Lcom/android/server/display/RampRateController;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2d

    const/4 v0, 0x0

    cmpl-float v1, p3, v0

    if-nez v1, :cond_20

    cmpl-float v0, p4, v0

    if-eqz v0, :cond_2d

    .line 974
    :cond_20
    iget-object v0, p0, Lcom/android/server/display/RampRateController$RateStateRecord;->this$0:Lcom/android/server/display/RampRateController;

    invoke-static {v0}, Lcom/android/server/display/RampRateController;->-$$Nest$fgetTAG(Lcom/android/server/display/RampRateController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Continue using rate of temporary dimming."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    const/4 v0, 0x1

    return v0

    .line 977
    :cond_2d
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/display/RampRateController$RateStateRecord;->mStartTemporaryDimmingTimeMills:J

    .line 978
    const/4 v0, 0x0

    return v0
.end method

.method private appliedThermalDimming()Z
    .registers 2

    .line 986
    iget v0, p0, Lcom/android/server/display/RampRateController$RateStateRecord;->mRateModifier:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private clearRateModifier(I)V
    .registers 4
    .param p1, "modifier"  # I

    .line 891
    iget v0, p0, Lcom/android/server/display/RampRateController$RateStateRecord;->mRateModifier:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/display/RampRateController$RateStateRecord;->mRateModifier:I

    .line 892
    return-void
.end method

.method private getCurrentRateReason(Ljava/lang/String;)I
    .registers 3
    .param p1, "name"  # Ljava/lang/String;

    .line 933
    iget-object v0, p0, Lcom/android/server/display/RampRateController$RateStateRecord;->SCREEN_SDR_BRIGHTNESS_FLOAT_NAME:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 934
    iget v0, p0, Lcom/android/server/display/RampRateController$RateStateRecord;->mCurrentSdrRateReason:I

    return v0

    .line 936
    :cond_b
    iget v0, p0, Lcom/android/server/display/RampRateController$RateStateRecord;->mCurrentRateReason:I

    return v0
.end method

.method private getPreviousRateReason(Ljava/lang/String;)I
    .registers 3
    .param p1, "name"  # Ljava/lang/String;

    .line 940
    iget-object v0, p0, Lcom/android/server/display/RampRateController$RateStateRecord;->SCREEN_SDR_BRIGHTNESS_FLOAT_NAME:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 941
    iget v0, p0, Lcom/android/server/display/RampRateController$RateStateRecord;->mPreviousSdrRateReason:I

    return v0

    .line 943
    :cond_b
    iget v0, p0, Lcom/android/server/display/RampRateController$RateStateRecord;->mPreviousRateReason:I

    return v0
.end method

.method private getRateModifier()I
    .registers 2

    .line 947
    iget v0, p0, Lcom/android/server/display/RampRateController$RateStateRecord;->mRateModifier:I

    return v0
.end method

.method private getRateType()I
    .registers 2

    .line 929
    iget v0, p0, Lcom/android/server/display/RampRateController$RateStateRecord;->mRateType:I

    return v0
.end method

.method private resetRateType()V
    .registers 2

    .line 951
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/RampRateController$RateStateRecord;->mRateType:I

    .line 952
    return-void
.end method

.method private setCurrentRateReason(ILjava/lang/String;)V
    .registers 4
    .param p1, "reason"  # I
    .param p2, "name"  # Ljava/lang/String;

    .line 913
    iget-object v0, p0, Lcom/android/server/display/RampRateController$RateStateRecord;->SCREEN_SDR_BRIGHTNESS_FLOAT_NAME:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 914
    iput p1, p0, Lcom/android/server/display/RampRateController$RateStateRecord;->mCurrentSdrRateReason:I

    goto :goto_d

    .line 916
    :cond_b
    iput p1, p0, Lcom/android/server/display/RampRateController$RateStateRecord;->mCurrentRateReason:I

    .line 918
    :goto_d
    return-void
.end method

.method private setDozeDimmingTimeMills(J)V
    .registers 3
    .param p1, "timeMills"  # J

    .line 961
    iput-wide p1, p0, Lcom/android/server/display/RampRateController$RateStateRecord;->mStartDozeDimmingTimeMills:J

    .line 962
    return-void
.end method

.method private setPreviousRateReason(ILjava/lang/String;)V
    .registers 4
    .param p1, "currentRateReason"  # I
    .param p2, "name"  # Ljava/lang/String;

    .line 921
    iget-object v0, p0, Lcom/android/server/display/RampRateController$RateStateRecord;->SCREEN_SDR_BRIGHTNESS_FLOAT_NAME:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 922
    iput p1, p0, Lcom/android/server/display/RampRateController$RateStateRecord;->mPreviousSdrRateReason:I

    goto :goto_d

    .line 924
    :cond_b
    iput p1, p0, Lcom/android/server/display/RampRateController$RateStateRecord;->mPreviousRateReason:I

    .line 926
    :goto_d
    return-void
.end method

.method private setRateReasonIfNeeded(ILjava/lang/String;)V
    .registers 4
    .param p1, "reason"  # I
    .param p2, "name"  # Ljava/lang/String;

    .line 907
    iget-object v0, p0, Lcom/android/server/display/RampRateController$RateStateRecord;->this$0:Lcom/android/server/display/RampRateController;

    invoke-static {v0}, Lcom/android/server/display/RampRateController;->-$$Nest$fgetmSupportManualDimming(Lcom/android/server/display/RampRateController;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 908
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/RampRateController$RateStateRecord;->setCurrentRateReason(ILjava/lang/String;)V

    .line 910
    :cond_b
    return-void
.end method

.method private setRateType(I)V
    .registers 2
    .param p1, "type"  # I

    .line 903
    iput p1, p0, Lcom/android/server/display/RampRateController$RateStateRecord;->mRateType:I

    .line 904
    return-void
.end method

.method private setRateTypeIfNeeded(I)V
    .registers 3
    .param p1, "type"  # I

    .line 895
    iget-object v0, p0, Lcom/android/server/display/RampRateController$RateStateRecord;->this$0:Lcom/android/server/display/RampRateController;

    invoke-static {v0}, Lcom/android/server/display/RampRateController;->-$$Nest$fgetmSupportManualDimming(Lcom/android/server/display/RampRateController;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 896
    invoke-direct {p0, p1}, Lcom/android/server/display/RampRateController$RateStateRecord;->setRateType(I)V

    goto :goto_10

    .line 898
    :cond_c
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/server/display/RampRateController$RateStateRecord;->setRateType(I)V

    .line 900
    :goto_10
    return-void
.end method

.method private setStartTemporaryDimmingTimeMills(J)V
    .registers 4
    .param p1, "timeMills"  # J

    .line 955
    iget-object v0, p0, Lcom/android/server/display/RampRateController$RateStateRecord;->this$0:Lcom/android/server/display/RampRateController;

    invoke-static {v0}, Lcom/android/server/display/RampRateController;->-$$Nest$fgetmSupportManualDimming(Lcom/android/server/display/RampRateController;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 956
    iput-wide p1, p0, Lcom/android/server/display/RampRateController$RateStateRecord;->mStartTemporaryDimmingTimeMills:J

    .line 958
    :cond_a
    return-void
.end method
