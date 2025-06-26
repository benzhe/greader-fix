.class public final Luo6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lmb7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb7<",
            "Ldq;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroid/content/Context;

.field public final c:Lyn6;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyn6;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "billingRepository"

    invoke-static {p2, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luo6;->b:Landroid/content/Context;

    iput-object p2, p0, Luo6;->c:Lyn6;

    .line 2
    iget-object p1, p2, Lyn6;->a:Loj7;

    invoke-interface {p1}, Loj7;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmb7;

    .line 3
    iput-object p1, p0, Luo6;->a:Lmb7;

    return-void
.end method
