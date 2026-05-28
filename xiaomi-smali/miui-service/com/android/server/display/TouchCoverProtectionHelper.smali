# classes.dex

.class public Lcom/android/server/display/TouchCoverProtectionHelper;
.super Ljava/lang/Object;
.source "TouchCoverProtectionHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/TouchCoverProtectionHelper$Injector;,
        Lcom/android/server/display/TouchCoverProtectionHelper$TouchPositionTracker;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final GAME_TOUCH_EVENT_INTERVAL:I = 0x2bf20

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBorderRect:Landroid/graphics/Rect;

.field private final mContext:Landroid/content/Context;

.field private mCurrentBorderRect:Landroid/graphics/Rect;

.field private final mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayListenerEnabled:Z

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final mFoldStateListener:Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

.field private final mHandler:Landroid/os/Handler;

.field private final mInjector:Lcom/android/server/display/TouchCoverProtectionHelper$Injector;

.field private mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

.field private mLogicalHeight:I

.field private mLogicalWidth:I

.field private mRotation:I

.field private final mSecondDisplayBorderRect:Landroid/graphics/Rect;

.field private final mSyncRoot:Ljava/lang/Object;

.field private final mTouchAreaEnabled:Z

.field private final mTouchCoverProtectionRect:Landroid/graphics/Rect;

.field private final mTouchEventDebounce:I

.field private final mTouchPositionTracker:Lcom/android/server/display/TouchCoverProtectionHelper$TouchPositionTracker;

.field private mTouchTrackingEnabled:Z


