.class public enum Lp04;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lp04;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum g:Lp04;

.field public static final enum h:Lp04;

.field public static final enum i:Lp04;

.field public static final enum j:Lp04;

.field public static final enum k:Lp04;

.field public static final enum l:Lp04;

.field public static final enum m:Lp04;

.field public static final enum n:Lp04;

.field public static final enum o:Lp04;

.field public static final enum p:Lp04;

.field public static final enum q:Lp04;

.field public static final enum r:Lp04;

.field public static final enum s:Lp04;

.field public static final enum t:Lp04;

.field public static final enum u:Lp04;

.field public static final enum v:Lp04;

.field public static final enum w:Lp04;

.field public static final enum x:Lp04;

.field public static final synthetic y:[Lp04;


# instance fields
.field public final e:Lu04;

.field public final f:I


# direct methods
.method public static constructor <clinit>()V
    .locals 22

    new-instance v0, Lp04;

    sget-object v1, Lu04;->i:Lu04;

    const-string v2, "DOUBLE"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v1, v4}, Lp04;-><init>(Ljava/lang/String;ILu04;I)V

    sput-object v0, Lp04;->g:Lp04;

    new-instance v1, Lp04;

    sget-object v2, Lu04;->h:Lu04;

    const-string v5, "FLOAT"

    const/4 v6, 0x5

    invoke-direct {v1, v5, v4, v2, v6}, Lp04;-><init>(Ljava/lang/String;ILu04;I)V

    sput-object v1, Lp04;->h:Lp04;

    new-instance v2, Lp04;

    sget-object v5, Lu04;->g:Lu04;

    const-string v7, "INT64"

    const/4 v8, 0x2

    invoke-direct {v2, v7, v8, v5, v3}, Lp04;-><init>(Ljava/lang/String;ILu04;I)V

    sput-object v2, Lp04;->i:Lp04;

    new-instance v7, Lp04;

    const-string v9, "UINT64"

    const/4 v10, 0x3

    invoke-direct {v7, v9, v10, v5, v3}, Lp04;-><init>(Ljava/lang/String;ILu04;I)V

    sput-object v7, Lp04;->j:Lp04;

    new-instance v9, Lp04;

    sget-object v11, Lu04;->f:Lu04;

    const-string v12, "INT32"

    const/4 v13, 0x4

    invoke-direct {v9, v12, v13, v11, v3}, Lp04;-><init>(Ljava/lang/String;ILu04;I)V

    sput-object v9, Lp04;->k:Lp04;

    new-instance v12, Lp04;

    const-string v14, "FIXED64"

    invoke-direct {v12, v14, v6, v5, v4}, Lp04;-><init>(Ljava/lang/String;ILu04;I)V

    sput-object v12, Lp04;->l:Lp04;

    new-instance v14, Lp04;

    const-string v15, "FIXED32"

    const/4 v13, 0x6

    invoke-direct {v14, v15, v13, v11, v6}, Lp04;-><init>(Ljava/lang/String;ILu04;I)V

    sput-object v14, Lp04;->m:Lp04;

    new-instance v15, Lp04;

    sget-object v13, Lu04;->j:Lu04;

    const-string v10, "BOOL"

    const/4 v8, 0x7

    invoke-direct {v15, v10, v8, v13, v3}, Lp04;-><init>(Ljava/lang/String;ILu04;I)V

    sput-object v15, Lp04;->n:Lp04;

    new-instance v10, Lq04;

    sget-object v13, Lu04;->k:Lu04;

    const-string v8, "STRING"

    invoke-direct {v10, v8, v13}, Lq04;-><init>(Ljava/lang/String;Lu04;)V

    sput-object v10, Lp04;->o:Lp04;

    new-instance v8, Lr04;

    sget-object v13, Lu04;->n:Lu04;

    const-string v4, "GROUP"

    invoke-direct {v8, v4, v13}, Lr04;-><init>(Ljava/lang/String;Lu04;)V

    sput-object v8, Lp04;->p:Lp04;

    new-instance v4, Ls04;

    const-string v6, "MESSAGE"

    invoke-direct {v4, v6, v13}, Ls04;-><init>(Ljava/lang/String;Lu04;)V

    sput-object v4, Lp04;->q:Lp04;

    new-instance v6, Lt04;

    sget-object v13, Lu04;->l:Lu04;

    const-string v3, "BYTES"

    invoke-direct {v6, v3, v13}, Lt04;-><init>(Ljava/lang/String;Lu04;)V

    sput-object v6, Lp04;->r:Lp04;

    new-instance v3, Lp04;

    const-string v13, "UINT32"

    move-object/from16 v16, v6

    const/16 v6, 0xc

    move-object/from16 v17, v4

    const/4 v4, 0x0

    invoke-direct {v3, v13, v6, v11, v4}, Lp04;-><init>(Ljava/lang/String;ILu04;I)V

    sput-object v3, Lp04;->s:Lp04;

    new-instance v13, Lp04;

    sget-object v6, Lu04;->m:Lu04;

    move-object/from16 v18, v3

    const-string v3, "ENUM"

    move-object/from16 v19, v8

    const/16 v8, 0xd

    invoke-direct {v13, v3, v8, v6, v4}, Lp04;-><init>(Ljava/lang/String;ILu04;I)V

    sput-object v13, Lp04;->t:Lp04;

    new-instance v3, Lp04;

    const-string v4, "SFIXED32"

    const/16 v6, 0xe

    const/4 v8, 0x5

    invoke-direct {v3, v4, v6, v11, v8}, Lp04;-><init>(Ljava/lang/String;ILu04;I)V

    sput-object v3, Lp04;->u:Lp04;

    new-instance v4, Lp04;

    const-string v8, "SFIXED64"

    const/16 v6, 0xf

    move-object/from16 v20, v3

    const/4 v3, 0x1

    invoke-direct {v4, v8, v6, v5, v3}, Lp04;-><init>(Ljava/lang/String;ILu04;I)V

    sput-object v4, Lp04;->v:Lp04;

    new-instance v3, Lp04;

    const-string v8, "SINT32"

    const/16 v6, 0x10

    move-object/from16 v21, v4

    const/4 v4, 0x0

    invoke-direct {v3, v8, v6, v11, v4}, Lp04;-><init>(Ljava/lang/String;ILu04;I)V

    sput-object v3, Lp04;->w:Lp04;

    new-instance v8, Lp04;

    const-string v11, "SINT64"

    const/16 v6, 0x11

    invoke-direct {v8, v11, v6, v5, v4}, Lp04;-><init>(Ljava/lang/String;ILu04;I)V

    sput-object v8, Lp04;->x:Lp04;

    const/16 v5, 0x12

    new-array v5, v5, [Lp04;

    aput-object v0, v5, v4

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v7, v5, v0

    const/4 v0, 0x4

    aput-object v9, v5, v0

    const/4 v0, 0x5

    aput-object v12, v5, v0

    const/4 v0, 0x6

    aput-object v14, v5, v0

    const/4 v0, 0x7

    aput-object v15, v5, v0

    const/16 v0, 0x8

    aput-object v10, v5, v0

    const/16 v0, 0x9

    aput-object v19, v5, v0

    const/16 v0, 0xa

    aput-object v17, v5, v0

    const/16 v0, 0xb

    aput-object v16, v5, v0

    const/16 v0, 0xc

    aput-object v18, v5, v0

    const/16 v0, 0xd

    aput-object v13, v5, v0

    const/16 v0, 0xe

    aput-object v20, v5, v0

    const/16 v0, 0xf

    aput-object v21, v5, v0

    const/16 v0, 0x10

    aput-object v3, v5, v0

    aput-object v8, v5, v6

    sput-object v5, Lp04;->y:[Lp04;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILu04;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu04;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lp04;->e:Lu04;

    iput p4, p0, Lp04;->f:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILu04;ILo04;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lp04;->e:Lu04;

    iput p4, p0, Lp04;->f:I

    return-void
.end method

.method public static values()[Lp04;
    .locals 1

    sget-object v0, Lp04;->y:[Lp04;

    invoke-virtual {v0}, [Lp04;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lp04;

    return-object v0
.end method
