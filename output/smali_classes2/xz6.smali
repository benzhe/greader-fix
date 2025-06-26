.class public final enum Lxz6;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lxz6;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Lxz6;

.field public static final enum f:Lxz6;

.field public static final synthetic g:[Lxz6;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lxz6;

    const-string v1, "FIT_INSIDE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lxz6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lxz6;->e:Lxz6;

    .line 2
    new-instance v1, Lxz6;

    const-string v3, "CROP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lxz6;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lxz6;->f:Lxz6;

    const/4 v3, 0x2

    new-array v3, v3, [Lxz6;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lxz6;->g:[Lxz6;

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

.method public static valueOf(Ljava/lang/String;)Lxz6;
    .locals 1

    .line 1
    const-class v0, Lxz6;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lxz6;

    return-object p0
.end method

.method public static values()[Lxz6;
    .locals 1

    .line 1
    sget-object v0, Lxz6;->g:[Lxz6;

    invoke-virtual {v0}, [Lxz6;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lxz6;

    return-object v0
.end method
