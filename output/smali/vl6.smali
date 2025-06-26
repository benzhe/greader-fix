.class public final enum Lvl6;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lvl6;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Lvl6;

.field public static final enum f:Lvl6;

.field public static final enum g:Lvl6;

.field public static final synthetic h:[Lvl6;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lvl6;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lvl6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lvl6;->e:Lvl6;

    .line 2
    new-instance v1, Lvl6;

    const-string v3, "IN_EAA_OR_UNKNOWN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lvl6;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lvl6;->f:Lvl6;

    .line 3
    new-instance v3, Lvl6;

    const-string v5, "NOT_IN_EAA"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lvl6;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lvl6;->g:Lvl6;

    const/4 v5, 0x3

    new-array v5, v5, [Lvl6;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lvl6;->h:[Lvl6;

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

.method public static valueOf(Ljava/lang/String;)Lvl6;
    .locals 1

    .line 1
    const-class v0, Lvl6;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lvl6;

    return-object p0
.end method

.method public static values()[Lvl6;
    .locals 1

    .line 1
    sget-object v0, Lvl6;->h:[Lvl6;

    invoke-virtual {v0}, [Lvl6;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lvl6;

    return-object v0
.end method
