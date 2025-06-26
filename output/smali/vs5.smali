.class public final enum Lvs5;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lvs5;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Lvs5;

.field public static final enum f:Lvs5;

.field public static final enum g:Lvs5;

.field public static final synthetic h:[Lvs5;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lvs5;

    const-string v1, "LISTEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lvs5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lvs5;->e:Lvs5;

    .line 2
    new-instance v1, Lvs5;

    const-string v3, "EXISTENCE_FILTER_MISMATCH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lvs5;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lvs5;->f:Lvs5;

    .line 3
    new-instance v3, Lvs5;

    const-string v5, "LIMBO_RESOLUTION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lvs5;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lvs5;->g:Lvs5;

    const/4 v5, 0x3

    new-array v5, v5, [Lvs5;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lvs5;->h:[Lvs5;

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

.method public static valueOf(Ljava/lang/String;)Lvs5;
    .locals 1

    .line 1
    const-class v0, Lvs5;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lvs5;

    return-object p0
.end method

.method public static values()[Lvs5;
    .locals 1

    .line 1
    sget-object v0, Lvs5;->h:[Lvs5;

    invoke-virtual {v0}, [Lvs5;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lvs5;

    return-object v0
.end method
