.class public final enum Lye7;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ltc7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lye7;",
        ">;",
        "Ltc7<",
        "Ly38;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Lye7;

.field public static final synthetic f:[Lye7;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lye7;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lye7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lye7;->e:Lye7;

    const/4 v1, 0x1

    new-array v1, v1, [Lye7;

    aput-object v0, v1, v2

    .line 2
    sput-object v1, Lye7;->f:[Lye7;

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

.method public static valueOf(Ljava/lang/String;)Lye7;
    .locals 1

    .line 1
    const-class v0, Lye7;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lye7;

    return-object p0
.end method

.method public static values()[Lye7;
    .locals 1

    .line 1
    sget-object v0, Lye7;->f:[Lye7;

    invoke-virtual {v0}, [Lye7;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lye7;

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Ly38;

    const-wide v0, 0x7fffffffffffffffL

    .line 2
    invoke-interface {p1, v0, v1}, Ly38;->l(J)V

    return-void
.end method
