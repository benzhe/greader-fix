.class public final Ln77$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln77$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln77;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Ld67;


# direct methods
.method public constructor <init>(Ld67;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln77$c;->a:Ld67;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Ln77$c;->a:Ld67;

    sget-object v1, Lx47;->n:Lx47;

    const-string v2, "Keepalive failed. The connection is likely gone"

    invoke-virtual {v1, v2}, Lx47;->h(Ljava/lang/String;)Lx47;

    move-result-object v1

    invoke-interface {v0, v1}, Lc87;->c(Lx47;)V

    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Ln77$c;->a:Ld67;

    new-instance v1, Ln77$c$a;

    invoke-direct {v1, p0}, Ln77$c$a;-><init>(Ln77$c;)V

    .line 2
    sget-object v2, Lhe5;->e:Lhe5;

    .line 3
    invoke-interface {v0, v1, v2}, La67;->f(La67$a;Ljava/util/concurrent/Executor;)V

    return-void
.end method
