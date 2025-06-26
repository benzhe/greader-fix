.class public final enum Lvz6;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lvz6;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Lvz6;

.field public static final enum f:Lvz6;

.field public static final enum g:Lvz6;

.field public static final synthetic h:[Lvz6;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lvz6;

    const-string v1, "NETWORK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lvz6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lvz6;->e:Lvz6;

    new-instance v1, Lvz6;

    const-string v3, "DISC_CACHE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lvz6;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lvz6;->f:Lvz6;

    new-instance v3, Lvz6;

    const-string v5, "MEMORY_CACHE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lvz6;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lvz6;->g:Lvz6;

    const/4 v5, 0x3

    new-array v5, v5, [Lvz6;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 2
    sput-object v5, Lvz6;->h:[Lvz6;

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

.method public static valueOf(Ljava/lang/String;)Lvz6;
    .locals 1

    .line 1
    const-class v0, Lvz6;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lvz6;

    return-object p0
.end method

.method public static values()[Lvz6;
    .locals 1

    .line 1
    sget-object v0, Lvz6;->h:[Lvz6;

    invoke-virtual {v0}, [Lvz6;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lvz6;

    return-object v0
.end method
