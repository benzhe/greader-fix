.class public final enum Lbp;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbp;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum k:Lbp;

.field public static final enum l:Lbp;

.field public static final enum m:Lbp;

.field public static final enum n:Lbp;

.field public static final enum o:Lbp;

.field public static final enum p:Lbp;

.field public static final enum q:Lbp;

.field public static final enum r:Lbp;

.field public static final enum s:Lbp;

.field public static final enum t:Lbp;

.field public static final enum u:Lbp;

.field public static final enum v:Lbp;

.field public static final enum w:Lbp;

.field public static final synthetic x:[Lbp;


# instance fields
.field public final e:Ljava/lang/String;

.field public final f:[C

.field public final g:[B

.field public final h:I

.field public final i:Z

.field public final j:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 17

    .line 1
    new-instance v0, Lbp;

    const-string v1, "NOT_AVAILABLE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lbp;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lbp;->k:Lbp;

    .line 2
    new-instance v1, Lbp;

    const-string v4, "START_OBJECT"

    const/4 v5, 0x1

    const-string v6, "{"

    invoke-direct {v1, v4, v5, v6, v5}, Lbp;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lbp;->l:Lbp;

    .line 3
    new-instance v4, Lbp;

    const-string v6, "END_OBJECT"

    const/4 v7, 0x2

    const-string v8, "}"

    invoke-direct {v4, v6, v7, v8, v7}, Lbp;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v4, Lbp;->m:Lbp;

    .line 4
    new-instance v6, Lbp;

    const-string v8, "START_ARRAY"

    const/4 v9, 0x3

    const-string v10, "["

    invoke-direct {v6, v8, v9, v10, v9}, Lbp;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v6, Lbp;->n:Lbp;

    .line 5
    new-instance v8, Lbp;

    const-string v10, "END_ARRAY"

    const/4 v11, 0x4

    const-string v12, "]"

    invoke-direct {v8, v10, v11, v12, v11}, Lbp;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v8, Lbp;->o:Lbp;

    .line 6
    new-instance v10, Lbp;

    const-string v12, "FIELD_NAME"

    const/4 v13, 0x5

    invoke-direct {v10, v12, v13, v3, v13}, Lbp;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v10, Lbp;->p:Lbp;

    .line 7
    new-instance v12, Lbp;

    const-string v14, "VALUE_EMBEDDED_OBJECT"

    const/4 v15, 0x6

    const/16 v13, 0xc

    invoke-direct {v12, v14, v15, v3, v13}, Lbp;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v12, Lbp;->q:Lbp;

    .line 8
    new-instance v14, Lbp;

    const-string v11, "VALUE_STRING"

    const/4 v9, 0x7

    invoke-direct {v14, v11, v9, v3, v15}, Lbp;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v14, Lbp;->r:Lbp;

    .line 9
    new-instance v11, Lbp;

    const-string v15, "VALUE_NUMBER_INT"

    const/16 v7, 0x8

    invoke-direct {v11, v15, v7, v3, v9}, Lbp;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v11, Lbp;->s:Lbp;

    .line 10
    new-instance v15, Lbp;

    const-string v9, "VALUE_NUMBER_FLOAT"

    const/16 v5, 0x9

    invoke-direct {v15, v9, v5, v3, v7}, Lbp;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v15, Lbp;->t:Lbp;

    .line 11
    new-instance v3, Lbp;

    const-string v9, "VALUE_TRUE"

    const/16 v7, 0xa

    const-string v2, "true"

    invoke-direct {v3, v9, v7, v2, v5}, Lbp;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v3, Lbp;->u:Lbp;

    .line 12
    new-instance v2, Lbp;

    const-string v9, "VALUE_FALSE"

    const/16 v5, 0xb

    const-string v13, "false"

    invoke-direct {v2, v9, v5, v13, v7}, Lbp;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v2, Lbp;->v:Lbp;

    .line 13
    new-instance v9, Lbp;

    const-string v13, "VALUE_NULL"

    const-string v7, "null"

    move-object/from16 v16, v2

    const/16 v2, 0xc

    invoke-direct {v9, v13, v2, v7, v5}, Lbp;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v9, Lbp;->w:Lbp;

    const/16 v2, 0xd

    new-array v2, v2, [Lbp;

    const/4 v7, 0x0

    aput-object v0, v2, v7

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v4, v2, v0

    const/4 v0, 0x3

    aput-object v6, v2, v0

    const/4 v0, 0x4

    aput-object v8, v2, v0

    const/4 v0, 0x5

    aput-object v10, v2, v0

    const/4 v0, 0x6

    aput-object v12, v2, v0

    const/4 v0, 0x7

    aput-object v14, v2, v0

    const/16 v0, 0x8

    aput-object v11, v2, v0

    const/16 v0, 0x9

    aput-object v15, v2, v0

    const/16 v0, 0xa

    aput-object v3, v2, v0

    aput-object v16, v2, v5

    const/16 v0, 0xc

    aput-object v9, v2, v0

    .line 14
    sput-object v2, Lbp;->x:[Lbp;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    if-nez p3, :cond_0

    const/4 p2, 0x0

    .line 2
    iput-object p2, p0, Lbp;->e:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lbp;->f:[C

    .line 4
    iput-object p2, p0, Lbp;->g:[B

    goto :goto_1

    .line 5
    :cond_0
    iput-object p3, p0, Lbp;->e:Ljava/lang/String;

    .line 6
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    iput-object p2, p0, Lbp;->f:[C

    .line 7
    array-length p2, p2

    .line 8
    new-array p3, p2, [B

    iput-object p3, p0, Lbp;->g:[B

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_1

    .line 9
    iget-object v0, p0, Lbp;->g:[B

    iget-object v1, p0, Lbp;->f:[C

    aget-char v1, v1, p3

    int-to-byte v1, v1

    aput-byte v1, v0, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 10
    :cond_1
    :goto_1
    iput p4, p0, Lbp;->h:I

    const/16 p2, 0xa

    const/4 p2, 0x7

    const/4 p2, 0x1

    if-eq p4, p2, :cond_3

    const/4 p3, 0x3

    if-ne p4, p3, :cond_2

    goto :goto_2

    :cond_2
    const/4 p3, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 p3, 0x1

    .line 11
    :goto_3
    iput-boolean p3, p0, Lbp;->i:Z

    const/4 v0, 0x2

    if-eq p4, v0, :cond_4

    const/4 v0, 0x4

    if-ne p4, v0, :cond_5

    :cond_4
    const/4 p1, 0x1

    .line 12
    :cond_5
    iput-boolean p1, p0, Lbp;->j:Z

    if-nez p3, :cond_6

    if-nez p1, :cond_6

    const/4 p1, 0x5

    :cond_6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbp;
    .locals 1

    .line 1
    const-class v0, Lbp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbp;

    return-object p0
.end method

.method public static values()[Lbp;
    .locals 1

    .line 1
    sget-object v0, Lbp;->x:[Lbp;

    invoke-virtual {v0}, [Lbp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbp;

    return-object v0
.end method
