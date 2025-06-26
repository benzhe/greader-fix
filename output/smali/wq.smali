.class public final enum Lwq;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lwq;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Lwq;

.field public static final enum f:Lwq;

.field public static final enum g:Lwq;

.field public static final synthetic h:[Lwq;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lwq;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lwq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lwq;->e:Lwq;

    .line 2
    new-instance v1, Lwq;

    const-string v3, "VERY_LOW"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lwq;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lwq;->f:Lwq;

    .line 3
    new-instance v3, Lwq;

    const-string v5, "HIGHEST"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lwq;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lwq;->g:Lwq;

    const/4 v5, 0x3

    new-array v5, v5, [Lwq;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lwq;->h:[Lwq;

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

.method public static valueOf(Ljava/lang/String;)Lwq;
    .locals 1

    .line 1
    const-class v0, Lwq;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lwq;

    return-object p0
.end method

.method public static values()[Lwq;
    .locals 1

    .line 1
    sget-object v0, Lwq;->h:[Lwq;

    invoke-virtual {v0}, [Lwq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lwq;

    return-object v0
.end method
