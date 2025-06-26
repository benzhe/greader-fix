.class public Ln67;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La67;


# instance fields
.field public final a:Lx47;

.field public final b:Lz57$a;


# direct methods
.method public constructor <init>(Lx47;Lz57$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lx47;->f()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "error must not be OK"

    invoke-static {v0, v1}, Lc50;->t(ZLjava/lang/Object;)V

    .line 3
    iput-object p1, p0, Ln67;->a:Lx47;

    .line 4
    iput-object p2, p0, Ln67;->b:Lz57$a;

    return-void
.end method


# virtual methods
.method public e()Ly37;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not a real transport"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g(Lj47;Li47;Lx27;)Ly57;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj47<",
            "**>;",
            "Li47;",
            "Lx27;",
            ")",
            "Ly57;"
        }
    .end annotation

    .line 1
    new-instance p1, Lm67;

    iget-object p2, p0, Ln67;->a:Lx47;

    iget-object p3, p0, Ln67;->b:Lz57$a;

    invoke-direct {p1, p2, p3}, Lm67;-><init>(Lx47;Lz57$a;)V

    return-object p1
.end method
