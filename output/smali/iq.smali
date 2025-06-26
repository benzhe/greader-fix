.class public final Liq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldc7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ldc7<",
        "Ljava/util/List<",
        "+",
        "Lcom/android/billingclient/api/SkuDetails;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lgq$b;

.field public final synthetic b:Len;


# direct methods
.method public constructor <init>(Lgq$b;Len;)V
    .locals 0

    iput-object p1, p0, Liq;->a:Lgq$b;

    iput-object p2, p0, Liq;->b:Len;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lbc7;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbc7<",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Liq;->b:Len;

    iget-object v1, p0, Liq;->a:Lgq$b;

    iget-object v1, v1, Lgq$b;->f:Lkn;

    new-instance v2, Liq$a;

    invoke-direct {v2, p0, p1}, Liq$a;-><init>(Liq;Lbc7;)V

    invoke-virtual {v0, v1, v2}, Len;->f(Lkn;Lln;)V

    return-void
.end method
