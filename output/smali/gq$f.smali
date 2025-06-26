.class public final Lgq$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljn;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgq;-><init>(Lkq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lgq;


# direct methods
.method public constructor <init>(Lgq;)V
    .locals 0

    iput-object p1, p0, Lgq$f;->a:Lgq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lin;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lin;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget p1, p1, Lin;->a:I

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    .line 2
    new-instance v0, Ldq$b;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lhk7;->e:Lhk7;

    :goto_0
    invoke-direct {v0, p1, p2}, Ldq$b;-><init>(ILjava/util/List;)V

    goto :goto_3

    .line 3
    :cond_1
    new-instance v0, Ldq$a;

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    sget-object p2, Lhk7;->e:Lhk7;

    :goto_1
    invoke-direct {v0, p1, p2}, Ldq$a;-><init>(ILjava/util/List;)V

    goto :goto_3

    .line 4
    :cond_3
    new-instance v0, Ldq$c;

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    sget-object p2, Lhk7;->e:Lhk7;

    :goto_2
    invoke-direct {v0, p1, p2}, Ldq$c;-><init>(ILjava/util/List;)V

    .line 5
    :goto_3
    iget-object p1, p0, Lgq$f;->a:Lgq;

    .line 6
    iget-object p1, p1, Lgq;->a:Lgj7;

    .line 7
    invoke-virtual {p1, v0}, Lgj7;->d(Ljava/lang/Object;)V

    return-void
.end method
