.class public abstract Lmiui/hardware/display/hidl/IDisplayFeatureCallback$Stub;
.super Landroid/os/HwBinder;
.source "IDisplayFeatureCallback.java"

# interfaces
.implements Lmiui/hardware/display/hidl/IDisplayFeatureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/hardware/display/hidl/IDisplayFeatureCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 17
    return-object p0
.end method

.method public blacklist debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "fd"  # Landroid/os/NativeHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 29
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final blacklist getDebugInfo()Lmiui/android/internal/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 64
    new-instance v0, Lmiui/android/internal/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Lmiui/android/internal/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 65
    .local v0, "info":Lmiui/android/internal/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Lmiui/android/internal/hidl/base/V1_0/DebugInfo;->pid:I

    .line 66
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lmiui/android/internal/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 67
    const/4 v1, 0x0

    iput v1, v0, Lmiui/android/internal/hidl/base/V1_0/DebugInfo;->arch:I

    .line 68
    return-object v0
.end method

.method public final blacklist getHashChain()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    new-array v2, v1, [B

    fill-array-data v2, :array_1a

    new-array v1, v1, [B

    fill-array-data v1, :array_2e

    filled-new-array {v2, v1}, [[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :array_1a
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_2e
    .array-data 1
        -0x43t
        -0x26t
        -0x4at
        0x18t
        0x4dt
        0x7at
        0x34t
        0x6dt
        -0x5at
        -0x60t
        0x7dt
        -0x40t
        -0x7et
        -0x74t
        -0xft
        -0x66t
        0x69t
        0x6ft
        0x4ct
        -0x56t
        0x36t
        0x11t
        -0x3bt
        0x1ft
        0x2et
        0x14t
        0x56t
        0x5at
        0x14t
        -0x4ct
        0xft
        -0x27t
    .end array-data
.end method

.method public final blacklist interfaceChain()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    const-string/jumbo v1, "vendor.xiaomi.hardware.displayfeature@1.0::IDisplayFeatureCallback"

    const-string v2, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final blacklist interfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 34
    const-string/jumbo v0, "vendor.xiaomi.hardware.displayfeature@1.0::IDisplayFeatureCallback"

    return-object v0
.end method

.method public final whitelist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"  # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"  # J

    .line 53
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist notifySyspropsChanged()V
    .registers 1

    .line 73
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 74
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 15
    .param p1, "_hidl_code"  # I
    .param p2, "_hidl_request"  # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"  # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    const-string v0, "android.hidl.base@1.0::IBase"

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_192

    goto/16 :goto_190

    .line 275
    :sswitch_b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_10

    move v2, v3

    .line 276
    .local v2, "_hidl_is_oneway":Z
    :cond_10
    if-eqz v2, :cond_190

    .line 277
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 278
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 279
    goto/16 :goto_190

    .line 262
    .end local v2  # "_hidl_is_oneway":Z
    :sswitch_1a
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1f

    move v2, v3

    .line 263
    .restart local v2  # "_hidl_is_oneway":Z
    :cond_1f
    if-eq v2, v3, :cond_29

    .line 264
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 265
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 266
    goto/16 :goto_190

    .line 267
    :cond_29
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p0}, Lmiui/hardware/display/hidl/IDisplayFeatureCallback$Stub;->notifySyspropsChanged()V

    .line 270
    goto/16 :goto_190

    .line 246
    .end local v2  # "_hidl_is_oneway":Z
    :sswitch_31
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_36

    goto :goto_37

    :cond_36
    move v3, v2

    .line 247
    .local v3, "_hidl_is_oneway":Z
    :goto_37
    if-eqz v3, :cond_41

    .line 248
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 249
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 250
    goto/16 :goto_190

    .line 251
    :cond_41
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0}, Lmiui/hardware/display/hidl/IDisplayFeatureCallback$Stub;->getDebugInfo()Lmiui/android/internal/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 254
    .local v0, "_hidl_out_info":Lmiui/android/internal/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 255
    invoke-virtual {v0, p3}, Lmiui/android/internal/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 256
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 257
    goto/16 :goto_190

    .line 231
    .end local v0  # "_hidl_out_info":Lmiui/android/internal/hidl/base/V1_0/DebugInfo;
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_53
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_58

    goto :goto_59

    :cond_58
    move v3, v2

    .line 232
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_59
    if-eqz v3, :cond_63

    .line 233
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 234
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 235
    goto/16 :goto_190

    .line 236
    :cond_63
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Lmiui/hardware/display/hidl/IDisplayFeatureCallback$Stub;->ping()V

    .line 239
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 240
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 241
    goto/16 :goto_190

    .line 221
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_71
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_76

    move v2, v3

    .line 222
    .restart local v2  # "_hidl_is_oneway":Z
    :cond_76
    if-eqz v2, :cond_190

    .line 223
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 224
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 225
    goto/16 :goto_190

    .line 208
    .end local v2  # "_hidl_is_oneway":Z
    :sswitch_80
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_85

    move v2, v3

    .line 209
    .restart local v2  # "_hidl_is_oneway":Z
    :cond_85
    if-eq v2, v3, :cond_8f

    .line 210
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 211
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 212
    goto/16 :goto_190

    .line 213
    :cond_8f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0}, Lmiui/hardware/display/hidl/IDisplayFeatureCallback$Stub;->setHALInstrumentation()V

    .line 216
    goto/16 :goto_190

    .line 175
    .end local v2  # "_hidl_is_oneway":Z
    :sswitch_97
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_9c

    goto :goto_9d

    :cond_9c
    move v3, v2

    .line 176
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_9d
    if-eqz v3, :cond_a7

    .line 177
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 178
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 179
    goto/16 :goto_190

    .line 180
    :cond_a7
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lmiui/hardware/display/hidl/IDisplayFeatureCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 183
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 185
    new-instance v1, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v1, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 187
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 188
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v1, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 189
    const-wide/16 v5, 0xc

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 190
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v5, v4, 0x20

    invoke-direct {v2, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 191
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v5, 0x0

    .local v5, "_hidl_index_0":I
    :goto_ce
    if-ge v5, v4, :cond_e0

    .line 193
    mul-int/lit8 v6, v5, 0x20

    int-to-long v6, v6

    .line 194
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-virtual {v2, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 195
    nop

    .line 191
    .end local v6  # "_hidl_array_offset_1":J
    add-int/lit8 v5, v5, 0x1

    goto :goto_ce

    .line 198
    .end local v5  # "_hidl_index_0":I
    :cond_e0
    const-wide/16 v5, 0x0

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 200
    .end local v2  # "childBlob":Landroid/os/HwBlob;
    .end local v4  # "_hidl_vec_size":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 202
    .end local v1  # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 203
    goto/16 :goto_190

    .line 159
    .end local v0  # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_ed
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_f2

    goto :goto_f3

    :cond_f2
    move v3, v2

    .line 160
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_f3
    if-eqz v3, :cond_fd

    .line 161
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 162
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 163
    goto/16 :goto_190

    .line 164
    :cond_fd
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Lmiui/hardware/display/hidl/IDisplayFeatureCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 168
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 170
    goto/16 :goto_190

    .line 145
    .end local v0  # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_10f
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_114

    goto :goto_115

    :cond_114
    move v3, v2

    .line 146
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_115
    if-eqz v3, :cond_11f

    .line 147
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 148
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 149
    goto/16 :goto_190

    .line 150
    :cond_11f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 153
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 154
    goto :goto_190

    .line 129
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_129
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_12e

    goto :goto_12f

    :cond_12e
    move v3, v2

    .line 130
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_12f
    if-eqz v3, :cond_138

    .line 131
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 132
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 133
    goto :goto_190

    .line 134
    :cond_138
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lmiui/hardware/display/hidl/IDisplayFeatureCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 137
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 138
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 139
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 140
    goto :goto_190

    .line 105
    .end local v0  # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_149
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_14e

    move v2, v3

    .line 106
    .local v2, "_hidl_is_oneway":Z
    :cond_14e
    if-eq v2, v3, :cond_157

    .line 107
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 108
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 109
    goto :goto_190

    .line 110
    :cond_157
    const-string/jumbo v0, "vendor.xiaomi.hardware.displayfeature@1.0::IDisplayFeatureCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 113
    .local v0, "caseId":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 115
    .local v1, "value":I
    const/4 v3, 0x0

    .line 116
    .local v3, "red":F
    const/4 v4, 0x0

    .line 117
    .local v4, "green":F
    const/4 v5, 0x0

    .line 118
    .local v5, "blue":F
    const/16 v6, 0x4e20

    if-ne v0, v6, :cond_178

    .line 119
    invoke-virtual {p2}, Landroid/os/HwParcel;->readFloat()F

    move-result v3

    .line 120
    invoke-virtual {p2}, Landroid/os/HwParcel;->readFloat()F

    move-result v4

    .line 121
    invoke-virtual {p2}, Landroid/os/HwParcel;->readFloat()F

    move-result v5

    .line 123
    :cond_178
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    filled-new-array {v6, v7, v8, v9}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v0, v6}, Lmiui/hardware/display/hidl/IDisplayFeatureCallback$Stub;->displayfeatureInfoChanged(I[Ljava/lang/Object;)V

    .line 124
    nop

    .line 284
    .end local v0  # "caseId":I
    .end local v1  # "value":I
    .end local v2  # "_hidl_is_oneway":Z
    .end local v3  # "red":F
    .end local v4  # "green":F
    .end local v5  # "blue":F
    :cond_190
    :goto_190
    return-void

    nop

    :sswitch_data_192
    .sparse-switch
        0x1 -> :sswitch_149
        0xf43484e -> :sswitch_129
        0xf444247 -> :sswitch_10f
        0xf445343 -> :sswitch_ed
        0xf485348 -> :sswitch_97
        0xf494e54 -> :sswitch_80
        0xf4c5444 -> :sswitch_71
        0xf504e47 -> :sswitch_53
        0xf524546 -> :sswitch_31
        0xf535953 -> :sswitch_1a
        0xf555444 -> :sswitch_b
    .end sparse-switch
.end method

.method public final blacklist ping()V
    .registers 1

    .line 58
    return-void
.end method

.method public whitelist queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"  # Ljava/lang/String;

    .line 84
    const-string/jumbo v0, "vendor.xiaomi.hardware.displayfeature@1.0::IDisplayFeatureCallback"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 85
    return-object p0

    .line 87
    :cond_a
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist registerAsService(Ljava/lang/String;)V
    .registers 2
    .param p1, "serviceName"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 91
    invoke-virtual {p0, p1}, Lmiui/hardware/display/hidl/IDisplayFeatureCallback$Stub;->registerService(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public final blacklist setHALInstrumentation()V
    .registers 1

    .line 49
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lmiui/hardware/display/hidl/IDisplayFeatureCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@Stub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .registers 3
    .param p1, "recipient"  # Landroid/os/IHwBinder$DeathRecipient;

    .line 78
    const/4 v0, 0x1

    return v0
.end method
