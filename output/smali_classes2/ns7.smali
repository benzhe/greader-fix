.class public final enum Lns7;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lns7;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum f:Lns7;

.field public static final enum g:Lns7;

.field public static final enum h:Lns7;

.field public static final enum i:Lns7;

.field public static final enum j:Lns7;

.field public static final enum k:Lns7;

.field public static final l:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lns7;",
            ">;"
        }
    .end annotation
.end field

.field public static final synthetic m:[Lns7;


# instance fields
.field public final e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lns7;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lns7;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lns7;->f:Lns7;

    .line 2
    new-instance v1, Lns7;

    const-string v3, "TOP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lns7;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lns7;->g:Lns7;

    .line 3
    new-instance v3, Lns7;

    const-string v5, "RIGHT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lns7;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lns7;->h:Lns7;

    .line 4
    new-instance v5, Lns7;

    const-string v7, "BOTTOM"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lns7;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lns7;->i:Lns7;

    .line 5
    new-instance v7, Lns7;

    const-string v9, "START"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lns7;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lns7;->j:Lns7;

    .line 6
    new-instance v9, Lns7;

    const-string v11, "END"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lns7;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lns7;->k:Lns7;

    const/4 v11, 0x6

    new-array v13, v11, [Lns7;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    .line 7
    sput-object v13, Lns7;->m:[Lns7;

    .line 8
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lns7;->l:Landroid/util/SparseArray;

    .line 9
    invoke-static {}, Lns7;->values()[Lns7;

    move-result-object v0

    :goto_0
    if-ge v2, v11, :cond_0

    aget-object v1, v0, v2

    .line 10
    sget-object v3, Lns7;->l:Landroid/util/SparseArray;

    iget v4, v1, Lns7;->e:I

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
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
    iput p3, p0, Lns7;->e:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lns7;
    .locals 1

    .line 1
    const-class v0, Lns7;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lns7;

    return-object p0
.end method

.method public static values()[Lns7;
    .locals 1

    .line 1
    sget-object v0, Lns7;->m:[Lns7;

    invoke-virtual {v0}, [Lns7;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lns7;

    return-object v0
.end method
