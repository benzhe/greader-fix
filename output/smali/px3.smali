.class public final enum Lpx3;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lpx3;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Lpx3;

.field public static final enum f:Lpx3;

.field public static final enum g:Lpx3;

.field public static final enum h:Lpx3;

.field public static final synthetic i:[Lpx3;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lpx3;

    const-string v1, "SCALAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lpx3;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lpx3;->e:Lpx3;

    new-instance v1, Lpx3;

    const-string v3, "VECTOR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lpx3;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lpx3;->f:Lpx3;

    new-instance v3, Lpx3;

    const-string v5, "PACKED_VECTOR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lpx3;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lpx3;->g:Lpx3;

    new-instance v5, Lpx3;

    const-string v7, "MAP"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v2}, Lpx3;-><init>(Ljava/lang/String;IZ)V

    sput-object v5, Lpx3;->h:Lpx3;

    const/4 v7, 0x4

    new-array v7, v7, [Lpx3;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lpx3;->i:[Lpx3;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lpx3;
    .locals 1

    sget-object v0, Lpx3;->i:[Lpx3;

    invoke-virtual {v0}, [Lpx3;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lpx3;

    return-object v0
.end method
