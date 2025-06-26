.class public final enum Lu47;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lu47;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Lu47;

.field public static final enum f:Lu47;

.field public static final enum g:Lu47;

.field public static final synthetic h:[Lu47;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lu47;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lu47;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu47;->e:Lu47;

    .line 2
    new-instance v1, Lu47;

    const-string v3, "INTEGRITY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lu47;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lu47;->f:Lu47;

    .line 3
    new-instance v3, Lu47;

    const-string v5, "PRIVACY_AND_INTEGRITY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lu47;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lu47;->g:Lu47;

    const/4 v5, 0x3

    new-array v5, v5, [Lu47;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lu47;->h:[Lu47;

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

.method public static valueOf(Ljava/lang/String;)Lu47;
    .locals 1

    .line 1
    const-class v0, Lu47;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lu47;

    return-object p0
.end method

.method public static values()[Lu47;
    .locals 1

    .line 1
    sget-object v0, Lu47;->h:[Lu47;

    invoke-virtual {v0}, [Lu47;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu47;

    return-object v0
.end method
