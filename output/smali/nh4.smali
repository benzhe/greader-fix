.class public final enum Lnh4;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ltk4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnh4;",
        ">;",
        "Ltk4;"
    }
.end annotation


# static fields
.field public static final enum A:Lnh4;

.field public static final enum B:Lnh4;

.field public static final enum C:Lnh4;

.field public static final enum D:Lnh4;

.field public static final enum E:Lnh4;

.field public static final enum F:Lnh4;

.field public static final enum G:Lnh4;

.field public static final synthetic H:[Lnh4;

.field public static final enum f:Lnh4;

.field public static final enum g:Lnh4;

.field public static final enum h:Lnh4;

.field public static final enum i:Lnh4;

.field public static final enum j:Lnh4;

.field public static final enum k:Lnh4;

.field public static final enum l:Lnh4;

.field public static final enum m:Lnh4;

.field public static final enum n:Lnh4;

.field public static final enum o:Lnh4;

.field public static final enum p:Lnh4;

.field public static final enum q:Lnh4;

.field public static final enum r:Lnh4;

.field public static final enum s:Lnh4;

.field public static final enum t:Lnh4;

.field public static final enum u:Lnh4;

.field public static final enum v:Lnh4;

.field public static final enum w:Lnh4;

.field public static final enum x:Lnh4;

.field public static final enum y:Lnh4;

.field public static final enum z:Lnh4;


# instance fields
.field public final e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 31

    .line 1
    new-instance v0, Lnh4;

    const-string v1, "NO_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lnh4;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnh4;->f:Lnh4;

    .line 2
    new-instance v1, Lnh4;

    const-string v3, "INCOMPATIBLE_INPUT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lnh4;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lnh4;->g:Lnh4;

    .line 3
    new-instance v3, Lnh4;

    const-string v5, "INCOMPATIBLE_OUTPUT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lnh4;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lnh4;->h:Lnh4;

    .line 4
    new-instance v5, Lnh4;

    const-string v7, "INCOMPATIBLE_TFLITE_VERSION"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lnh4;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lnh4;->i:Lnh4;

    .line 5
    new-instance v7, Lnh4;

    const-string v9, "MISSING_OP"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lnh4;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lnh4;->j:Lnh4;

    .line 6
    new-instance v9, Lnh4;

    const-string v11, "DATA_TYPE_ERROR"

    const/4 v12, 0x5

    const/4 v13, 0x6

    invoke-direct {v9, v11, v12, v13}, Lnh4;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lnh4;->k:Lnh4;

    .line 7
    new-instance v11, Lnh4;

    const-string v14, "TFLITE_INTERNAL_ERROR"

    const/4 v15, 0x7

    invoke-direct {v11, v14, v13, v15}, Lnh4;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lnh4;->l:Lnh4;

    .line 8
    new-instance v14, Lnh4;

    const-string v13, "TFLITE_UNKNOWN_ERROR"

    const/16 v10, 0x8

    invoke-direct {v14, v13, v15, v10}, Lnh4;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lnh4;->m:Lnh4;

    .line 9
    new-instance v13, Lnh4;

    const-string v15, "MEDIAPIPE_ERROR"

    const/16 v8, 0x9

    invoke-direct {v13, v15, v10, v8}, Lnh4;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lnh4;->n:Lnh4;

    .line 10
    new-instance v15, Lnh4;

    const-string v10, "TIME_OUT_FETCHING_MODEL_METADATA"

    invoke-direct {v15, v10, v8, v12}, Lnh4;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lnh4;->o:Lnh4;

    .line 11
    new-instance v10, Lnh4;

    const-string v8, "MODEL_NOT_DOWNLOADED"

    const/16 v12, 0xa

    const/16 v6, 0x64

    invoke-direct {v10, v8, v12, v6}, Lnh4;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lnh4;->p:Lnh4;

    .line 12
    new-instance v6, Lnh4;

    const-string v8, "URI_EXPIRED"

    const/16 v12, 0xb

    const/16 v4, 0x65

    invoke-direct {v6, v8, v12, v4}, Lnh4;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lnh4;->q:Lnh4;

    .line 13
    new-instance v4, Lnh4;

    const-string v8, "NO_NETWORK_CONNECTION"

    const/16 v12, 0xc

    const/16 v2, 0x66

    invoke-direct {v4, v8, v12, v2}, Lnh4;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lnh4;->r:Lnh4;

    .line 14
    new-instance v2, Lnh4;

    const-string v8, "METERED_NETWORK"

    const/16 v12, 0xd

    move-object/from16 v16, v4

    const/16 v4, 0x67

    invoke-direct {v2, v8, v12, v4}, Lnh4;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lnh4;->s:Lnh4;

    .line 15
    new-instance v4, Lnh4;

    const-string v8, "DOWNLOAD_FAILED"

    const/16 v12, 0xe

    move-object/from16 v17, v2

    const/16 v2, 0x68

    invoke-direct {v4, v8, v12, v2}, Lnh4;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lnh4;->t:Lnh4;

    .line 16
    new-instance v2, Lnh4;

    const-string v8, "MODEL_INFO_DOWNLOAD_UNSUCCESSFUL_HTTP_STATUS"

    const/16 v12, 0xf

    move-object/from16 v18, v4

    const/16 v4, 0x69

    invoke-direct {v2, v8, v12, v4}, Lnh4;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lnh4;->u:Lnh4;

    .line 17
    new-instance v4, Lnh4;

    const-string v8, "MODEL_INFO_DOWNLOAD_NO_HASH"

    const/16 v12, 0x10

    move-object/from16 v19, v2

    const/16 v2, 0x6a

    invoke-direct {v4, v8, v12, v2}, Lnh4;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lnh4;->v:Lnh4;

    .line 18
    new-instance v2, Lnh4;

    const-string v8, "MODEL_INFO_DOWNLOAD_CONNECTION_FAILED"

    const/16 v12, 0x11

    move-object/from16 v20, v4

    const/16 v4, 0x6b

    invoke-direct {v2, v8, v12, v4}, Lnh4;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lnh4;->w:Lnh4;

    .line 19
    new-instance v4, Lnh4;

    const-string v8, "NO_VALID_MODEL"

    const/16 v12, 0x12

    move-object/from16 v21, v2

    const/16 v2, 0x6c

    invoke-direct {v4, v8, v12, v2}, Lnh4;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lnh4;->x:Lnh4;

    .line 20
    new-instance v2, Lnh4;

    const-string v8, "LOCAL_MODEL_INVALID"

    const/16 v12, 0x13

    move-object/from16 v22, v4

    const/16 v4, 0x6d

    invoke-direct {v2, v8, v12, v4}, Lnh4;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lnh4;->y:Lnh4;

    .line 21
    new-instance v4, Lnh4;

    const-string v8, "REMOTE_MODEL_INVALID"

    const/16 v12, 0x14

    move-object/from16 v23, v2

    const/16 v2, 0x6e

    invoke-direct {v4, v8, v12, v2}, Lnh4;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lnh4;->z:Lnh4;

    .line 22
    new-instance v2, Lnh4;

    const-string v8, "REMOTE_MODEL_LOADER_ERROR"

    const/16 v12, 0x15

    move-object/from16 v24, v4

    const/16 v4, 0x6f

    invoke-direct {v2, v8, v12, v4}, Lnh4;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lnh4;->A:Lnh4;

    .line 23
    new-instance v4, Lnh4;

    const-string v8, "REMOTE_MODEL_LOADER_LOADS_NO_MODEL"

    const/16 v12, 0x16

    move-object/from16 v25, v2

    const/16 v2, 0x70

    invoke-direct {v4, v8, v12, v2}, Lnh4;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lnh4;->B:Lnh4;

    .line 24
    new-instance v2, Lnh4;

    const-string v8, "SMART_REPLY_LANG_ID_DETECTAION_FAILURE"

    const/16 v12, 0x17

    move-object/from16 v26, v4

    const/16 v4, 0x71

    invoke-direct {v2, v8, v12, v4}, Lnh4;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lnh4;->C:Lnh4;

    .line 25
    new-instance v4, Lnh4;

    const-string v8, "MODEL_NOT_REGISTERED"

    const/16 v12, 0x18

    move-object/from16 v27, v2

    const/16 v2, 0x72

    invoke-direct {v4, v8, v12, v2}, Lnh4;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lnh4;->D:Lnh4;

    .line 26
    new-instance v2, Lnh4;

    const-string v8, "MODEL_TYPE_MISUSE"

    const/16 v12, 0x19

    move-object/from16 v28, v4

    const/16 v4, 0x73

    invoke-direct {v2, v8, v12, v4}, Lnh4;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lnh4;->E:Lnh4;

    .line 27
    new-instance v4, Lnh4;

    const-string v8, "MODEL_HASH_MISMATCH"

    const/16 v12, 0x1a

    move-object/from16 v29, v2

    const/16 v2, 0x74

    invoke-direct {v4, v8, v12, v2}, Lnh4;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lnh4;->F:Lnh4;

    .line 28
    new-instance v2, Lnh4;

    const-string v8, "UNKNOWN_ERROR"

    const/16 v12, 0x1b

    move-object/from16 v30, v4

    const/16 v4, 0x270f

    invoke-direct {v2, v8, v12, v4}, Lnh4;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lnh4;->G:Lnh4;

    const/16 v4, 0x1c

    new-array v4, v4, [Lnh4;

    const/4 v8, 0x0

    aput-object v0, v4, v8

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v14, v4, v0

    const/16 v0, 0x8

    aput-object v13, v4, v0

    const/16 v0, 0x9

    aput-object v15, v4, v0

    const/16 v0, 0xa

    aput-object v10, v4, v0

    const/16 v0, 0xb

    aput-object v6, v4, v0

    const/16 v0, 0xc

    aput-object v16, v4, v0

    const/16 v0, 0xd

    aput-object v17, v4, v0

    const/16 v0, 0xe

    aput-object v18, v4, v0

    const/16 v0, 0xf

    aput-object v19, v4, v0

    const/16 v0, 0x10

    aput-object v20, v4, v0

    const/16 v0, 0x11

    aput-object v21, v4, v0

    const/16 v0, 0x12

    aput-object v22, v4, v0

    const/16 v0, 0x13

    aput-object v23, v4, v0

    const/16 v0, 0x14

    aput-object v24, v4, v0

    const/16 v0, 0x15

    aput-object v25, v4, v0

    const/16 v0, 0x16

    aput-object v26, v4, v0

    const/16 v0, 0x17

    aput-object v27, v4, v0

    const/16 v0, 0x18

    aput-object v28, v4, v0

    const/16 v0, 0x19

    aput-object v29, v4, v0

    const/16 v0, 0x1a

    aput-object v30, v4, v0

    const/16 v0, 0x1b

    aput-object v2, v4, v0

    .line 29
    sput-object v4, Lnh4;->H:[Lnh4;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lnh4;->e:I

    return-void
.end method

.method public static values()[Lnh4;
    .locals 1

    .line 1
    sget-object v0, Lnh4;->H:[Lnh4;

    invoke-virtual {v0}, [Lnh4;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnh4;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, Lnh4;->e:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    const-class v1, Lnh4;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " number="

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget v1, p0, Lnh4;->e:I

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
