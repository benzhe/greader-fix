.class public Lgp6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrn6$b;


# instance fields
.field public final synthetic a:Lip6;

.field public final synthetic b:J

.field public final synthetic c:Lcw6;

.field public final synthetic d:Lep6;


# direct methods
.method public constructor <init>(Lep6;Lip6;JLcw6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lgp6;->d:Lep6;

    iput-object p2, p0, Lgp6;->a:Lip6;

    iput-wide p3, p0, Lgp6;->b:J

    iput-object p5, p0, Lgp6;->c:Lcw6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lap6;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lgp6;->d:Lep6;

    invoke-virtual {v0}, Lep6;->n()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    const/4 v6, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    const/4 v6, 0x1

    .line 2
    :goto_0
    iget-object v1, p0, Lgp6;->d:Lep6;

    iget-wide v3, p0, Lgp6;->b:J

    iget-object v5, p0, Lgp6;->c:Lcw6;

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lep6;->L(Ljava/util/List;JLcw6;I)V

    return-void
.end method

.method public b()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public c()I
    .locals 1

    const/16 v0, 0xfa

    return v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public g()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public stream()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lgp6;->a:Lip6;

    iget-object v0, v0, Lip6;->f:Ljava/lang/String;

    return-object v0
.end method
