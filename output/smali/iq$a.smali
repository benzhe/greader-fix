.class public final Liq$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lln;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Liq;->a(Lbc7;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Liq;

.field public final synthetic b:Lbc7;


# direct methods
.method public constructor <init>(Liq;Lbc7;)V
    .locals 0

    iput-object p1, p0, Liq$a;->a:Liq;

    iput-object p2, p0, Liq$a;->b:Lbc7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lin;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;)V"
        }
    .end annotation

    const-string v0, "billingResult"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Liq$a;->b:Lbc7;

    const-string v1, "it"

    invoke-static {v0, v1}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Leh7$a;

    invoke-virtual {v0}, Leh7$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p1, Lin;->a:I

    .line 3
    iget-object v1, p0, Liq$a;->a:Liq;

    iget-object v1, v1, Liq;->a:Lgq$b;

    iget-object v1, v1, Lgq$b;->e:Lgq;

    invoke-static {v1, v0}, Lgq;->f(Lgq;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    iget-object p1, p0, Liq$a;->b:Lbc7;

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    sget-object p2, Lhk7;->e:Lhk7;

    :goto_0
    check-cast p1, Leh7$a;

    invoke-virtual {p1, p2}, Leh7$a;->c(Ljava/lang/Object;)V

    goto :goto_1

    .line 5
    :cond_2
    iget-object p2, p0, Liq$a;->b:Lbc7;

    invoke-static {p1}, Lmq;->a(Lin;)Lmq;

    move-result-object p1

    check-cast p2, Leh7$a;

    invoke-virtual {p2, p1}, Leh7$a;->b(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
