.class public final Ld77$d;
.super Lq67;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld77;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:Ld67;

.field public final b:Lq57;


# direct methods
.method public constructor <init>(Ld67;Lq57;Ld77$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lq67;-><init>()V

    .line 2
    iput-object p1, p0, Ld77$d;->a:Ld67;

    .line 3
    iput-object p2, p0, Ld77$d;->b:Lq57;

    return-void
.end method


# virtual methods
.method public a()Ld67;
    .locals 1

    .line 1
    iget-object v0, p0, Ld77$d;->a:Ld67;

    return-object v0
.end method

.method public g(Lj47;Li47;Lx27;)Ly57;
    .locals 1
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
    invoke-virtual {p0}, Ld77$d;->a()Ld67;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, La67;->g(Lj47;Li47;Lx27;)Ly57;

    move-result-object p1

    .line 2
    new-instance p2, Ld77$d$a;

    invoke-direct {p2, p0, p1}, Ld77$d$a;-><init>(Ld77$d;Ly57;)V

    return-object p2
.end method
