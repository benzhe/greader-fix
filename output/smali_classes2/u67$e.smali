.class public Lu67$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La67;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu67;->e(Lc47$e;Z)La67;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:La67;

.field public final synthetic b:Le37$a;


# direct methods
.method public constructor <init>(La67;Le37$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lu67$e;->a:La67;

    iput-object p2, p0, Lu67$e;->b:Le37$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e()Ly37;
    .locals 1

    .line 1
    iget-object v0, p0, Lu67$e;->a:La67;

    invoke-interface {v0}, Lx37;->e()Ly37;

    move-result-object v0

    return-object v0
.end method

.method public g(Lj47;Li47;Lx27;)Ly57;
    .locals 2
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
    iget-object v0, p0, Lu67$e;->a:La67;

    iget-object v1, p0, Lu67$e;->b:Le37$a;

    .line 2
    invoke-virtual {p3, v1}, Lx27;->f(Le37$a;)Lx27;

    move-result-object p3

    .line 3
    invoke-interface {v0, p1, p2, p3}, La67;->g(Lj47;Li47;Lx27;)Ly57;

    move-result-object p1

    return-object p1
.end method
