.class public enum Lfl6;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lfl6;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum g:Lfl6;

.field public static final enum h:Lfl6;

.field public static final enum i:Lfl6;

.field public static final enum j:Lfl6;

.field public static final enum k:Lfl6;

.field public static final enum l:Lfl6;

.field public static final enum m:Lfl6;

.field public static final enum n:Lfl6;

.field public static final enum o:Lfl6;

.field public static final enum p:Lfl6;

.field public static final enum q:Lfl6;

.field public static final enum r:Lfl6;

.field public static final enum s:Lfl6;

.field public static final enum t:Lfl6;

.field public static final enum u:Lfl6;

.field public static final enum v:Lfl6;

.field public static final enum w:Lfl6;

.field public static final enum x:Lfl6;

.field public static final synthetic y:[Lfl6;


# instance fields
.field public final e:Lgl6;

.field public final f:I


# direct methods
.method public static constructor <clinit>()V
    .locals 22

    .line 1
    new-instance v0, Lfl6;

    sget-object v1, Lgl6;->i:Lgl6;

    const-string v2, "DOUBLE"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v1, v4}, Lfl6;-><init>(Ljava/lang/String;ILgl6;I)V

    sput-object v0, Lfl6;->g:Lfl6;

    .line 2
    new-instance v1, Lfl6;

    sget-object v2, Lgl6;->h:Lgl6;

    const-string v5, "FLOAT"

    const/4 v6, 0x5

    invoke-direct {v1, v5, v4, v2, v6}, Lfl6;-><init>(Ljava/lang/String;ILgl6;I)V

    sput-object v1, Lfl6;->h:Lfl6;

    .line 3
    new-instance v2, Lfl6;

    sget-object v5, Lgl6;->g:Lgl6;

    const-string v7, "INT64"

    const/4 v8, 0x2

    invoke-direct {v2, v7, v8, v5, v3}, Lfl6;-><init>(Ljava/lang/String;ILgl6;I)V

    sput-object v2, Lfl6;->i:Lfl6;

    .line 4
    new-instance v7, Lfl6;

    const-string v9, "UINT64"

    const/4 v10, 0x3

    invoke-direct {v7, v9, v10, v5, v3}, Lfl6;-><init>(Ljava/lang/String;ILgl6;I)V

    sput-object v7, Lfl6;->j:Lfl6;

    .line 5
    new-instance v9, Lfl6;

    sget-object v11, Lgl6;->f:Lgl6;

    const-string v12, "INT32"

    const/4 v13, 0x4

    invoke-direct {v9, v12, v13, v11, v3}, Lfl6;-><init>(Ljava/lang/String;ILgl6;I)V

    sput-object v9, Lfl6;->k:Lfl6;

    .line 6
    new-instance v12, Lfl6;

    const-string v14, "FIXED64"

    invoke-direct {v12, v14, v6, v5, v4}, Lfl6;-><init>(Ljava/lang/String;ILgl6;I)V

    sput-object v12, Lfl6;->l:Lfl6;

    .line 7
    new-instance v14, Lfl6;

    const-string v15, "FIXED32"

    const/4 v13, 0x6

    invoke-direct {v14, v15, v13, v11, v6}, Lfl6;-><init>(Ljava/lang/String;ILgl6;I)V

    sput-object v14, Lfl6;->m:Lfl6;

    .line 8
    new-instance v15, Lfl6;

    sget-object v13, Lgl6;->j:Lgl6;

    const-string v4, "BOOL"

    const/4 v6, 0x7

    invoke-direct {v15, v4, v6, v13, v3}, Lfl6;-><init>(Ljava/lang/String;ILgl6;I)V

    sput-object v15, Lfl6;->n:Lfl6;

    .line 9
    new-instance v4, Lfl6$a;

    sget-object v13, Lgl6;->k:Lgl6;

    const-string v6, "STRING"

    const/16 v3, 0x8

    invoke-direct {v4, v6, v3, v13, v8}, Lfl6$a;-><init>(Ljava/lang/String;ILgl6;I)V

    sput-object v4, Lfl6;->o:Lfl6;

    .line 10
    new-instance v6, Lfl6$b;

    sget-object v13, Lgl6;->n:Lgl6;

    const-string v3, "GROUP"

    const/16 v8, 0x9

    invoke-direct {v6, v3, v8, v13, v10}, Lfl6$b;-><init>(Ljava/lang/String;ILgl6;I)V

    sput-object v6, Lfl6;->p:Lfl6;

    .line 11
    new-instance v3, Lfl6$c;

    const-string v8, "MESSAGE"

    const/16 v10, 0xa

    move-object/from16 v16, v6

    const/4 v6, 0x2

    invoke-direct {v3, v8, v10, v13, v6}, Lfl6$c;-><init>(Ljava/lang/String;ILgl6;I)V

    sput-object v3, Lfl6;->q:Lfl6;

    .line 12
    new-instance v8, Lfl6$d;

    sget-object v13, Lgl6;->l:Lgl6;

    const-string v10, "BYTES"

    move-object/from16 v17, v3

    const/16 v3, 0xb

    invoke-direct {v8, v10, v3, v13, v6}, Lfl6$d;-><init>(Ljava/lang/String;ILgl6;I)V

    sput-object v8, Lfl6;->r:Lfl6;

    .line 13
    new-instance v6, Lfl6;

    const-string v10, "UINT32"

    const/16 v13, 0xc

    const/4 v3, 0x0

    invoke-direct {v6, v10, v13, v11, v3}, Lfl6;-><init>(Ljava/lang/String;ILgl6;I)V

    sput-object v6, Lfl6;->s:Lfl6;

    .line 14
    new-instance v10, Lfl6;

    sget-object v13, Lgl6;->m:Lgl6;

    move-object/from16 v18, v6

    const-string v6, "ENUM"

    move-object/from16 v19, v8

    const/16 v8, 0xd

    invoke-direct {v10, v6, v8, v13, v3}, Lfl6;-><init>(Ljava/lang/String;ILgl6;I)V

    sput-object v10, Lfl6;->t:Lfl6;

    .line 15
    new-instance v3, Lfl6;

    const-string v6, "SFIXED32"

    const/16 v13, 0xe

    const/4 v8, 0x5

    invoke-direct {v3, v6, v13, v11, v8}, Lfl6;-><init>(Ljava/lang/String;ILgl6;I)V

    sput-object v3, Lfl6;->u:Lfl6;

    .line 16
    new-instance v6, Lfl6;

    const-string v8, "SFIXED64"

    const/16 v13, 0xf

    move-object/from16 v20, v3

    const/4 v3, 0x1

    invoke-direct {v6, v8, v13, v5, v3}, Lfl6;-><init>(Ljava/lang/String;ILgl6;I)V

    sput-object v6, Lfl6;->v:Lfl6;

    .line 17
    new-instance v3, Lfl6;

    const-string v8, "SINT32"

    const/16 v13, 0x10

    move-object/from16 v21, v6

    const/4 v6, 0x0

    invoke-direct {v3, v8, v13, v11, v6}, Lfl6;-><init>(Ljava/lang/String;ILgl6;I)V

    sput-object v3, Lfl6;->w:Lfl6;

    .line 18
    new-instance v8, Lfl6;

    const-string v11, "SINT64"

    const/16 v13, 0x11

    invoke-direct {v8, v11, v13, v5, v6}, Lfl6;-><init>(Ljava/lang/String;ILgl6;I)V

    sput-object v8, Lfl6;->x:Lfl6;

    const/16 v5, 0x12

    new-array v5, v5, [Lfl6;

    aput-object v0, v5, v6

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

    aput-object v4, v5, v0

    const/16 v0, 0x9

    aput-object v16, v5, v0

    const/16 v0, 0xa

    aput-object v17, v5, v0

    const/16 v0, 0xb

    aput-object v19, v5, v0

    const/16 v0, 0xc

    aput-object v18, v5, v0

    const/16 v0, 0xd

    aput-object v10, v5, v0

    const/16 v0, 0xe

    aput-object v20, v5, v0

    const/16 v0, 0xf

    aput-object v21, v5, v0

    const/16 v0, 0x10

    aput-object v3, v5, v0

    aput-object v8, v5, v13

    .line 19
    sput-object v5, Lfl6;->y:[Lfl6;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILgl6;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgl6;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lfl6;->e:Lgl6;

    .line 3
    iput p4, p0, Lfl6;->f:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILgl6;ILel6;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 5
    iput-object p3, p0, Lfl6;->e:Lgl6;

    .line 6
    iput p4, p0, Lfl6;->f:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfl6;
    .locals 1

    .line 1
    const-class v0, Lfl6;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lfl6;

    return-object p0
.end method

.method public static values()[Lfl6;
    .locals 1

    .line 1
    sget-object v0, Lfl6;->y:[Lfl6;

    invoke-virtual {v0}, [Lfl6;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfl6;

    return-object v0
.end method
