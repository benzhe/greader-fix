.class public final enum Lzo5$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzo5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lzo5$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum f:Lzo5$a;

.field public static final enum g:Lzo5$a;

.field public static final enum h:Lzo5$a;

.field public static final enum i:Lzo5$a;

.field public static final enum j:Lzo5$a;

.field public static final enum k:Lzo5$a;

.field public static final enum l:Lzo5$a;

.field public static final enum m:Lzo5$a;

.field public static final enum n:Lzo5$a;

.field public static final enum o:Lzo5$a;

.field public static final enum p:Lzo5$a;

.field public static final enum q:Lzo5$a;

.field public static final enum r:Lzo5$a;

.field public static final enum s:Lzo5$a;

.field public static final enum t:Lzo5$a;

.field public static final enum u:Lzo5$a;

.field public static final enum v:Lzo5$a;

.field public static final w:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lzo5$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final synthetic x:[Lzo5$a;


# instance fields
.field public final e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 20

    .line 1
    new-instance v0, Lzo5$a;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lzo5$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lzo5$a;->f:Lzo5$a;

    .line 2
    new-instance v1, Lzo5$a;

    const-string v3, "CANCELLED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lzo5$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lzo5$a;->g:Lzo5$a;

    .line 3
    new-instance v3, Lzo5$a;

    const-string v5, "UNKNOWN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lzo5$a;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lzo5$a;->h:Lzo5$a;

    .line 4
    new-instance v5, Lzo5$a;

    const-string v7, "INVALID_ARGUMENT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lzo5$a;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lzo5$a;->i:Lzo5$a;

    .line 5
    new-instance v7, Lzo5$a;

    const-string v9, "DEADLINE_EXCEEDED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lzo5$a;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lzo5$a;->j:Lzo5$a;

    .line 6
    new-instance v9, Lzo5$a;

    const-string v11, "NOT_FOUND"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lzo5$a;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lzo5$a;->k:Lzo5$a;

    .line 7
    new-instance v11, Lzo5$a;

    const-string v13, "ALREADY_EXISTS"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lzo5$a;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lzo5$a;->l:Lzo5$a;

    .line 8
    new-instance v13, Lzo5$a;

    const-string v15, "PERMISSION_DENIED"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lzo5$a;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lzo5$a;->m:Lzo5$a;

    .line 9
    new-instance v15, Lzo5$a;

    const-string v14, "RESOURCE_EXHAUSTED"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lzo5$a;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lzo5$a;->n:Lzo5$a;

    .line 10
    new-instance v14, Lzo5$a;

    const-string v12, "FAILED_PRECONDITION"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lzo5$a;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lzo5$a;->o:Lzo5$a;

    .line 11
    new-instance v12, Lzo5$a;

    const-string v10, "ABORTED"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lzo5$a;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lzo5$a;->p:Lzo5$a;

    .line 12
    new-instance v10, Lzo5$a;

    const-string v8, "OUT_OF_RANGE"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Lzo5$a;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lzo5$a;->q:Lzo5$a;

    .line 13
    new-instance v8, Lzo5$a;

    const-string v6, "UNIMPLEMENTED"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4, v4}, Lzo5$a;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lzo5$a;->r:Lzo5$a;

    .line 14
    new-instance v6, Lzo5$a;

    const-string v4, "INTERNAL"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2, v2}, Lzo5$a;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lzo5$a;->s:Lzo5$a;

    .line 15
    new-instance v4, Lzo5$a;

    const-string v2, "UNAVAILABLE"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6, v6}, Lzo5$a;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lzo5$a;->t:Lzo5$a;

    .line 16
    new-instance v2, Lzo5$a;

    const-string v6, "DATA_LOSS"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4, v4}, Lzo5$a;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lzo5$a;->u:Lzo5$a;

    .line 17
    new-instance v6, Lzo5$a;

    const-string v4, "UNAUTHENTICATED"

    move-object/from16 v19, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2, v2}, Lzo5$a;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lzo5$a;->v:Lzo5$a;

    const/16 v4, 0x11

    new-array v2, v4, [Lzo5$a;

    const/16 v16, 0x0

    aput-object v0, v2, v16

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v8, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    const/16 v0, 0xe

    aput-object v18, v2, v0

    const/16 v0, 0xf

    aput-object v19, v2, v0

    const/16 v0, 0x10

    aput-object v6, v2, v0

    .line 18
    sput-object v2, Lzo5$a;->x:[Lzo5$a;

    .line 19
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 20
    invoke-static {}, Lzo5$a;->values()[Lzo5$a;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v3, v1, v2

    .line 21
    iget v5, v3, Lzo5$a;->e:I

    .line 22
    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lzo5$a;

    if-nez v5, :cond_0

    .line 23
    iget v5, v3, Lzo5$a;->e:I

    .line 24
    invoke-virtual {v0, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Code value duplication between "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_1
    sput-object v0, Lzo5$a;->w:Landroid/util/SparseArray;

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
    iput p3, p0, Lzo5$a;->e:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lzo5$a;
    .locals 1

    .line 1
    const-class v0, Lzo5$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lzo5$a;

    return-object p0
.end method

.method public static values()[Lzo5$a;
    .locals 1

    .line 1
    sget-object v0, Lzo5$a;->x:[Lzo5$a;

    invoke-virtual {v0}, [Lzo5$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lzo5$a;

    return-object v0
.end method
