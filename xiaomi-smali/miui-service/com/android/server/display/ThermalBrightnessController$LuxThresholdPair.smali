# classes.dex

.class Lcom/android/server/display/ThermalBrightnessController$LuxThresholdPair;
.super Ljava/lang/Object;
.source "ThermalBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/ThermalBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LuxThresholdPair"
.end annotation


# instance fields
.field private mMaxAmbientLuxThreshold:F

.field private mMinAmbientLuxThreshold:F


# direct methods
.method static bridge synthetic -$$Nest$mgetMaxAmbientLuxThreshold(Lcom/android/server/display/ThermalBrightnessController$LuxThresholdPair;)F
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/ThermalBrightnessController$LuxThresholdPair;->getMaxAmbientLuxThreshold()F

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetMinAmbientLuxThreshold(Lcom/android/server/display/ThermalBrightnessController$LuxThresholdPair;)F
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/ThermalBrightnessController$LuxThresholdPair;->getMinAmbientLuxThreshold()F

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetMaxAmbientLuxThreshold(Lcom/android/server/display/ThermalBrightnessController$LuxThresholdPair;F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/ThermalBrightnessController$LuxThresholdPair;->setMaxAmbientLuxThreshold(F)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetMinAmbientLuxThreshold(Lcom/android/server/display/ThermalBrightnessController$LuxThresholdPair;F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/ThermalBrightnessController$LuxThresholdPair;->setMinAmbientLuxThreshold(F)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 981
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 983
    return-void
.end method

.method public constructor <init>(FF)V
    .registers 3
    .param p1, "minAmbientLux"  # F
    .param p2, "maxAmbientLux"  # F

    .line 985
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 986
    iput p1, p0, Lcom/android/server/display/ThermalBrightnessController$LuxThresholdPair;->mMinAmbientLuxThreshold:F

    .line 987
    iput p2, p0, Lcom/android/server/display/ThermalBrightnessController$LuxThresholdPair;->mMaxAmbientLuxThreshold:F

    .line 988
    return-void
.end method

.method private getMaxAmbientLuxThreshold()F
    .registers 2

    .line 1003
    iget v0, p0, Lcom/android/server/display/ThermalBrightnessController$LuxThresholdPair;->mMaxAmbientLuxThreshold:F

    return v0
.end method

.method private getMinAmbientLuxThreshold()F
    .registers 2

    .line 995
    iget v0, p0, Lcom/android/server/display/ThermalBrightnessController$LuxThresholdPair;->mMinAmbientLuxThreshold:F

    return v0
.end method

.method private setMaxAmbientLuxThreshold(F)V
    .registers 2
    .param p1, "maxLux"  # F

    .line 999
    iput p1, p0, Lcom/android/server/display/ThermalBrightnessController$LuxThresholdPair;->mMaxAmbientLuxThreshold:F

    .line 1000
    return-void
.end method

.method private setMinAmbientLuxThreshold(F)V
    .registers 2
    .param p1, "minLux"  # F

    .line 991
    iput p1, p0, Lcom/android/server/display/ThermalBrightnessController$LuxThresholdPair;->mMinAmbientLuxThreshold:F

    .line 992
    return-void
.end method
