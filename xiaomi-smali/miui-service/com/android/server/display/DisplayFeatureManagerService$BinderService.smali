# classes.dex

.class final Lcom/android/server/display/DisplayFeatureManagerService$BinderService;
.super Lmiui/hardware/display/IDisplayFeatureManager$Stub;
.source "DisplayFeatureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayFeatureManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayFeatureManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/display/DisplayFeatureManagerService;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 2036
    iput-object p1, p0, Lcom/android/server/display/DisplayFeatureManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-direct {p0}, Lmiui/hardware/display/IDisplayFeatureManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/DisplayFeatureManagerService;Lcom/android/server/display/DisplayFeatureManagerService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayFeatureManagerService$BinderService;-><init>(Lcom/android/server/display/DisplayFeatureManagerService;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;

    .line 2149
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$fgetmContext(Lcom/android/server/display/DisplayFeatureManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "DisplayFeatureManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 2151
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2153
    .local v0, "token":J
    :try_start_13
    iget-object v2, p0, Lcom/android/server/display/DisplayFeatureManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v2, p2}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$mdumpInternal(Lcom/android/server/display/DisplayFeatureManagerService;Ljava/io/PrintWriter;)V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_1d

    .line 2155
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2156
    nop

    .line 2157
    return-void

    .line 2155
    :catchall_1d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2156
    throw v2
.end method

.method public getReadAppList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2130
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$misCallingSystemApp(Lcom/android/server/display/DisplayFeatureManagerService;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2133
    invoke-static {}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$sfgetIS_GREEN_MOUNTAIN_EYECARE_V3()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$fgetmEffectScopeManager(Lcom/android/server/display/DisplayFeatureManagerService;)Lcom/android/server/display/eyecare/EffectScopeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/eyecare/EffectScopeManager;->getReadAppList()Ljava/util/List;

    move-result-object v0

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    return-object v0

    .line 2131
    :cond_1b
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires permission to getReadAppList."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerDFCallback(Lmiui/hardware/display/IDisplayFeatureCallback;I)V
    .registers 7
    .param p1, "callback"  # Lmiui/hardware/display/IDisplayFeatureCallback;
    .param p2, "callingId"  # I

    .line 2044
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$misCallingSystemApp(Lcom/android/server/display/DisplayFeatureManagerService;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2048
    if-nez p1, :cond_b

    .line 2049
    return-void

    .line 2051
    :cond_b
    invoke-interface {p1}, Lmiui/hardware/display/IDisplayFeatureCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2052
    .local v0, "token":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$msetDeathCallbackLocked(Lcom/android/server/display/DisplayFeatureManagerService;Landroid/os/IBinder;IZ)V

    .line 2053
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v1, p1, p2}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$mregisterDFCallbackInternal(Lcom/android/server/display/DisplayFeatureManagerService;Lmiui/hardware/display/IDisplayFeatureCallback;I)V

    .line 2054
    return-void

    .line 2045
    .end local v0  # "token":Landroid/os/IBinder;
    :cond_1c
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires permission to registerDFCallback."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerReadAppOperationListener(Lmiui/hardware/display/IReadAppOperationListener;II)V
    .registers 7
    .param p1, "listener"  # Lmiui/hardware/display/IReadAppOperationListener;
    .param p2, "userId"  # I
    .param p3, "userPid"  # I

    .line 2075
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$misCallingSystemApp(Lcom/android/server/display/DisplayFeatureManagerService;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 2079
    const-string v0, "DisplayFeatureManagerService"

    if-nez p1, :cond_13

    .line 2080
    const-string/jumbo v1, "registerReadAppOperationListener: listener is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2081
    return-void

    .line 2084
    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerReadAppOperationListener: userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", userPid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2085
    invoke-static {}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$sfgetIS_GREEN_MOUNTAIN_EYECARE_V3()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 2086
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$fgetmNotifyPopUpManager(Lcom/android/server/display/DisplayFeatureManagerService;)Lcom/android/server/display/eyecare/NotifyPopUpManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/display/eyecare/NotifyPopUpManager;->registerReadAppOperationListener(Lmiui/hardware/display/IReadAppOperationListener;II)V

    .line 2088
    :cond_43
    return-void

    .line 2076
    :cond_44
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires permission to registerReadAppOperationListener."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEyeCareSwitch(Z)V
    .registers 7
    .param p1, "eyeCareSwitch"  # Z

    .line 2092
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$misCallingSystemApp(Lcom/android/server/display/DisplayFeatureManagerService;)Z

    move-result v0

    if-eqz v0, :cond_c3

    .line 2096
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setEyeCareSwitch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",v3 ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$sfgetIS_GREEN_MOUNTAIN_EYECARE_V3()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayFeatureManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2097
    invoke-static {}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$sfgetIS_GREEN_MOUNTAIN_EYECARE_V3()Z

    move-result v0

    if-nez v0, :cond_36

    .line 2098
    return-void

    .line 2100
    :cond_36
    const/4 v0, -0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_a8

    .line 2101
    iget-object v2, p0, Lcom/android/server/display/DisplayFeatureManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v2, v1}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$fputmIsPopUpEnabled(Lcom/android/server/display/DisplayFeatureManagerService;Z)V

    .line 2102
    iget-object v2, p0, Lcom/android/server/display/DisplayFeatureManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$fgetmContext(Lcom/android/server/display/DisplayFeatureManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screen_paper_mode_enabled"

    invoke-static {v2, v3, v1, v0}, Landroid/provider/MiuiSettings$System;->putBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 2105
    iget-object v2, p0, Lcom/android/server/display/DisplayFeatureManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$fgetmContext(Lcom/android/server/display/DisplayFeatureManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const-string/jumbo v4, "notification_show_count"

    invoke-static {v2, v4, v3, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    sub-int/2addr v2, v1

    .line 2107
    .local v2, "count":I
    iget-object v3, p0, Lcom/android/server/display/DisplayFeatureManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v3}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$fgetmContext(Lcom/android/server/display/DisplayFeatureManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v4, v2, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2111
    iget-object v3, p0, Lcom/android/server/display/DisplayFeatureManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v3}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$fgetmEyeCareIsNotFirstOpen(Lcom/android/server/display/DisplayFeatureManagerService;)Z

    move-result v3

    if-nez v3, :cond_a7

    .line 2112
    iget-object v3, p0, Lcom/android/server/display/DisplayFeatureManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v3, v1}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$fputmEyeCareIsEnteredEffect(Lcom/android/server/display/DisplayFeatureManagerService;Z)V

    .line 2113
    iget-object v3, p0, Lcom/android/server/display/DisplayFeatureManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v3}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$fgetmContext(Lcom/android/server/display/DisplayFeatureManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "read_apps_only"

    invoke-static {v3, v4, v1, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2116
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$fgetmContext(Lcom/android/server/display/DisplayFeatureManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$sfgetEYECARE_MAX_LEVEL()I

    move-result v3

    invoke-static {}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$sfgetEYECARE_MIN_LEVEL()I

    move-result v4

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    const-string/jumbo v4, "screen_texture_eyecare_level"

    invoke-static {v1, v4, v3, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2120
    .end local v2  # "count":I
    :cond_a7
    goto :goto_c2

    .line 2121
    :cond_a8
    iget-object v2, p0, Lcom/android/server/display/DisplayFeatureManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v2}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$fgetmContext(Lcom/android/server/display/DisplayFeatureManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "notification_show_refuse"

    invoke-static {v2, v3, v1, v0}, Landroid/provider/MiuiSettings$System;->putBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 2123
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$mupdateShowEyeCareNotifyEnable(Lcom/android/server/display/DisplayFeatureManagerService;)V

    .line 2124
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$mhandleShowEyeCareNotifyChange(Lcom/android/server/display/DisplayFeatureManagerService;)V

    .line 2126
    :goto_c2
    return-void

    .line 2093
    :cond_c3
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires permission to setEyeCareSwitch."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setScreenEffect(IIILandroid/os/IBinder;)V
    .registers 8
    .param p1, "mode"  # I
    .param p2, "value"  # I
    .param p3, "cookie"  # I
    .param p4, "token"  # Landroid/os/IBinder;

    .line 2067
    if-eqz p4, :cond_9

    .line 2068
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p4, v1, v2}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$msetDeathCallbackLocked(Lcom/android/server/display/DisplayFeatureManagerService;Landroid/os/IBinder;IZ)V

    .line 2070
    :cond_9
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$msetScreenEffectInternal(Lcom/android/server/display/DisplayFeatureManagerService;III)V

    .line 2071
    return-void
.end method

.method public unregisterDFCallback(I)V
    .registers 4
    .param p1, "callingId"  # I

    .line 2058
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$misCallingSystemApp(Lcom/android/server/display/DisplayFeatureManagerService;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2062
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v0, p1}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$munregisterDFCallbackInternal(Lcom/android/server/display/DisplayFeatureManagerService;I)V

    .line 2063
    return-void

    .line 2059
    :cond_e
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires permission to unregisterDFCallback."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterReadAppOperationListener(Lmiui/hardware/display/IReadAppOperationListener;I)V
    .registers 5
    .param p1, "listener"  # Lmiui/hardware/display/IReadAppOperationListener;
    .param p2, "userId"  # I

    .line 2138
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$misCallingSystemApp(Lcom/android/server/display/DisplayFeatureManagerService;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2142
    invoke-static {}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$sfgetIS_GREEN_MOUNTAIN_EYECARE_V3()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2143
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManagerService$BinderService;->this$0:Lcom/android/server/display/DisplayFeatureManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayFeatureManagerService;->-$$Nest$fgetmNotifyPopUpManager(Lcom/android/server/display/DisplayFeatureManagerService;)Lcom/android/server/display/eyecare/NotifyPopUpManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/eyecare/NotifyPopUpManager;->unregisterReadAppOperationListener(Lmiui/hardware/display/IReadAppOperationListener;I)V

    .line 2145
    :cond_17
    return-void

    .line 2139
    :cond_18
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires permission to unregisterReadAppOperationListener."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