# direct methods
.method public static synthetic $r8$lambda$18VTmWiHUaCkU7iqZtBTyVNE7aQ(Lcom/android/server/display/TouchCoverProtectionHelper;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/TouchCoverProtectionHelper;->lambda$showTouchCoverProtectionRect$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$_Cpfgy51Jj9BiITtn56QDjx3bHk(Lcom/android/server/display/TouchCoverProtectionHelper;Ljava/lang/Boolean;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/TouchCoverProtectionHelper;->lambda$new$0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eheL7RcUwIe8iGlv0o5OV7zXVok(Lcom/android/server/display/TouchCoverProtectionHelper;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/TouchCoverProtectionHelper;->lambda$showTouchCoverProtectionRect$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$qp1pZffbUop6Sysnyk9jyjNSZgc(Lcom/android/server/display/TouchCoverProtectionHelper;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/TouchCoverProtectionHelper;->lambda$setDisplayListenerEnabled$1(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/display/TouchCoverProtectionHelper;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLogicalDisplay(Lcom/android/server/display/TouchCoverProtectionHelper;)Lcom/android/server/display/LogicalDisplay;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTouchCoverProtectionRect(Lcom/android/server/display/TouchCoverProtectionHelper;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mTouchCoverProtectionRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateTouchCoverProtectionRect(Lcom/android/server/display/TouchCoverProtectionHelper;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/TouchCoverProtectionHelper;->updateTouchCoverProtectionRect()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/display/TouchCoverProtectionHelper;->DEBUG:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/display/TouchCoverProtectionHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 38
    const-class v0, Lcom/android/server/display/TouchCoverProtectionHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/TouchCoverProtectionHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 7
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "looper"  # Landroid/os/Looper;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mTouchCoverProtectionRect:Landroid/graphics/Rect;

    .line 279
    new-instance v0, Lcom/android/server/display/TouchCoverProtectionHelper$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/TouchCoverProtectionHelper$1;-><init>(Lcom/android/server/display/TouchCoverProtectionHelper;)V

    iput-object v0, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 68
    iput-object p1, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mContext:Landroid/content/Context;

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mHandler:Landroid/os/Handler;

    .line 70
    new-instance v0, Lcom/android/server/display/TouchCoverProtectionHelper$Injector;

    invoke-direct {v0, p0}, Lcom/android/server/display/TouchCoverProtectionHelper$Injector;-><init>(Lcom/android/server/display/TouchCoverProtectionHelper;)V

    iput-object v0, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mInjector:Lcom/android/server/display/TouchCoverProtectionHelper$Injector;

    .line 71
    iget-object v0, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 72
    invoke-static {}, Lcom/android/server/display/DisplayManagerServiceStub;->getInstance()Lcom/android/server/display/DisplayManagerServiceStub;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayManagerServiceImpl;

    .line 73
    invoke-virtual {v0}, Lcom/android/server/display/DisplayManagerServiceImpl;->getSyncRoot()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mSyncRoot:Ljava/lang/Object;

    .line 74
    new-instance v0, Lcom/android/server/display/TouchCoverProtectionHelper$TouchPositionTracker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/TouchCoverProtectionHelper$TouchPositionTracker;-><init>(Lcom/android/server/display/TouchCoverProtectionHelper;Lcom/android/server/display/TouchCoverProtectionHelper-IA;)V

    iput-object v0, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mTouchPositionTracker:Lcom/android/server/display/TouchCoverProtectionHelper$TouchPositionTracker;

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 76
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x11050083

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mTouchAreaEnabled:Z

    .line 79
    const v1, 0x11030058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/display/TouchCoverProtectionHelper;->setBorderRect([I)Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mBorderRect:Landroid/graphics/Rect;

    .line 81
    const v1, 0x11030050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/display/TouchCoverProtectionHelper;->setBorderRect([I)Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mSecondDisplayBorderRect:Landroid/graphics/Rect;

    .line 83
    const v1, 0x110b0010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mTouchEventDebounce:I

    .line 85
    iget-object v1, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mBorderRect:Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mCurrentBorderRect:Landroid/graphics/Rect;

    .line 87
    new-instance v1, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    new-instance v2, Lcom/android/server/display/TouchCoverProtectionHelper$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/android/server/display/TouchCoverProtectionHelper$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/display/TouchCoverProtectionHelper;)V

    invoke-direct {v1, p1, v2}, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;)V

    iput-object v1, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mFoldStateListener:Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    .line 88
    const-class v1, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/devicestate/DeviceStateManager;

    iput-object v1, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    .line 89
    iget-object v1, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    new-instance v2, Landroid/os/HandlerExecutor;

    iget-object v3, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, v3}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object v3, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mFoldStateListener:Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    .line 90
    return-void
.end method

.method private synthetic lambda$new$0(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "folded"  # Ljava/lang/Boolean;

    .line 87
    invoke-direct {p0, p1}, Lcom/android/server/display/TouchCoverProtectionHelper;->updateBorderRect(Ljava/lang/Boolean;)V

    return-void
.end method

.method private synthetic lambda$setDisplayListenerEnabled$1(Z)V
    .registers 6
    .param p1, "enable"  # Z

    .line 242
    const-string/jumbo v0, "setDisplayListenerEnabled: "

    if-eqz p1, :cond_2c

    .line 243
    iget-boolean v1, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mDisplayListenerEnabled:Z

    if-nez v1, :cond_50

    .line 244
    iget-object v1, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v3, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 245
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mDisplayListenerEnabled:Z

    .line 246
    sget-object v1, Lcom/android/server/display/TouchCoverProtectionHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_50

    .line 248
    :cond_2c
    iget-boolean v1, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mDisplayListenerEnabled:Z

    if-eqz v1, :cond_50

    .line 249
    iget-object v1, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 250
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mDisplayListenerEnabled:Z

    .line 251
    sget-object v1, Lcom/android/server/display/TouchCoverProtectionHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_50
    :goto_50
    return-void
.end method

.method private synthetic lambda$showTouchCoverProtectionRect$2()V
    .registers 2

    .line 307
    iget-object v0, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mInjector:Lcom/android/server/display/TouchCoverProtectionHelper$Injector;

    invoke-static {v0}, Lcom/android/server/display/TouchCoverProtectionHelper$Injector;->-$$Nest$mshow(Lcom/android/server/display/TouchCoverProtectionHelper$Injector;)V

    return-void
.end method

.method private synthetic lambda$showTouchCoverProtectionRect$3()V
    .registers 2

    .line 309
    iget-object v0, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mInjector:Lcom/android/server/display/TouchCoverProtectionHelper$Injector;

    invoke-static {v0}, Lcom/android/server/display/TouchCoverProtectionHelper$Injector;->-$$Nest$mhide(Lcom/android/server/display/TouchCoverProtectionHelper$Injector;)V

    return-void
.end method

.method private setBorderRect([I)Landroid/graphics/Rect;
    .registers 7
    .param p1, "configArray"  # [I

    .line 257
    array-length v0, p1

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_12

    .line 258
    sget-object v0, Lcom/android/server/display/TouchCoverProtectionHelper;->TAG:Ljava/lang/String;

    const-string v1, "The touch cover array configuration must be four."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0

    .line 261
    :cond_12
    new-instance v0, Landroid/graphics/Rect;

    aget v1, p1, v2

    const/4 v2, 0x1

    aget v2, p1, v2

    const/4 v3, 0x2

    aget v3, p1, v3

    const/4 v4, 0x3

    aget v4, p1, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private setDisplayListenerEnabled(Z)V
    .registers 4
    .param p1, "enable"  # Z

    .line 241
    iget-object v0, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/TouchCoverProtectionHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/TouchCoverProtectionHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/TouchCoverProtectionHelper;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 254
    return-void
.end method

.method private setTouchTrackingEnabled(Z)V
    .registers 4
    .param p1, "enable"  # Z

    .line 265
    if-eqz p1, :cond_15

    .line 266
    iget-boolean v0, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mTouchTrackingEnabled:Z

    if-nez v0, :cond_2c

    .line 267
    iget-object v0, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/input/gesture/MiuiGestureMonitor;->getInstance(Landroid/content/Context;)Lcom/miui/server/input/gesture/MiuiGestureMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mTouchPositionTracker:Lcom/android/server/display/TouchCoverProtectionHelper$TouchPositionTracker;

    .line 268
    invoke-virtual {v0, v1}, Lcom/miui/server/input/gesture/MiuiGestureMonitor;->registerPointerEventListener(Lcom/miui/server/input/gesture/MiuiGestureListener;)V

    .line 269
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mTouchTrackingEnabled:Z

    goto :goto_2c

    .line 271
    :cond_15
    iget-boolean v0, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mTouchTrackingEnabled:Z

    if-eqz v0, :cond_2c

    .line 272
    iget-object v0, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/input/gesture/MiuiGestureMonitor;->getInstance(Landroid/content/Context;)Lcom/miui/server/input/gesture/MiuiGestureMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mTouchPositionTracker:Lcom/android/server/display/TouchCoverProtectionHelper$TouchPositionTracker;

    .line 273
    invoke-virtual {v0, v1}, Lcom/miui/server/input/gesture/MiuiGestureMonitor;->unregisterPointerEventListener(Lcom/miui/server/input/gesture/MiuiGestureListener;)V

    .line 274
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mTouchTrackingEnabled:Z

    .line 275
    iget-object v1, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mTouchPositionTracker:Lcom/android/server/display/TouchCoverProtectionHelper$TouchPositionTracker;

    invoke-virtual {v1, v0}, Lcom/android/server/display/TouchCoverProtectionHelper$TouchPositionTracker;->setTouchingInArea(Z)V

    .line 277
    :cond_2c
    :goto_2c
    return-void
.end method

.method private updateBorderRect(Ljava/lang/Boolean;)V
    .registers 3
    .param p1, "folded"  # Ljava/lang/Boolean;

    .line 105
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 106
    iget-object v0, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mSecondDisplayBorderRect:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mCurrentBorderRect:Landroid/graphics/Rect;

    goto :goto_11

    .line 108
    :cond_d
    iget-object v0, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mBorderRect:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mCurrentBorderRect:Landroid/graphics/Rect;

    .line 110
    :goto_11
    return-void
.end method

.method private updateTouchCoverProtectionRect()V
    .registers 16

    .line 128
    iget-boolean v0, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mTouchAreaEnabled:Z

    if-nez v0, :cond_5

    .line 130
    return-void

    .line 132
    :cond_5
    iget-object v0, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    if-nez v0, :cond_a

    .line 134
    return-void

    .line 137
    :cond_a
    const/4 v0, 0x0

    .line 138
    .local v0, "physicalWidth":F
    const/4 v1, 0x0

    .line 140
    .local v1, "physicalHeight":F
    const/4 v2, 0x0

    .line 141
    .local v2, "logicalWidth":I
    const/4 v3, 0x0

    .line 142
    .local v3, "logicalHeight":I
    const/4 v4, 0x0

    .line 145
    .local v4, "rotation":I
    iget-object v5, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mSyncRoot:Ljava/lang/Object;

    monitor-enter v5

    .line 146
    :try_start_12
    iget-object v6, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    invoke-virtual {v6}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v6

    .line 147
    .local v6, "displayDevice":Lcom/android/server/display/DisplayDevice;
    if-nez v6, :cond_23

    .line 148
    sget-object v7, Lcom/android/server/display/TouchCoverProtectionHelper;->TAG:Ljava/lang/String;

    const-string v8, "current display device is not exist"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    monitor-exit v5

    return-void

    .line 152
    :cond_23
    invoke-virtual {v6}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v7

    .line 153
    .local v7, "displayDeviceInfo":Lcom/android/server/display/DisplayDeviceInfo;
    iget v8, v7, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    int-to-float v0, v8

    .line 154
    iget v8, v7, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    int-to-float v1, v8

    .line 157
    iget-object v8, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    invoke-virtual {v8}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v8

    .line 158
    .local v8, "displayInfo":Landroid/view/DisplayInfo;
    iget v9, v8, Landroid/view/DisplayInfo;->logicalWidth:I

    move v2, v9

    .line 159
    iget v9, v8, Landroid/view/DisplayInfo;->logicalHeight:I

    move v3, v9

    .line 160
    iget v9, v8, Landroid/view/DisplayInfo;->rotation:I

    move v4, v9

    .line 161
    .end local v6  # "displayDevice":Lcom/android/server/display/DisplayDevice;
    .end local v7  # "displayDeviceInfo":Lcom/android/server/display/DisplayDeviceInfo;
    .end local v8  # "displayInfo":Landroid/view/DisplayInfo;
    monitor-exit v5
    :try_end_3d
    .catchall {:try_start_12 .. :try_end_3d} :catchall_fb

    .line 163
    iget v5, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mLogicalWidth:I

    if-ne v5, v2, :cond_4a

    iget v5, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mLogicalHeight:I

    if-ne v5, v3, :cond_4a

    iget v5, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mRotation:I

    if-ne v4, v5, :cond_4a

    .line 165
    return-void

    .line 168
    :cond_4a
    iput v2, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mLogicalWidth:I

    .line 169
    iput v3, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mLogicalHeight:I

    .line 170
    iput v4, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mRotation:I

    .line 173
    const/4 v5, 0x0

    .line 174
    .local v5, "left":I
    const/4 v6, 0x0

    .line 175
    .local v6, "right":I
    const/4 v7, 0x0

    .line 176
    .local v7, "top":I
    const/4 v8, 0x0

    .line 177
    .local v8, "bottom":I
    const/4 v9, 0x3

    const/4 v10, 0x1

    if-ne v4, v10, :cond_71

    .line 178
    iget-object v11, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mCurrentBorderRect:Landroid/graphics/Rect;

    iget v5, v11, Landroid/graphics/Rect;->top:I

    .line 179
    iget-object v11, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mCurrentBorderRect:Landroid/graphics/Rect;

    iget v6, v11, Landroid/graphics/Rect;->bottom:I

    .line 180
    iget-object v11, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mCurrentBorderRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    int-to-float v11, v11

    sub-float v11, v0, v11

    float-to-int v7, v11

    .line 181
    iget-object v11, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mCurrentBorderRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    sub-float v11, v0, v11

    float-to-int v8, v11

    goto :goto_8b

    .line 182
    :cond_71
    if-ne v4, v9, :cond_8b

    .line 183
    iget-object v11, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mCurrentBorderRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    int-to-float v11, v11

    sub-float v11, v1, v11

    float-to-int v5, v11

    .line 184
    iget-object v11, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mCurrentBorderRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    sub-float v11, v1, v11

    float-to-int v6, v11

    .line 185
    iget-object v11, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mCurrentBorderRect:Landroid/graphics/Rect;

    iget v7, v11, Landroid/graphics/Rect;->left:I

    .line 186
    iget-object v11, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mCurrentBorderRect:Landroid/graphics/Rect;

    iget v8, v11, Landroid/graphics/Rect;->right:I

    .line 188
    :cond_8b
    :goto_8b
    iget-object v11, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mTouchCoverProtectionRect:Landroid/graphics/Rect;

    invoke-virtual {v11, v5, v7, v6, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 191
    if-eq v4, v10, :cond_96

    if-ne v4, v9, :cond_95

    goto :goto_96

    :cond_95
    const/4 v10, 0x0

    .line 192
    .local v10, "rotated":Z
    :cond_96
    :goto_96
    if-eqz v10, :cond_9a

    move v9, v3

    goto :goto_9b

    :cond_9a
    move v9, v2

    :goto_9b
    int-to-float v9, v9

    div-float/2addr v9, v0

    .line 193
    .local v9, "scale":F
    float-to-double v11, v9

    const-wide/high16 v13, 0x3ff0000000000000L  # 1.0

    cmpl-double v11, v11, v13

    if-eqz v11, :cond_a9

    .line 194
    iget-object v11, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mTouchCoverProtectionRect:Landroid/graphics/Rect;

    invoke-virtual {v11, v9}, Landroid/graphics/Rect;->scale(F)V

    .line 197
    :cond_a9
    sget-object v11, Lcom/android/server/display/TouchCoverProtectionHelper;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "updateTouchCoverProtectionRect, mLogicalWidth: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mLogicalWidth:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", mLogicalHeight: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mLogicalHeight:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", physicalWidth: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", physicalHeight: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", scale: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", mRotation:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mRotation:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    return-void

    .line 161
    .end local v5  # "left":I
    .end local v6  # "right":I
    .end local v7  # "top":I
    .end local v8  # "bottom":I
    .end local v9  # "scale":F
    .end local v10  # "rotated":Z
    :catchall_fb
    move-exception v6

    :try_start_fc
    monitor-exit v5
    :try_end_fd
    .catchall {:try_start_fc .. :try_end_fd} :catchall_fb

    throw v6
.end method


# virtual methods
.method protected configure(Z)V
    .registers 3
    .param p1, "enable"  # Z

    .line 93
    iget-boolean v0, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mTouchAreaEnabled:Z

    if-eqz v0, :cond_a

    .line 94
    invoke-direct {p0, p1}, Lcom/android/server/display/TouchCoverProtectionHelper;->setTouchTrackingEnabled(Z)V

    .line 95
    invoke-direct {p0, p1}, Lcom/android/server/display/TouchCoverProtectionHelper;->setDisplayListenerEnabled(Z)V

    .line 97
    :cond_a
    return-void
.end method

.method protected dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 314
    sget-boolean v0, Lcom/android/server/display/DisplayDebugConfig;->DEBUG_ABC:Z

    sput-boolean v0, Lcom/android/server/display/TouchCoverProtectionHelper;->DEBUG:Z

    .line 315
    const-string v0, "Touch cover protection state:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTouchAreaEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mTouchAreaEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isTouchCoverProtectionActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mTouchPositionTracker:Lcom/android/server/display/TouchCoverProtectionHelper$TouchPositionTracker;

    invoke-virtual {v1}, Lcom/android/server/display/TouchCoverProtectionHelper$TouchPositionTracker;->isTouchingInArea()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBorderLeft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mCurrentBorderRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBorderTop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mCurrentBorderRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBorderRight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mCurrentBorderRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBorderBottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mCurrentBorderRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTouchCoverProtectionRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mTouchCoverProtectionRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTouchEventDebounce="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mTouchEventDebounce:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 324
    return-void
.end method

.method protected isGameSceneWithinTouchTime()Z
    .registers 7

    .line 227
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 228
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mTouchPositionTracker:Lcom/android/server/display/TouchCoverProtectionHelper$TouchPositionTracker;

    invoke-static {v2}, Lcom/android/server/display/TouchCoverProtectionHelper$TouchPositionTracker;->-$$Nest$fgetmLastObservedTouchTime(Lcom/android/server/display/TouchCoverProtectionHelper$TouchPositionTracker;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/32 v4, 0x2bf20

    cmp-long v2, v2, v4

    if-gtz v2, :cond_20

    .line 229
    sget-boolean v2, Lcom/android/server/display/TouchCoverProtectionHelper;->DEBUG:Z

    if-eqz v2, :cond_1e

    .line 230
    sget-object v2, Lcom/android/server/display/TouchCoverProtectionHelper;->TAG:Ljava/lang/String;

    const-string v3, "Time of light sensor event is within given time of touch event in game scene."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_1e
    const/4 v2, 0x1

    return v2

    .line 234
    :cond_20
    const/4 v2, 0x0

    return v2
.end method

.method protected isTouchCoverProtectionActive()Z
    .registers 9

    .line 209
    iget-object v0, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mTouchPositionTracker:Lcom/android/server/display/TouchCoverProtectionHelper$TouchPositionTracker;

    invoke-virtual {v0}, Lcom/android/server/display/TouchCoverProtectionHelper$TouchPositionTracker;->isTouchingInArea()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 210
    return v1

    .line 212
    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 213
    .local v2, "now":J
    iget-object v0, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mTouchPositionTracker:Lcom/android/server/display/TouchCoverProtectionHelper$TouchPositionTracker;

    invoke-static {v0}, Lcom/android/server/display/TouchCoverProtectionHelper$TouchPositionTracker;->-$$Nest$fgetmLastObservedTouchTime(Lcom/android/server/display/TouchCoverProtectionHelper$TouchPositionTracker;)J

    move-result-wide v4

    sub-long v4, v2, v4

    iget v0, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mTouchEventDebounce:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-gez v0, :cond_2b

    .line 214
    sget-boolean v0, Lcom/android/server/display/TouchCoverProtectionHelper;->DEBUG:Z

    if-eqz v0, :cond_2a

    .line 215
    sget-object v0, Lcom/android/server/display/TouchCoverProtectionHelper;->TAG:Ljava/lang/String;

    const-string v4, "Time of light sensor event is within given time of touch event."

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_2a
    return v1

    .line 219
    :cond_2b
    const/4 v0, 0x0

    return v0
.end method

.method public setUpLogicalDisplay(Lcom/android/server/display/LogicalDisplay;)V
    .registers 2
    .param p1, "logicalDisplay"  # Lcom/android/server/display/LogicalDisplay;

    .line 100
    iput-object p1, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    .line 101
    invoke-direct {p0}, Lcom/android/server/display/TouchCoverProtectionHelper;->updateTouchCoverProtectionRect()V

    .line 102
    return-void
.end method

.method protected showTouchCoverProtectionRect(Z)V
    .registers 4
    .param p1, "isShow"  # Z

    .line 306
    if-eqz p1, :cond_d

    .line 307
    iget-object v0, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/TouchCoverProtectionHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/display/TouchCoverProtectionHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/TouchCoverProtectionHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_17

    .line 309
    :cond_d
    iget-object v0, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/TouchCoverProtectionHelper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/display/TouchCoverProtectionHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/display/TouchCoverProtectionHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 311
    :goto_17
    return-void
.end method

.method protected stop()V
    .registers 3

    .line 116
    iget-boolean v0, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mTouchAreaEnabled:Z

    if-eqz v0, :cond_e

    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/display/TouchCoverProtectionHelper;->setTouchTrackingEnabled(Z)V

    .line 118
    invoke-direct {p0, v0}, Lcom/android/server/display/TouchCoverProtectionHelper;->setDisplayListenerEnabled(Z)V

    .line 119
    invoke-virtual {p0, v0}, Lcom/android/server/display/TouchCoverProtectionHelper;->showTouchCoverProtectionRect(Z)V

    .line 121
    :cond_e
    iget-object v0, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    iget-object v1, p0, Lcom/android/server/display/TouchCoverProtectionHelper;->mFoldStateListener:Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    invoke-virtual {v0, v1}, Landroid/hardware/devicestate/DeviceStateManager;->unregisterCallback(Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    .line 122
    return-void
.end method
