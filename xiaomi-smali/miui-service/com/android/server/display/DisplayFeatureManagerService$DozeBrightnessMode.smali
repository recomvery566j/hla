# classes.dex

.class final enum Lcom/android/server/display/DisplayFeatureManagerService$DozeBrightnessMode;
.super Ljava/lang/Enum;
.source "DisplayFeatureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayFeatureManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DozeBrightnessMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/display/DisplayFeatureManagerService$DozeBrightnessMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/display/DisplayFeatureManagerService$DozeBrightnessMode;

.field public static final enum DOZE_BRIGHTNESS_HBM:Lcom/android/server/display/DisplayFeatureManagerService$DozeBrightnessMode;

.field public static final enum DOZE_BRIGHTNESS_LBM:Lcom/android/server/display/DisplayFeatureManagerService$DozeBrightnessMode;

.field public static final enum DOZE_TO_NORMAL:Lcom/android/server/display/DisplayFeatureManagerService$DozeBrightnessMode;


# direct methods
.method private static synthetic $values()[Lcom/android/server/display/DisplayFeatureManagerService$DozeBrightnessMode;
    .registers 3

    .line 789
    sget-object v0, Lcom/android/server/display/DisplayFeatureManagerService$DozeBrightnessMode;->DOZE_TO_NORMAL:Lcom/android/server/display/DisplayFeatureManagerService$DozeBrightnessMode;

    sget-object v1, Lcom/android/server/display/DisplayFeatureManagerService$DozeBrightnessMode;->DOZE_BRIGHTNESS_HBM:Lcom/android/server/display/DisplayFeatureManagerService$DozeBrightnessMode;

    sget-object v2, Lcom/android/server/display/DisplayFeatureManagerService$DozeBrightnessMode;->DOZE_BRIGHTNESS_LBM:Lcom/android/server/display/DisplayFeatureManagerService$DozeBrightnessMode;

    filled-new-array {v0, v1, v2}, [Lcom/android/server/display/DisplayFeatureManagerService$DozeBrightnessMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 790
    new-instance v0, Lcom/android/server/display/DisplayFeatureManagerService$DozeBrightnessMode;

    const-string v1, "DOZE_TO_NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/DisplayFeatureManagerService$DozeBrightnessMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/DisplayFeatureManagerService$DozeBrightnessMode;->DOZE_TO_NORMAL:Lcom/android/server/display/DisplayFeatureManagerService$DozeBrightnessMode;

    .line 791
    new-instance v0, Lcom/android/server/display/DisplayFeatureManagerService$DozeBrightnessMode;

    const-string v1, "DOZE_BRIGHTNESS_HBM"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/DisplayFeatureManagerService$DozeBrightnessMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/DisplayFeatureManagerService$DozeBrightnessMode;->DOZE_BRIGHTNESS_HBM:Lcom/android/server/display/DisplayFeatureManagerService$DozeBrightnessMode;

    .line 792
    new-instance v0, Lcom/android/server/display/DisplayFeatureManagerService$DozeBrightnessMode;

    const-string v1, "DOZE_BRIGHTNESS_LBM"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/DisplayFeatureManagerService$DozeBrightnessMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/DisplayFeatureManagerService$DozeBrightnessMode;->DOZE_BRIGHTNESS_LBM:Lcom/android/server/display/DisplayFeatureManagerService$DozeBrightnessMode;

    .line 789
    invoke-static {}, Lcom/android/server/display/DisplayFeatureManagerService$DozeBrightnessMode;->$values()[Lcom/android/server/display/DisplayFeatureManagerService$DozeBrightnessMode;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/DisplayFeatureManagerService$DozeBrightnessMode;->$VALUES:[Lcom/android/server/display/DisplayFeatureManagerService$DozeBrightnessMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 789
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/display/DisplayFeatureManagerService$DozeBrightnessMode;
    .registers 2
    .param p0, "name"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 789
    const-class v0, Lcom/android/server/display/DisplayFeatureManagerService$DozeBrightnessMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayFeatureManagerService$DozeBrightnessMode;

    return-object v0
.end method

.method public static values()[Lcom/android/server/display/DisplayFeatureManagerService$DozeBrightnessMode;
    .registers 1

    .line 789
    sget-object v0, Lcom/android/server/display/DisplayFeatureManagerService$DozeBrightnessMode;->$VALUES:[Lcom/android/server/display/DisplayFeatureManagerService$DozeBrightnessMode;

    invoke-virtual {v0}, [Lcom/android/server/display/DisplayFeatureManagerService$DozeBrightnessMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/display/DisplayFeatureManagerService$DozeBrightnessMode;

    return-object v0
.end method
