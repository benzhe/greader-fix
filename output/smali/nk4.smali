.class public final enum Lnk4;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnk4;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Lnk4;

.field public static final enum f:Lnk4;

.field public static final enum g:Lnk4;

.field public static final enum h:Lnk4;

.field public static final synthetic i:[Lnk4;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lnk4;

    const-string v1, "SCALAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lnk4;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lnk4;->e:Lnk4;

    .line 2
    new-instance v1, Lnk4;

    const-string v3, "VECTOR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lnk4;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lnk4;->f:Lnk4;

    .line 3
    new-instance v3, Lnk4;

    const-string v5, "PACKED_VECTOR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lnk4;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lnk4;->g:Lnk4;

    .line 4
    new-instance v5, Lnk4;

    const-string v7, "MAP"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v2}, Lnk4;-><init>(Ljava/lang/String;IZ)V

    sput-object v5, Lnk4;->h:Lnk4;

    const/4 v7, 0x4

    new-array v7, v7, [Lnk4;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lnk4;->i:[Lnk4;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lnk4;
    .locals 1

    .line 1
    sget-object v0, Lnk4;->i:[Lnk4;

    invoke-virtual {v0}, [Lnk4;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnk4;

    return-object v0
.end method
