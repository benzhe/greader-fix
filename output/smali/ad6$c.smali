.class public final enum Lad6$c;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljj6$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lad6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lad6$c;",
        ">;",
        "Ljj6$a;"
    }
.end annotation


# static fields
.field public static final enum f:Lad6$c;

.field public static final enum g:Lad6$c;

.field public static final enum h:Lad6$c;

.field public static final enum i:Lad6$c;

.field public static final enum j:Lad6$c;

.field public static final enum k:Lad6$c;

.field public static final synthetic l:[Lad6$c;


# instance fields
.field public final e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lad6$c;

    const-string v1, "NO_CHANGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lad6$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lad6$c;->f:Lad6$c;

    .line 2
    new-instance v1, Lad6$c;

    const-string v3, "ADD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lad6$c;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lad6$c;->g:Lad6$c;

    .line 3
    new-instance v3, Lad6$c;

    const-string v5, "REMOVE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lad6$c;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lad6$c;->h:Lad6$c;

    .line 4
    new-instance v5, Lad6$c;

    const-string v7, "CURRENT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lad6$c;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lad6$c;->i:Lad6$c;

    .line 5
    new-instance v7, Lad6$c;

    const-string v9, "RESET"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lad6$c;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lad6$c;->j:Lad6$c;

    .line 6
    new-instance v9, Lad6$c;

    const-string v11, "UNRECOGNIZED"

    const/4 v12, 0x5

    const/4 v13, -0x1

    invoke-direct {v9, v11, v12, v13}, Lad6$c;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lad6$c;->k:Lad6$c;

    const/4 v11, 0x6

    new-array v11, v11, [Lad6$c;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 7
    sput-object v11, Lad6$c;->l:[Lad6$c;

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
    iput p3, p0, Lad6$c;->e:I

    return-void
.end method

.method public static i(I)Lad6$c;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lad6$c;->j:Lad6$c;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lad6$c;->i:Lad6$c;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, Lad6$c;->h:Lad6$c;

    return-object p0

    .line 4
    :cond_3
    sget-object p0, Lad6$c;->g:Lad6$c;

    return-object p0

    .line 5
    :cond_4
    sget-object p0, Lad6$c;->f:Lad6$c;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lad6$c;
    .locals 1

    .line 1
    const-class v0, Lad6$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lad6$c;

    return-object p0
.end method

.method public static values()[Lad6$c;
    .locals 1

    .line 1
    sget-object v0, Lad6$c;->l:[Lad6$c;

    invoke-virtual {v0}, [Lad6$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lad6$c;

    return-object v0
.end method


# virtual methods
.method public final g()I
    .locals 2

    .line 1
    sget-object v0, Lad6$c;->k:Lad6$c;

    if-eq p0, v0, :cond_0

    .line 2
    iget v0, p0, Lad6$c;->e:I

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
