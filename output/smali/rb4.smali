.class public final enum Lrb4;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lrb4;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum f:Lrb4;

.field public static final enum g:Lrb4;

.field public static final enum h:Lrb4;

.field public static final enum i:Lrb4;

.field public static final enum j:Lrb4;

.field public static final enum k:Lrb4;

.field public static final enum l:Lrb4;

.field public static final enum m:Lrb4;

.field public static final enum n:Lrb4;

.field public static final enum o:Lrb4;

.field public static final enum p:Lrb4;

.field public static final enum q:Lrb4;

.field public static final enum r:Lrb4;

.field public static final enum s:Lrb4;

.field public static final enum t:Lrb4;

.field public static final enum u:Lrb4;

.field public static final enum v:Lrb4;

.field public static final enum w:Lrb4;

.field public static final synthetic x:[Lrb4;


# instance fields
.field public final e:Lsb4;


# direct methods
.method public static constructor <clinit>()V
    .locals 21

    new-instance v0, Lrb4;

    .line 1
    sget-object v1, Lsb4;->i:Lsb4;

    const-string v2, "DOUBLE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lrb4;-><init>(Ljava/lang/String;ILsb4;)V

    sput-object v0, Lrb4;->f:Lrb4;

    new-instance v1, Lrb4;

    sget-object v2, Lsb4;->h:Lsb4;

    const-string v4, "FLOAT"

    const/4 v5, 0x1

    .line 2
    invoke-direct {v1, v4, v5, v2}, Lrb4;-><init>(Ljava/lang/String;ILsb4;)V

    sput-object v1, Lrb4;->g:Lrb4;

    new-instance v2, Lrb4;

    sget-object v4, Lsb4;->g:Lsb4;

    const-string v6, "INT64"

    const/4 v7, 0x2

    .line 3
    invoke-direct {v2, v6, v7, v4}, Lrb4;-><init>(Ljava/lang/String;ILsb4;)V

    sput-object v2, Lrb4;->h:Lrb4;

    new-instance v6, Lrb4;

    const-string v8, "UINT64"

    const/4 v9, 0x3

    .line 4
    invoke-direct {v6, v8, v9, v4}, Lrb4;-><init>(Ljava/lang/String;ILsb4;)V

    sput-object v6, Lrb4;->i:Lrb4;

    new-instance v8, Lrb4;

    sget-object v10, Lsb4;->f:Lsb4;

    const-string v11, "INT32"

    const/4 v12, 0x4

    .line 5
    invoke-direct {v8, v11, v12, v10}, Lrb4;-><init>(Ljava/lang/String;ILsb4;)V

    sput-object v8, Lrb4;->j:Lrb4;

    new-instance v11, Lrb4;

    const-string v13, "FIXED64"

    const/4 v14, 0x5

    .line 6
    invoke-direct {v11, v13, v14, v4}, Lrb4;-><init>(Ljava/lang/String;ILsb4;)V

    sput-object v11, Lrb4;->k:Lrb4;

    new-instance v13, Lrb4;

    const-string v15, "FIXED32"

    const/4 v14, 0x6

    .line 7
    invoke-direct {v13, v15, v14, v10}, Lrb4;-><init>(Ljava/lang/String;ILsb4;)V

    sput-object v13, Lrb4;->l:Lrb4;

    new-instance v15, Lrb4;

    sget-object v14, Lsb4;->j:Lsb4;

    const-string v12, "BOOL"

    const/4 v9, 0x7

    .line 8
    invoke-direct {v15, v12, v9, v14}, Lrb4;-><init>(Ljava/lang/String;ILsb4;)V

    sput-object v15, Lrb4;->m:Lrb4;

    new-instance v12, Lrb4;

    sget-object v14, Lsb4;->k:Lsb4;

    const-string v9, "STRING"

    const/16 v7, 0x8

    .line 9
    invoke-direct {v12, v9, v7, v14}, Lrb4;-><init>(Ljava/lang/String;ILsb4;)V

    sput-object v12, Lrb4;->n:Lrb4;

    new-instance v9, Lrb4;

    sget-object v14, Lsb4;->n:Lsb4;

    const-string v7, "GROUP"

    const/16 v5, 0x9

    .line 10
    invoke-direct {v9, v7, v5, v14}, Lrb4;-><init>(Ljava/lang/String;ILsb4;)V

    sput-object v9, Lrb4;->o:Lrb4;

    new-instance v7, Lrb4;

    const-string v5, "MESSAGE"

    const/16 v3, 0xa

    .line 11
    invoke-direct {v7, v5, v3, v14}, Lrb4;-><init>(Ljava/lang/String;ILsb4;)V

    sput-object v7, Lrb4;->p:Lrb4;

    new-instance v5, Lrb4;

    sget-object v14, Lsb4;->l:Lsb4;

    const-string v3, "BYTES"

    move-object/from16 v16, v7

    const/16 v7, 0xb

    .line 12
    invoke-direct {v5, v3, v7, v14}, Lrb4;-><init>(Ljava/lang/String;ILsb4;)V

    sput-object v5, Lrb4;->q:Lrb4;

    new-instance v3, Lrb4;

    const-string v14, "UINT32"

    const/16 v7, 0xc

    .line 13
    invoke-direct {v3, v14, v7, v10}, Lrb4;-><init>(Ljava/lang/String;ILsb4;)V

    sput-object v3, Lrb4;->r:Lrb4;

    new-instance v14, Lrb4;

    sget-object v7, Lsb4;->m:Lsb4;

    move-object/from16 v17, v3

    const-string v3, "ENUM"

    move-object/from16 v18, v5

    const/16 v5, 0xd

    .line 14
    invoke-direct {v14, v3, v5, v7}, Lrb4;-><init>(Ljava/lang/String;ILsb4;)V

    sput-object v14, Lrb4;->s:Lrb4;

    new-instance v3, Lrb4;

    const-string v7, "SFIXED32"

    const/16 v5, 0xe

    .line 15
    invoke-direct {v3, v7, v5, v10}, Lrb4;-><init>(Ljava/lang/String;ILsb4;)V

    sput-object v3, Lrb4;->t:Lrb4;

    new-instance v7, Lrb4;

    const-string v5, "SFIXED64"

    move-object/from16 v19, v3

    const/16 v3, 0xf

    .line 16
    invoke-direct {v7, v5, v3, v4}, Lrb4;-><init>(Ljava/lang/String;ILsb4;)V

    sput-object v7, Lrb4;->u:Lrb4;

    new-instance v5, Lrb4;

    const-string v3, "SINT32"

    move-object/from16 v20, v7

    const/16 v7, 0x10

    .line 17
    invoke-direct {v5, v3, v7, v10}, Lrb4;-><init>(Ljava/lang/String;ILsb4;)V

    sput-object v5, Lrb4;->v:Lrb4;

    new-instance v3, Lrb4;

    const-string v10, "SINT64"

    const/16 v7, 0x11

    .line 18
    invoke-direct {v3, v10, v7, v4}, Lrb4;-><init>(Ljava/lang/String;ILsb4;)V

    sput-object v3, Lrb4;->w:Lrb4;

    const/16 v4, 0x12

    new-array v4, v4, [Lrb4;

    const/4 v10, 0x0

    aput-object v0, v4, v10

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v6, v4, v0

    const/4 v0, 0x4

    aput-object v8, v4, v0

    const/4 v0, 0x5

    aput-object v11, v4, v0

    const/4 v0, 0x6

    aput-object v13, v4, v0

    const/4 v0, 0x7

    aput-object v15, v4, v0

    const/16 v0, 0x8

    aput-object v12, v4, v0

    const/16 v0, 0x9

    aput-object v9, v4, v0

    const/16 v0, 0xa

    aput-object v16, v4, v0

    const/16 v0, 0xb

    aput-object v18, v4, v0

    const/16 v0, 0xc

    aput-object v17, v4, v0

    const/16 v0, 0xd

    aput-object v14, v4, v0

    const/16 v0, 0xe

    aput-object v19, v4, v0

    const/16 v0, 0xf

    aput-object v20, v4, v0

    const/16 v0, 0x10

    aput-object v5, v4, v0

    aput-object v3, v4, v7

    sput-object v4, Lrb4;->x:[Lrb4;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILsb4;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsb4;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lrb4;->e:Lsb4;

    return-void
.end method

.method public static values()[Lrb4;
    .locals 1

    sget-object v0, Lrb4;->x:[Lrb4;

    .line 1
    invoke-virtual {v0}, [Lrb4;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrb4;

    return-object v0
.end method
