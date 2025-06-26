.class public final Lko6;
.super Ljm7;
.source "SourceFile"

# interfaces
.implements Ltl7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljm7;",
        "Ltl7<",
        "Lo18;",
        "Lj18;",
        "Leq;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Lko6;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lko6;

    invoke-direct {v0}, Lko6;-><init>()V

    sput-object v0, Lko6;->e:Lko6;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Ljm7;-><init>(I)V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lo18;

    check-cast p2, Lj18;

    const-string v0, "$receiver"

    .line 2
    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance p2, Lgq;

    new-instance v0, Lkq;

    invoke-static {p1}, Lkt7;->b(Lo18;)Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p1, v1, v2}, Lkq;-><init>(Landroid/content/Context;Lqb7;I)V

    invoke-direct {p2, v0}, Lgq;-><init>(Lkq;)V

    return-object p2
.end method
