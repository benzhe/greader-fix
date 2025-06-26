.class public enum Lqn4;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lqn4;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum g:Lqn4;

.field public static final enum h:Lqn4;

.field public static final enum i:Lqn4;

.field public static final enum j:Lqn4;

.field public static final enum k:Lqn4;

.field public static final enum l:Lqn4;

.field public static final enum m:Lqn4;

.field public static final enum n:Lqn4;

.field public static final enum o:Lqn4;

.field public static final enum p:Lqn4;

.field public static final enum q:Lqn4;

.field public static final enum r:Lqn4;

.field public static final enum s:Lqn4;

.field public static final enum t:Lqn4;

.field public static final enum u:Lqn4;

.field public static final enum v:Lqn4;

.field public static final enum w:Lqn4;

.field public static final enum x:Lqn4;

.field public static final synthetic y:[Lqn4;


# instance fields
.field public final e:Ltn4;

.field public final f:I


# direct methods
.method public static constructor <clinit>()V
    .locals 22

    .line 1
    new-instance v0, Lqn4;

    sget-object v1, Ltn4;->i:Ltn4;

    const-string v2, "DOUBLE"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v1, v4}, Lqn4;-><init>(Ljava/lang/String;ILtn4;I)V

    sput-object v0, Lqn4;->g:Lqn4;

    .line 2
    new-instance v1, Lqn4;

    sget-object v2, Ltn4;->h:Ltn4;

    const-string v5, "FLOAT"

    const/4 v6, 0x5

    invoke-direct {v1, v5, v4, v2, v6}, Lqn4;-><init>(Ljava/lang/String;ILtn4;I)V

    sput-object v1, Lqn4;->h:Lqn4;

    .line 3
    new-instance v2, Lqn4;

    sget-object v5, Ltn4;->g:Ltn4;

    const-string v7, "INT64"

    const/4 v8, 0x2

    invoke-direct {v2, v7, v8, v5, v3}, Lqn4;-><init>(Ljava/lang/String;ILtn4;I)V

    sput-object v2, Lqn4;->i:Lqn4;

    .line 4
    new-instance v7, Lqn4;

    const-string v9, "UINT64"

    const/4 v10, 0x3

    invoke-direct {v7, v9, v10, v5, v3}, Lqn4;-><init>(Ljava/lang/String;ILtn4;I)V

    sput-object v7, Lqn4;->j:Lqn4;

    .line 5
    new-instance v9, Lqn4;

    sget-object v11, Ltn4;->f:Ltn4;

    const-string v12, "INT32"

    const/4 v13, 0x4

    invoke-direct {v9, v12, v13, v11, v3}, Lqn4;-><init>(Ljava/lang/String;ILtn4;I)V

    sput-object v9, Lqn4;->k:Lqn4;

    .line 6
    new-instance v12, Lqn4;

    const-string v14, "FIXED64"

    invoke-direct {v12, v14, v6, v5, v4}, Lqn4;-><init>(Ljava/lang/String;ILtn4;I)V

    sput-object v12, Lqn4;->l:Lqn4;

    .line 7
    new-instance v14, Lqn4;

    const-string v15, "FIXED32"

    const/4 v13, 0x6

    invoke-direct {v14, v15, v13, v11, v6}, Lqn4;-><init>(Ljava/lang/String;ILtn4;I)V

    sput-object v14, Lqn4;->m:Lqn4;

    .line 8
    new-instance v15, Lqn4;

    sget-object v13, Ltn4;->j:Ltn4;

    const-string v10, "BOOL"

    const/4 v8, 0x7

    invoke-direct {v15, v10, v8, v13, v3}, Lqn4;-><init>(Ljava/lang/String;ILtn4;I)V

    sput-object v15, Lqn4;->n:Lqn4;

    .line 9
    new-instance v10, Lpn4;

    sget-object v13, Ltn4;->k:Ltn4;

    const-string v8, "STRING"

    invoke-direct {v10, v8, v13}, Lpn4;-><init>(Ljava/lang/String;Ltn4;)V

    sput-object v10, Lqn4;->o:Lqn4;

    .line 10
    new-instance v8, Lsn4;

    sget-object v13, Ltn4;->n:Ltn4;

    const-string v4, "GROUP"

    invoke-direct {v8, v4, v13}, Lsn4;-><init>(Ljava/lang/String;Ltn4;)V

    sput-object v8, Lqn4;->p:Lqn4;

    .line 11
    new-instance v4, Lrn4;

    const-string v6, "MESSAGE"

    invoke-direct {v4, v6, v13}, Lrn4;-><init>(Ljava/lang/String;Ltn4;)V

    sput-object v4, Lqn4;->q:Lqn4;

    .line 12
    new-instance v6, Lun4;

    sget-object v13, Ltn4;->l:Ltn4;

    const-string v3, "BYTES"

    invoke-direct {v6, v3, v13}, Lun4;-><init>(Ljava/lang/String;Ltn4;)V

    sput-object v6, Lqn4;->r:Lqn4;

    .line 13
    new-instance v3, Lqn4;

    const-string v13, "UINT32"

    move-object/from16 v16, v6

    const/16 v6, 0xc

    move-object/from16 v17, v4

    const/4 v4, 0x0

    invoke-direct {v3, v13, v6, v11, v4}, Lqn4;-><init>(Ljava/lang/String;ILtn4;I)V

    sput-object v3, Lqn4;->s:Lqn4;

    .line 14
    new-instance v13, Lqn4;

    sget-object v6, Ltn4;->m:Ltn4;

    move-object/from16 v18, v3

    const-string v3, "ENUM"

    move-object/from16 v19, v8

    const/16 v8, 0xd

    invoke-direct {v13, v3, v8, v6, v4}, Lqn4;-><init>(Ljava/lang/String;ILtn4;I)V

    sput-object v13, Lqn4;->t:Lqn4;

    .line 15
    new-instance v3, Lqn4;

    const-string v4, "SFIXED32"

    const/16 v6, 0xe

    const/4 v8, 0x5

    invoke-direct {v3, v4, v6, v11, v8}, Lqn4;-><init>(Ljava/lang/String;ILtn4;I)V

    sput-object v3, Lqn4;->u:Lqn4;

    .line 16
    new-instance v4, Lqn4;

    const-string v8, "SFIXED64"

    const/16 v6, 0xf

    move-object/from16 v20, v3

    const/4 v3, 0x1

    invoke-direct {v4, v8, v6, v5, v3}, Lqn4;-><init>(Ljava/lang/String;ILtn4;I)V

    sput-object v4, Lqn4;->v:Lqn4;

    .line 17
    new-instance v3, Lqn4;

    const-string v8, "SINT32"

    const/16 v6, 0x10

    move-object/from16 v21, v4

    const/4 v4, 0x0

    invoke-direct {v3, v8, v6, v11, v4}, Lqn4;-><init>(Ljava/lang/String;ILtn4;I)V

    sput-object v3, Lqn4;->w:Lqn4;

    .line 18
    new-instance v8, Lqn4;

    const-string v11, "SINT64"

    const/16 v6, 0x11

    invoke-direct {v8, v11, v6, v5, v4}, Lqn4;-><init>(Ljava/lang/String;ILtn4;I)V

    sput-object v8, Lqn4;->x:Lqn4;

    const/16 v5, 0x12

    new-array v5, v5, [Lqn4;

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

    .line 19
    sput-object v5, Lqn4;->y:[Lqn4;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILtn4;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltn4;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lqn4;->e:Ltn4;

    .line 3
    iput p4, p0, Lqn4;->f:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILtn4;ILnn4;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 5
    iput-object p3, p0, Lqn4;->e:Ltn4;

    .line 6
    iput p4, p0, Lqn4;->f:I

    return-void
.end method

.method public static values()[Lqn4;
    .locals 1

    .line 1
    sget-object v0, Lqn4;->y:[Lqn4;

    invoke-virtual {v0}, [Lqn4;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lqn4;

    return-object v0
.end method
