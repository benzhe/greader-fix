.class public final enum Ls78;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ls78;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum A:Ls78;

.field public static final synthetic B:[Ls78;

.field public static final enum g:Ls78;

.field public static final enum h:Ls78;

.field public static final enum i:Ls78;

.field public static final enum j:Ls78;

.field public static final enum k:Ls78;

.field public static final enum l:Ls78;

.field public static final enum m:Ls78;

.field public static final enum n:Ls78;

.field public static final enum o:Ls78;

.field public static final enum p:Ls78;

.field public static final enum q:Ls78;

.field public static final enum r:Ls78;

.field public static final enum s:Ls78;

.field public static final enum t:Ls78;

.field public static final enum u:Ls78;

.field public static final enum v:Ls78;

.field public static final enum w:Ls78;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum x:Ls78;

.field public static final enum y:Ls78;

.field public static final enum z:Ls78;


# instance fields
.field public final e:Ljava/lang/String;

.field public f:I


# direct methods
.method public static constructor <clinit>()V
    .locals 25

    .line 1
    new-instance v0, Ls78;

    const-string v1, "NO_ERROR"

    const/4 v2, 0x0

    const-string v3, "No error"

    invoke-direct {v0, v1, v2, v2, v3}, Ls78;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Ls78;->g:Ls78;

    .line 2
    new-instance v1, Ls78;

    const-string v3, "OPEN_FAILED"

    const/4 v4, 0x1

    const/16 v5, 0x65

    const-string v6, "Failed to open given input"

    invoke-direct {v1, v3, v4, v5, v6}, Ls78;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Ls78;->h:Ls78;

    .line 3
    new-instance v3, Ls78;

    const-string v5, "READ_FAILED"

    const/4 v6, 0x2

    const/16 v7, 0x66

    const-string v8, "Failed to read from given input"

    invoke-direct {v3, v5, v6, v7, v8}, Ls78;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Ls78;->i:Ls78;

    .line 4
    new-instance v5, Ls78;

    const-string v7, "NOT_GIF_FILE"

    const/4 v8, 0x3

    const/16 v9, 0x67

    const-string v10, "Data is not in GIF format"

    invoke-direct {v5, v7, v8, v9, v10}, Ls78;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Ls78;->j:Ls78;

    .line 5
    new-instance v7, Ls78;

    const-string v9, "NO_SCRN_DSCR"

    const/4 v10, 0x4

    const/16 v11, 0x68

    const-string v12, "No screen descriptor detected"

    invoke-direct {v7, v9, v10, v11, v12}, Ls78;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Ls78;->k:Ls78;

    .line 6
    new-instance v9, Ls78;

    const-string v11, "NO_IMAG_DSCR"

    const/4 v12, 0x5

    const/16 v13, 0x69

    const-string v14, "No image descriptor detected"

    invoke-direct {v9, v11, v12, v13, v14}, Ls78;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v9, Ls78;->l:Ls78;

    .line 7
    new-instance v11, Ls78;

    const-string v13, "NO_COLOR_MAP"

    const/4 v14, 0x6

    const/16 v15, 0x6a

    const-string v12, "Neither global nor local color map found"

    invoke-direct {v11, v13, v14, v15, v12}, Ls78;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Ls78;->m:Ls78;

    .line 8
    new-instance v12, Ls78;

    const-string v13, "WRONG_RECORD"

    const/4 v15, 0x7

    const/16 v14, 0x6b

    const-string v10, "Wrong record type detected"

    invoke-direct {v12, v13, v15, v14, v10}, Ls78;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v12, Ls78;->n:Ls78;

    .line 9
    new-instance v10, Ls78;

    const-string v13, "DATA_TOO_BIG"

    const/16 v14, 0x8

    const/16 v15, 0x6c

    const-string v8, "Number of pixels bigger than width * height"

    invoke-direct {v10, v13, v14, v15, v8}, Ls78;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v10, Ls78;->o:Ls78;

    .line 10
    new-instance v8, Ls78;

    const-string v13, "NOT_ENOUGH_MEM"

    const/16 v15, 0x9

    const/16 v14, 0x6d

    const-string v6, "Failed to allocate required memory"

    invoke-direct {v8, v13, v15, v14, v6}, Ls78;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Ls78;->p:Ls78;

    .line 11
    new-instance v6, Ls78;

    const-string v13, "CLOSE_FAILED"

    const/16 v14, 0xa

    const/16 v15, 0x6e

    const-string v4, "Failed to close given input"

    invoke-direct {v6, v13, v14, v15, v4}, Ls78;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Ls78;->q:Ls78;

    .line 12
    new-instance v4, Ls78;

    const-string v13, "NOT_READABLE"

    const/16 v15, 0xb

    const/16 v14, 0x6f

    const-string v2, "Given file was not opened for read"

    invoke-direct {v4, v13, v15, v14, v2}, Ls78;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Ls78;->r:Ls78;

    .line 13
    new-instance v2, Ls78;

    const-string v13, "IMAGE_DEFECT"

    const/16 v14, 0xc

    const/16 v15, 0x70

    move-object/from16 v16, v4

    const-string v4, "Image is defective, decoding aborted"

    invoke-direct {v2, v13, v14, v15, v4}, Ls78;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Ls78;->s:Ls78;

    .line 14
    new-instance v4, Ls78;

    const-string v13, "EOF_TOO_SOON"

    const/16 v15, 0xd

    const/16 v14, 0x71

    move-object/from16 v17, v2

    const-string v2, "Image EOF detected before image complete"

    invoke-direct {v4, v13, v15, v14, v2}, Ls78;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Ls78;->t:Ls78;

    .line 15
    new-instance v2, Ls78;

    const-string v13, "NO_FRAMES"

    const/16 v14, 0xe

    const/16 v15, 0x3e8

    move-object/from16 v18, v4

    const-string v4, "No frames found, at least one frame required"

    invoke-direct {v2, v13, v14, v15, v4}, Ls78;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Ls78;->u:Ls78;

    .line 16
    new-instance v4, Ls78;

    const-string v13, "INVALID_SCR_DIMS"

    const/16 v15, 0xf

    const/16 v14, 0x3e9

    move-object/from16 v19, v2

    const-string v2, "Invalid screen size, dimensions must be positive"

    invoke-direct {v4, v13, v15, v14, v2}, Ls78;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Ls78;->v:Ls78;

    .line 17
    new-instance v2, Ls78;

    const-string v13, "INVALID_IMG_DIMS"

    const/16 v14, 0x10

    const/16 v15, 0x3ea

    move-object/from16 v20, v4

    const-string v4, "Invalid image size, dimensions must be positive"

    invoke-direct {v2, v13, v14, v15, v4}, Ls78;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Ls78;->w:Ls78;

    .line 18
    new-instance v4, Ls78;

    const-string v13, "IMG_NOT_CONFINED"

    const/16 v15, 0x11

    const/16 v14, 0x3eb

    move-object/from16 v21, v2

    const-string v2, "Image size exceeds screen size"

    invoke-direct {v4, v13, v15, v14, v2}, Ls78;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Ls78;->x:Ls78;

    .line 19
    new-instance v2, Ls78;

    const-string v13, "REWIND_FAILED"

    const/16 v14, 0x12

    const/16 v15, 0x3ec

    move-object/from16 v22, v4

    const-string v4, "Input source rewind has failed, animation is stopped"

    invoke-direct {v2, v13, v14, v15, v4}, Ls78;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Ls78;->y:Ls78;

    .line 20
    new-instance v4, Ls78;

    const-string v13, "INVALID_BYTE_BUFFER"

    const/16 v15, 0x13

    const/16 v14, 0x3ed

    move-object/from16 v23, v2

    const-string v2, "Invalid and/or indirect byte buffer specified"

    invoke-direct {v4, v13, v15, v14, v2}, Ls78;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Ls78;->z:Ls78;

    .line 21
    new-instance v2, Ls78;

    const-string v13, "UNKNOWN"

    const/16 v14, 0x14

    const/4 v15, -0x1

    move-object/from16 v24, v4

    const-string v4, "Unknown error"

    invoke-direct {v2, v13, v14, v15, v4}, Ls78;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Ls78;->A:Ls78;

    const/16 v4, 0x15

    new-array v4, v4, [Ls78;

    const/4 v13, 0x0

    aput-object v0, v4, v13

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

    aput-object v12, v4, v0

    const/16 v0, 0x8

    aput-object v10, v4, v0

    const/16 v0, 0x9

    aput-object v8, v4, v0

    const/16 v0, 0xa

    aput-object v6, v4, v0

    const/16 v0, 0xb

    aput-object v16, v4, v0

    const/16 v0, 0xc

    aput-object v17, v4, v0

    const/16 v0, 0xd

    aput-object v18, v4, v0

    const/16 v0, 0xe

    aput-object v19, v4, v0

    const/16 v0, 0xf

    aput-object v20, v4, v0

    const/16 v0, 0x10

    aput-object v21, v4, v0

    const/16 v0, 0x11

    aput-object v22, v4, v0

    const/16 v0, 0x12

    aput-object v23, v4, v0

    const/16 v0, 0x13

    aput-object v24, v4, v0

    aput-object v2, v4, v14

    .line 22
    sput-object v4, Ls78;->B:[Ls78;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Ls78;->f:I

    .line 3
    iput-object p4, p0, Ls78;->e:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ls78;
    .locals 1

    .line 1
    const-class v0, Ls78;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ls78;

    return-object p0
.end method

.method public static values()[Ls78;
    .locals 1

    .line 1
    sget-object v0, Ls78;->B:[Ls78;

    invoke-virtual {v0}, [Ls78;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ls78;

    return-object v0
.end method
