.class public final enum Lz33;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lz33;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Lz33;

.field public static final enum f:Lz33;

.field public static final enum g:Lz33;

.field public static final synthetic h:[Lz33;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lz33;

    const-string v1, "UNCOMPRESSED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lz33;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lz33;->e:Lz33;

    .line 2
    new-instance v1, Lz33;

    const-string v3, "COMPRESSED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lz33;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lz33;->f:Lz33;

    .line 3
    new-instance v3, Lz33;

    const-string v5, "DO_NOT_USE_CRUNCHY_UNCOMPRESSED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lz33;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lz33;->g:Lz33;

    const/4 v5, 0x3

    new-array v5, v5, [Lz33;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lz33;->h:[Lz33;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lz33;
    .locals 1

    .line 1
    sget-object v0, Lz33;->h:[Lz33;

    invoke-virtual {v0}, [Lz33;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lz33;

    return-object v0
.end method
