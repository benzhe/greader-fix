.class public final enum Lyc6$e;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljj6$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyc6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lyc6$e;",
        ">;",
        "Ljj6$a;"
    }
.end annotation


# static fields
.field public static final enum f:Lyc6$e;

.field public static final enum g:Lyc6$e;

.field public static final enum h:Lyc6$e;

.field public static final enum i:Lyc6$e;

.field public static final synthetic j:[Lyc6$e;


# instance fields
.field public final e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lyc6$e;

    const-string v1, "DIRECTION_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lyc6$e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lyc6$e;->f:Lyc6$e;

    .line 2
    new-instance v1, Lyc6$e;

    const-string v3, "ASCENDING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lyc6$e;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lyc6$e;->g:Lyc6$e;

    .line 3
    new-instance v3, Lyc6$e;

    const-string v5, "DESCENDING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lyc6$e;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lyc6$e;->h:Lyc6$e;

    .line 4
    new-instance v5, Lyc6$e;

    const-string v7, "UNRECOGNIZED"

    const/4 v8, 0x3

    const/4 v9, -0x1

    invoke-direct {v5, v7, v8, v9}, Lyc6$e;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lyc6$e;->i:Lyc6$e;

    const/4 v7, 0x4

    new-array v7, v7, [Lyc6$e;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lyc6$e;->j:[Lyc6$e;

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
    iput p3, p0, Lyc6$e;->e:I

    return-void
.end method

.method public static i(I)Lyc6$e;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lyc6$e;->h:Lyc6$e;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lyc6$e;->g:Lyc6$e;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, Lyc6$e;->f:Lyc6$e;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lyc6$e;
    .locals 1

    .line 1
    const-class v0, Lyc6$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyc6$e;

    return-object p0
.end method

.method public static values()[Lyc6$e;
    .locals 1

    .line 1
    sget-object v0, Lyc6$e;->j:[Lyc6$e;

    invoke-virtual {v0}, [Lyc6$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyc6$e;

    return-object v0
.end method


# virtual methods
.method public final g()I
    .locals 2

    .line 1
    sget-object v0, Lyc6$e;->i:Lyc6$e;

    if-eq p0, v0, :cond_0

    .line 2
    iget v0, p0, Lyc6$e;->e:I

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
