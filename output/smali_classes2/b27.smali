.class public final enum Lb27;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lb27;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum f:Lb27;

.field public static final enum g:Lb27;

.field public static final synthetic h:[Lb27;


# instance fields
.field public final e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lb27;

    const-string v1, "NO_CACHE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lb27;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lb27;->f:Lb27;

    .line 2
    new-instance v1, Lb27;

    const-string v4, "NO_STORE"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lb27;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lb27;->g:Lb27;

    new-array v4, v5, [Lb27;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    .line 3
    sput-object v4, Lb27;->h:[Lb27;

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
    iput p3, p0, Lb27;->e:I

    return-void
.end method

.method public static i(I)Z
    .locals 1

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lb27;
    .locals 1

    .line 1
    const-class v0, Lb27;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lb27;

    return-object p0
.end method

.method public static values()[Lb27;
    .locals 1

    .line 1
    sget-object v0, Lb27;->h:[Lb27;

    invoke-virtual {v0}, [Lb27;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb27;

    return-object v0
.end method
