.class public final enum Lka7;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lka7;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum f:Lka7;

.field public static final enum g:Lka7;

.field public static final enum h:Lka7;

.field public static final enum i:Lka7;

.field public static final enum j:Lka7;

.field public static final enum k:Lka7;

.field public static final enum l:Lka7;

.field public static final enum m:Lka7;

.field public static final enum n:Lka7;

.field public static final enum o:Lka7;

.field public static final enum p:Lka7;

.field public static final enum q:Lka7;

.field public static final enum r:Lka7;

.field public static final enum s:Lka7;

.field public static final enum t:Lka7;

.field public static final enum u:Lka7;

.field public static final enum v:Lka7;

.field public static final enum w:Lka7;

.field public static final synthetic x:[Lka7;


# instance fields
.field public final e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 33

    .line 1
    new-instance v6, Lka7;

    const-string v1, "NO_ERROR"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lka7;-><init>(Ljava/lang/String;IIII)V

    sput-object v6, Lka7;->f:Lka7;

    .line 2
    new-instance v0, Lka7;

    const-string v8, "PROTOCOL_ERROR"

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lka7;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lka7;->g:Lka7;

    .line 3
    new-instance v1, Lka7;

    const-string v14, "INVALID_STREAM"

    const/4 v15, 0x2

    const/16 v16, 0x1

    const/16 v17, 0x2

    const/16 v18, -0x1

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lka7;-><init>(Ljava/lang/String;IIII)V

    sput-object v1, Lka7;->h:Lka7;

    .line 4
    new-instance v2, Lka7;

    const-string v8, "UNSUPPORTED_VERSION"

    const/4 v9, 0x3

    const/4 v11, 0x4

    const/4 v12, -0x1

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lka7;-><init>(Ljava/lang/String;IIII)V

    sput-object v2, Lka7;->i:Lka7;

    .line 5
    new-instance v3, Lka7;

    const-string v14, "STREAM_IN_USE"

    const/4 v15, 0x4

    const/16 v17, 0x8

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lka7;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lka7;->j:Lka7;

    .line 6
    new-instance v4, Lka7;

    const-string v8, "STREAM_ALREADY_CLOSED"

    const/4 v9, 0x5

    const/16 v11, 0x9

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lka7;-><init>(Ljava/lang/String;IIII)V

    sput-object v4, Lka7;->k:Lka7;

    .line 7
    new-instance v5, Lka7;

    const-string v14, "INTERNAL_ERROR"

    const/4 v15, 0x6

    const/16 v16, 0x2

    const/16 v17, 0x6

    const/16 v18, 0x2

    move-object v13, v5

    invoke-direct/range {v13 .. v18}, Lka7;-><init>(Ljava/lang/String;IIII)V

    sput-object v5, Lka7;->l:Lka7;

    .line 8
    new-instance v13, Lka7;

    const-string v8, "FLOW_CONTROL_ERROR"

    const/4 v9, 0x7

    const/4 v10, 0x3

    const/4 v11, 0x7

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lka7;-><init>(Ljava/lang/String;IIII)V

    sput-object v13, Lka7;->m:Lka7;

    .line 9
    new-instance v7, Lka7;

    const-string v15, "STREAM_CLOSED"

    const/16 v16, 0x8

    const/16 v17, 0x5

    const/16 v18, -0x1

    const/16 v19, -0x1

    move-object v14, v7

    invoke-direct/range {v14 .. v19}, Lka7;-><init>(Ljava/lang/String;IIII)V

    sput-object v7, Lka7;->n:Lka7;

    .line 10
    new-instance v8, Lka7;

    const-string v21, "FRAME_TOO_LARGE"

    const/16 v22, 0x9

    const/16 v23, 0x6

    const/16 v24, 0xb

    const/16 v25, -0x1

    move-object/from16 v20, v8

    invoke-direct/range {v20 .. v25}, Lka7;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lka7;->o:Lka7;

    .line 11
    new-instance v9, Lka7;

    const-string v15, "REFUSED_STREAM"

    const/16 v16, 0xa

    const/16 v17, 0x7

    const/16 v18, 0x3

    move-object v14, v9

    invoke-direct/range {v14 .. v19}, Lka7;-><init>(Ljava/lang/String;IIII)V

    sput-object v9, Lka7;->p:Lka7;

    .line 12
    new-instance v10, Lka7;

    const-string v21, "CANCEL"

    const/16 v22, 0xb

    const/16 v23, 0x8

    const/16 v24, 0x5

    move-object/from16 v20, v10

    invoke-direct/range {v20 .. v25}, Lka7;-><init>(Ljava/lang/String;IIII)V

    sput-object v10, Lka7;->q:Lka7;

    .line 13
    new-instance v11, Lka7;

    const-string v15, "COMPRESSION_ERROR"

    const/16 v16, 0xc

    const/16 v17, 0x9

    const/16 v18, -0x1

    move-object v14, v11

    invoke-direct/range {v14 .. v19}, Lka7;-><init>(Ljava/lang/String;IIII)V

    sput-object v11, Lka7;->r:Lka7;

    .line 14
    new-instance v12, Lka7;

    const-string v21, "CONNECT_ERROR"

    const/16 v22, 0xd

    const/16 v23, 0xa

    const/16 v24, -0x1

    move-object/from16 v20, v12

    invoke-direct/range {v20 .. v25}, Lka7;-><init>(Ljava/lang/String;IIII)V

    sput-object v12, Lka7;->s:Lka7;

    .line 15
    new-instance v20, Lka7;

    const-string v15, "ENHANCE_YOUR_CALM"

    const/16 v16, 0xe

    const/16 v17, 0xb

    move-object/from16 v14, v20

    invoke-direct/range {v14 .. v19}, Lka7;-><init>(Ljava/lang/String;IIII)V

    sput-object v20, Lka7;->t:Lka7;

    .line 16
    new-instance v14, Lka7;

    const-string v22, "INADEQUATE_SECURITY"

    const/16 v23, 0xf

    const/16 v24, 0xc

    const/16 v26, -0x1

    move-object/from16 v21, v14

    invoke-direct/range {v21 .. v26}, Lka7;-><init>(Ljava/lang/String;IIII)V

    sput-object v14, Lka7;->u:Lka7;

    .line 17
    new-instance v15, Lka7;

    const-string v28, "HTTP_1_1_REQUIRED"

    const/16 v29, 0x10

    const/16 v30, 0xd

    const/16 v31, -0x1

    const/16 v32, -0x1

    move-object/from16 v27, v15

    invoke-direct/range {v27 .. v32}, Lka7;-><init>(Ljava/lang/String;IIII)V

    sput-object v15, Lka7;->v:Lka7;

    .line 18
    new-instance v16, Lka7;

    const-string v22, "INVALID_CREDENTIALS"

    const/16 v23, 0x11

    const/16 v24, -0x1

    const/16 v25, 0xa

    move-object/from16 v21, v16

    invoke-direct/range {v21 .. v26}, Lka7;-><init>(Ljava/lang/String;IIII)V

    sput-object v16, Lka7;->w:Lka7;

    move-object/from16 v17, v15

    const/16 v15, 0x12

    new-array v15, v15, [Lka7;

    const/16 v18, 0x0

    aput-object v6, v15, v18

    const/4 v6, 0x1

    aput-object v0, v15, v6

    const/4 v0, 0x2

    aput-object v1, v15, v0

    const/4 v0, 0x3

    aput-object v2, v15, v0

    const/4 v0, 0x4

    aput-object v3, v15, v0

    const/4 v0, 0x5

    aput-object v4, v15, v0

    const/4 v0, 0x6

    aput-object v5, v15, v0

    const/4 v0, 0x7

    aput-object v13, v15, v0

    const/16 v0, 0x8

    aput-object v7, v15, v0

    const/16 v0, 0x9

    aput-object v8, v15, v0

    const/16 v0, 0xa

    aput-object v9, v15, v0

    const/16 v0, 0xb

    aput-object v10, v15, v0

    const/16 v0, 0xc

    aput-object v11, v15, v0

    const/16 v0, 0xd

    aput-object v12, v15, v0

    const/16 v0, 0xe

    aput-object v20, v15, v0

    const/16 v0, 0xf

    aput-object v14, v15, v0

    const/16 v0, 0x10

    aput-object v17, v15, v0

    const/16 v0, 0x11

    aput-object v16, v15, v0

    .line 19
    sput-object v15, Lka7;->x:[Lka7;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lka7;->e:I

    return-void
.end method

.method public static i(I)Lka7;
    .locals 4

    .line 1
    invoke-static {}, Lka7;->values()[Lka7;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x12

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    .line 2
    iget v3, v2, Lka7;->e:I

    if-ne v3, p0, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lka7;
    .locals 1

    .line 1
    const-class v0, Lka7;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lka7;

    return-object p0
.end method

.method public static values()[Lka7;
    .locals 1

    .line 1
    sget-object v0, Lka7;->x:[Lka7;

    invoke-virtual {v0}, [Lka7;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lka7;

    return-object v0
.end method
